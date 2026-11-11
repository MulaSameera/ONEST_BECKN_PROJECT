# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users
- **Educational Providers / Accredited Institutions**: University registrars, examination boards, and certification bodies issuing verifiable credentials and auditing institutional registries.
- **Seekers / Learners**: Students, graduates, and professionals holding, organizing, and sharing their academic achievements via self-sovereign digital wallets.
- **Public Verifiers / Employers**: Corporate recruiters, background verification agencies, and academic auditors verifying credentials instantly without requiring login.

## Product Purpose
The ONEST Digital Credential Platform eliminates educational degree fraud and weeks-long background check delays by providing an open, decentralized, and tamper-evident credential infrastructure based on ONEST (Open Network for Education & Skilling Transformations) and Beckn Protocol specifications.

## Positioning
Unlike centralized university transcript portals or fragile paper certificates that take weeks to verify, our platform couples deterministic SHA-256 cryptographic immutability with Self-Sovereign Identity (SSI) wallets, allowing sub-50ms zero-login public verification.

## Operating Context
- Web-based platform with three specialized gateways: Provider Command Center, Seeker Digital Wallet, and Public Verifier.
- Accessible on desktop and mobile browsers with live camera QR scanning support.
- Backed by an ACID-compliant PostgreSQL database pre-seeded with 20,000+ indexed academic records.

## Capabilities and Constraints
- **Zero-Trust Security**: Strict password policy (minimum 8 characters, mandatory special character) enforced across client and server.
- **Cryptographic Immutability**: Canonical W3C Verifiable Credential payloads sealed with deterministic SHA-256 digests; raw 64-character hashes are abstracted into certified authenticity status badges.
- **Instant Revocation**: Real-time institutional revocation flags that immediately propagate to public verifications.
- **Performance**: Sub-50ms verification round-trip with indexed O(1) database lookups.

## Brand Commitments
- **Visual Identity**: Deep Crimson and Obsidian Black palette with subtle rose accents for high-contrast security status readability.
- **Motion Ambiance**: Hardware-accelerated 60-FPS HTML5 Canvas 2D ambient particle engine rendering floating diamond crystals with zero DOM overhead.
- **Voice**: Institutional, secure, and authoritative.

## Evidence on Hand
- Full-stack codebase with React 18 frontend (`frontend/src/`) and Spring Boot 3 microservice backend (`backend/src/`).
- 20,000+ benchmark credentials in PostgreSQL (`onest_credentials_db`).

## Product Principles
1. **Never Trust, Always Verify**: Cryptographic integrity is verified server-side in real time; client-side tampering is completely rejected.
2. **Learner Ownership (SSI)**: The student has full custody of their digital wallet and credentials without relying on university middlemen.
3. **Frictionless Trust**: Employers can verify any credential in under 50 milliseconds with zero login barriers or paywalls.
4. **Cognitive Clarity**: Technical cryptographic proofs are presented as clean, certified status badges rather than overwhelming users with raw hashes.
