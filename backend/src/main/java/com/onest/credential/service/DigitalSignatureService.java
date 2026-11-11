package com.onest.credential.service;

import jakarta.annotation.PostConstruct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;

/**
 * Enterprise Asymmetric Cryptographic Service for ANITS Autonomous Academic Registry.
 * Generates and securely manages the 2048-bit RSA KeyPair.
 * Confidential Private Key is retained server-side to sign authoritative academic credentials.
 * Public Key (X.509 PEM) is openly distributed for decentralized zero-trust verification.
 */
@Service
public class DigitalSignatureService {

    private static final Logger log = LoggerFactory.getLogger(DigitalSignatureService.class);

    public static final String ALGORITHM = "SHA256withRSA";
    public static final String KEY_ID = "did:onest:anits:examcell#key-2026";
    public static final String ISSUER_IDENTITY = "Anil Neerukonda Institute of Technology & Sciences (Autonomous) — Examination Cell";

    private KeyPair keyPair;
    private String publicKeyPem;
    private String publicKeyFingerprint;

    @PostConstruct
    public void init() {
        try {
            loadOrGenerateKeyPair();
            this.publicKeyPem = formatPublicKeyAsPem(keyPair.getPublic());
            this.publicKeyFingerprint = computeFingerprint(keyPair.getPublic());
            log.info("ANITS Cryptographic Key initialized. Key ID: {}, Fingerprint: {}", KEY_ID, publicKeyFingerprint);
        } catch (Exception e) {
            log.error("Failed to initialize cryptographic keypair, generating fallback ephemeral keypair", e);
            generateEphemeralKeyPair();
        }
    }

    private void loadOrGenerateKeyPair() throws Exception {
        File keyDir = new File(System.getProperty("user.home"), ".onest_anits_security");
        if (!keyDir.exists()) {
            keyDir.mkdirs();
        }

        File privFile = new File(keyDir, "anits_private.key");
        File pubFile = new File(keyDir, "anits_public.key");

        if (privFile.exists() && pubFile.exists()) {
            try {
                byte[] privBytes = readAllBytes(privFile);
                byte[] pubBytes = readAllBytes(pubFile);

                KeyFactory kf = KeyFactory.getInstance("RSA");
                PKCS8EncodedKeySpec privSpec = new PKCS8EncodedKeySpec(privBytes);
                X509EncodedKeySpec pubSpec = new X509EncodedKeySpec(pubBytes);

                PrivateKey priv = kf.generatePrivate(privSpec);
                PublicKey pub = kf.generatePublic(pubSpec);
                this.keyPair = new KeyPair(pub, priv);
                return;
            } catch (Exception ex) {
                log.warn("Corrupted existing key files, re-generating new RSA-2048 keypair", ex);
            }
        }

        KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
        kpg.initialize(2048, new SecureRandom());
        this.keyPair = kpg.generateKeyPair();

        try (FileOutputStream fosPriv = new FileOutputStream(privFile);
             FileOutputStream fosPub = new FileOutputStream(pubFile)) {
            fosPriv.write(this.keyPair.getPrivate().getEncoded());
            fosPub.write(this.keyPair.getPublic().getEncoded());
        }
    }

    private void generateEphemeralKeyPair() {
        try {
            KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
            kpg.initialize(2048, new SecureRandom());
            this.keyPair = kpg.generateKeyPair();
            this.publicKeyPem = formatPublicKeyAsPem(keyPair.getPublic());
            this.publicKeyFingerprint = computeFingerprint(keyPair.getPublic());
        } catch (Exception ex) {
            throw new RuntimeException("Fatal: Cannot initialize RSA cryptographic engine", ex);
        }
    }

    /**
     * Signs academic payload data using the confidential ANITS Private Key.
     * Returns Base64-encoded signature.
     */
    public String signData(String data) {
        if (data == null) {
            return null;
        }
        try {
            Signature signature = Signature.getInstance(ALGORITHM);
            signature.initSign(keyPair.getPrivate());
            signature.update(data.getBytes(StandardCharsets.UTF_8));
            byte[] signedBytes = signature.sign();
            return Base64.getEncoder().encodeToString(signedBytes);
        } catch (Exception e) {
            log.error("Digital signing failed for payload", e);
            throw new RuntimeException("Cryptographic signature failure", e);
        }
    }

    /**
     * Mathematically verifies that a Base64-encoded signature matches the canonical data
     * using the provided X.509 Public Key PEM (or institutional default).
     */
    public boolean verifySignature(String data, String base64Signature, String customPublicKeyPem) {
        if (data == null || base64Signature == null || base64Signature.isBlank()) {
            return false;
        }
        try {
            PublicKey pubKey;
            if (customPublicKeyPem != null && !customPublicKeyPem.isBlank()) {
                pubKey = parsePublicKeyFromPem(customPublicKeyPem);
            } else {
                pubKey = keyPair.getPublic();
            }

            Signature signature = Signature.getInstance(ALGORITHM);
            signature.initVerify(pubKey);
            signature.update(data.getBytes(StandardCharsets.UTF_8));
            byte[] sigBytes = Base64.getDecoder().decode(base64Signature.trim());
            return signature.verify(sigBytes);
        } catch (Exception e) {
            log.warn("Cryptographic signature verification returned false or encountered parsing error: {}", e.getMessage());
            return false;
        }
    }

    public PublicKey getPublicKey() {
        return keyPair.getPublic();
    }

    public String getPublicKeyPem() {
        return publicKeyPem;
    }

    public String getPublicKeyFingerprint() {
        return publicKeyFingerprint;
    }

    public String getKeyId() {
        return KEY_ID;
    }

    public String getAlgorithm() {
        return ALGORITHM;
    }

    public String getIssuerIdentity() {
        return ISSUER_IDENTITY;
    }

    private String formatPublicKeyAsPem(PublicKey key) {
        String base64 = Base64.getMimeEncoder(64, new byte[]{'\n'}).encodeToString(key.getEncoded());
        return "-----BEGIN PUBLIC KEY-----\n" + base64 + "\n-----END PUBLIC KEY-----";
    }

    private PublicKey parsePublicKeyFromPem(String pem) throws Exception {
        String cleanPem = pem.replace("-----BEGIN PUBLIC KEY-----", "")
                .replace("-----END PUBLIC KEY-----", "")
                .replaceAll("\\s+", "");
        byte[] decoded = Base64.getDecoder().decode(cleanPem);
        X509EncodedKeySpec spec = new X509EncodedKeySpec(decoded);
        KeyFactory kf = KeyFactory.getInstance("RSA");
        return kf.generatePublic(spec);
    }

    private String computeFingerprint(PublicKey key) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(key.getEncoded());
            StringBuilder sb = new StringBuilder("SHA256:");
            for (int i = 0; i < digest.length; i++) {
                sb.append(String.format("%02X", digest[i]));
                if (i < digest.length - 1 && i < 15) {
                    sb.append(":");
                }
            }
            return sb.toString();
        } catch (Exception e) {
            return "SHA256:UNKNOWN";
        }
    }

    private byte[] readAllBytes(File file) throws Exception {
        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] data = new byte[(int) file.length()];
            int read = fis.read(data);
            return data;
        }
    }
}
