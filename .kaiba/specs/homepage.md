---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Homepage
---

# Homepage

## Route

`/` — Static generation

## Purpose

Hero introduction to the fictional "Interplanetary Dinosaurs" universe.

## Content Blocks

1. **Full-width hero section**
   - Headline: "Life Found Beyond the Stars"
   - Sub-headline text
   - CTA button: "Explore Planets" → `/planets`
   - CTA button: "View All Species" → `/species`

2. **Featured Planet spotlight card**
   - Server-side, deterministic selection (not random)
   - Displays a single `PlanetCard`

3. **"Recently Discovered" grid**
   - 3–4 `DinoCard` components
   - Server-side selection

4. **Stats bar**
   - Total planets explored
   - Total species catalogued
   - Galaxies charted

## Design

- Background: `slate-950` with CSS star-field effect (tiny white dots via `radial-gradient` on `::before` pseudo-element)
- Hero headings: `text-white`
- Hero body: `text-slate-300`

## SEO

- Exports `generateMetadata` with unique `<title>` tag
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-8 | Navigation links are correct |
| AC-10 | Page has a unique `<title>` tag |
