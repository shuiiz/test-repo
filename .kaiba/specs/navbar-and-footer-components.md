---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Navbar and Footer Components
---

# Navbar and Footer Components

## Overview

Global layout components rendered in `app/layout.tsx` on every page.

---

## Navbar (`components/Navbar.tsx`)

**Type:** `"use client"` (requires `useState` for mobile toggle)

### Content

- **Logo:** "🦕 GalactiDino" on the left — links to `/`
- **Nav links:** Home, Planets, Species, About
- **Active link style:** white underline on the currently active route

### Mobile Behaviour

- Hamburger toggle button shown on small screens
- Clicking toggle shows/hides the nav link list (`useState` for open/closed)
- Implemented as a client component

### Links

| Label | href |
|-------|------|
| Home | `/` |
| Planets | `/planets` |
| Species | `/species` |
| About | `/about` |

---

## Footer (`components/Footer.tsx`)

**Type:** Server Component

### Content

- Site name + tagline: *"A fictional universe — Galactic Palaeontology Institute"*
- Links to all main pages (Home, Planets, Species, About)
- Dynamic current year (rendered server-side)

---

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Both components render without console errors on all routes |
| AC-8 | Navigation links are correct on all pages |
