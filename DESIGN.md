---
name: onest-developer-core
description: Authoritative GitHub and Linear inspired developer-core console design system for ONEST Verifiable Credential Platform
colors:
  bg-canvas: "#090d12"
  surface-panel: "#0d1117"
  surface-subtle: "#161b22"
  border-wire: "#21262d"
  border-active: "#30363d"
  border-focus: "#58a6ff"
  text-primary: "#f0f6fc"
  text-secondary: "#c9d1d9"
  text-muted: "#8b949e"
  status-success: "#238636"
  status-success-fg: "#2ea043"
  status-error: "#da3633"
  status-error-fg: "#f85149"
  status-warning: "#d29922"
  status-warning-fg: "#e3b341"
  accent-action: "#58a6ff"
  accent-action-hover: "#1f6feb"
typography:
  display:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif"
    fontSize: "1.75rem"
    fontWeight: 700
    lineHeight: "1.25"
    letterSpacing: "-0.02em"
  heading:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 600
    lineHeight: "1.3"
    letterSpacing: "-0.01em"
  body:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif"
    fontSize: "0.875rem"
    fontWeight: 400
    lineHeight: "1.5"
    letterSpacing: "0em"
  code:
    fontFamily: "'JetBrains Mono', 'Geist Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace"
    fontSize: "0.8125rem"
    fontWeight: 500
    lineHeight: "1.45"
    letterSpacing: "0em"
rounded:
  xs: "3px"
  sm: "4px"
  md: "6px"
  lg: "8px"
spacing:
  xs: "4px"
  sm: "8px"
  md: "12px"
  lg: "16px"
  xl: "24px"
components:
  button-primary:
    backgroundColor: "{colors.status-success}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.md}"
    padding: "6px 14px"
  button-primary-hover:
    backgroundColor: "{colors.status-success-fg}"
  button-secondary:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.md}"
    padding: "6px 14px"
  badge-certified:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.status-success-fg}"
    rounded: "{rounded.xs}"
    padding: "2px 8px"
  badge-tampered:
    backgroundColor: "{colors.surface-subtle}"
    textColor: "{colors.status-error-fg}"
    rounded: "{rounded.xs}"
    padding: "2px 8px"
  card-panel:
    backgroundColor: "{colors.surface-panel}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.lg}"
    padding: "16px 20px"
---

## Overview

The ONEST Developer-Core design system provides an authoritative, utilitarian, high-density interface optimized for cryptographic credential lifecycle operations. Rooted in the visual standards of high-trust developer platforms (GitHub, Linear, and Cloudflare consoles), it prioritizes structural precision, information density, and unambiguous status indicators over decorative fluff.

The core design mandate is **anti-vibe-coding**:
- Zero saturated neon gradient blobs or artificial blurred spheres.
- Zero unearned glassmorphism or low-contrast frosted glass cards.
- Zero oversized bubbly border radiuses (capped strictly at 6px to 8px).
- Strict semantic color discipline: color exists exclusively to convey cryptographic truth, action states, and operational health.

---

## Colors

### Surface & Foundation Hierarchy
- **Canvas Base (`#090D12`)**: Deep, non-reflective matte obsidian base canvas. Prevents visual fatigue while maintaining deep contrast.
- **Console Panel Surface (`#0D1117`)**: GitHub-standard surface level for data containers, credential cards, and inspection drawers.
- **Subtle Row/Control Fill (`#161B22`)**: Secondary surface for table headers, input backgrounds, and hovered action rows.

### Structural Hairline Grid
- **Wireframe Border (`#21262D`)**: 1px structural hairline separating cards, metric cells, and table rows.
- **Interactive Border (`#30363D`)**: Hovered wireframe state and card borders on interactive surfaces.
- **Active Focus Ring (`#58A6FF`)**: Crisp 2px solid ring for focused inputs and keyboard navigation.

### Semantic Status Palette (Zero Decorative Variance)
- **Authentic / Hash Matched (`#238636` / `#2EA043`)**: Signals verified cryptographic integrity, active certificates, and matching SHA-256 digests.
- **Tampered / Corrupted (`#DA3633` / `#F85149`)**: Signals hash mismatch, data alteration, and security alert states.
- **Revoked / Inactive (`#D29922` / `#E3B341`)**: Signals administrative certificate revocation or pending approvals.
- **Action & Link Accent (`#58A6FF` / `#1F6FEB`)**: Restricted to interactive navigation links, filter pills, and commit-style action buttons.

---

## Typography

The platform employs a dual-typeface system pairing a clean, highly legible system sans for reading and navigation with strict tabular monospace for cryptographic data.

1. **System Interface Sans (`font-sans`)**:
   - Stack: `-apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif`
   - Role: Page headers, labels, documentation copy, and navigational links.
   - Scale:
     - Page Title: `1.75rem` (`28px`), `700` weight, `-0.02em` tracking.
     - Section Header: `1.25rem` (`20px`), `600` weight, `-0.01em` tracking.
     - Body Text: `0.875rem` (`14px`), `400` weight, `1.5` line height.
     - Meta/Helper Label: `0.75rem` (`12px`), `500` weight, uppercase tracking `0.04em`.

2. **Tabular Monospace (`font-mono`)**:
   - Stack: `'JetBrains Mono', 'Geist Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace`
   - Role: `credentialId` (e.g. `CRED-000001`), `studentId` (e.g. `SEEKER-000001`), SHA-256 digests, timestamps (`2026-10-29T22:48:05Z`), and numeric metrics.
   - Features: `font-feature-settings: 'tnum' 1, 'zero' 1` ensuring uniform column alignment across tables and audit records.

---

## Layout

The layout is built for **high information density (Operate Mode)**:
- **Max Width**: Standardized content container capped at `1280px` for multi-column dashboards (`ProviderDashboard`) and `840px` for single-column task inspectors (`PublicVerifyPage`).
- **Grid Density**: Metric tiles use a 4-column responsive grid with `12px` to `16px` gaps.
- **Data Tables**: Compact padding (`py-2.5 px-3.5`) with 1px border separators (`#21262D`) and sticky, muted table headers (`#161B22`).
- **Key-Value Inspect Layout**: Dual-column tabular inspector with left-aligned muted keys (`35%` width) and monospace right-aligned values (`65%` width).

---

## Elevation & Depth

True developer consoles convey hierarchy through **1px border contrast and surface value shifts**, not drop shadows:
- **Elevation Level 0 (Canvas)**: Background `#090D12` (no shadow, flat).
- **Elevation Level 1 (Card / Table)**: Surface `#0D1117` with `1px solid #21262D`.
- **Elevation Level 2 (Hover / Active)**: Surface `#161B22` with `1px solid #30363D`.
- **Modals / Drawers**: Surface `#0D1117` with `1px solid #30363D` and subtle shadow `0 8px 24px rgba(0, 0, 0, 0.6)`. Muddy background blurs (`backdrop-blur-xl`) are forbidden; use a clean solid dim overlay (`rgba(5, 8, 12, 0.8)`).

---

## Shapes

- **Border Radius**:
  - Badge / Status Pill: `rounded-sm` (`4px`) or `rounded-xs` (`3px`).
  - Buttons & Inputs: `rounded-md` (`6px`).
  - Containers & Data Cards: `rounded-lg` (`8px`).
  - Full circle (`rounded-full`) is reserved strictly for avatar badges or icon containers.
- **Wire Dividers**: Clean `1px` lines utilizing `border-t border-[#21262D]` without inset white reflections.

---

## Components

### 1. Verification Result Banner (`PublicVerifyPage`)
- **Authentic State**:
  - Container: Background `#0D1117`, border `1px solid #238636`.
  - Icon: `ShieldCheck` or `CheckCircle2` in `#2EA043`.
  - Badge: `Cryptographic Hash Matched (Authenticity Certified)` rendered in bold green monospace pill.
  - Data Grid: Two-column key-value matrix displaying Issuer, Student, Course, Issue Date, and canonical hash state.
- **Tampered State**:
  - Container: Background `#0D1117`, border `1px solid #DA3633`.
  - Icon: `ShieldAlert` or `AlertTriangle` in `#F85149`.
  - Badge: `Cryptographic Hash Mismatch: Tampering Detected` with red alert badge.

### 2. Metric Analytics Cards (`ProviderDashboard`)
- Surface: `#0D1117` with `1px solid #21262D`.
- Layout: Top row features metric label in uppercase `#8B949E` with small semantic icon; bottom row features large bold number in `#F0F6FC` (`font-mono`, `1.85rem`).
- Hover: Border transitions to `#30363D` in `120ms`.

### 3. Credential Digital Wallet Card (`SeekerMyCredentials`)
- Surface: `#0D1117` with `1px solid #21262D`.
- Header: Monospace `credentialId` with copy button, accompanied by active/revoked status badge.
- Body: Course title in bold `#F0F6FC`, issuing university, and completion date.
- Actions: Compact buttons (`btn-secondary` at `py-1.5 px-3`) for "View Details / QR Code" and "Export Link".

---

## Do's and Don'ts

### Do's
- **DO** use monospace font for all IDs (`CRED-`, `ISSUER-`, `SEEKER-`), dates, and hash validation seals.
- **DO** keep borders at crisp `1px` using `#21262D` and `#30363D`.
- **DO** use color with strict semantic intent (Green = Valid, Red = Tampered, Amber = Revoked).
- **DO** maintain compact padding to allow users to review multiple records without excessive scrolling.

### Don'ts
- **DON'T** use purple, pink, or cyan gradient blobs in the background.
- **DON'T** use multi-color gradient text (`bg-clip-text text-transparent bg-gradient-to-r`).
- **DON'T** use rounded pill buttons (`rounded-full`) for main action buttons. Keep buttons at `rounded-md` (6px).
- **DON'T** use heavy glassmorphism with low-contrast semi-transparent white borders.
- **DON'T** expose raw 64-character hash strings in standard consumer views; present the certified authenticity seal instead.
