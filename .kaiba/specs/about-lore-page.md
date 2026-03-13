---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: About / Lore Page
---

# About / Lore Page

## Route

`/about` — Static generation

## Purpose

In-universe narrative about the fictional discovery of interplanetary dinosaurs. **No placeholder text — all content must be fully written fictional narrative.**

## Content Sections

### 1. The Galactic Palaeontology Institute

- Mission statement of the GPI
- Headquarters: Orbital Station Kepler-9 above Ignarion Prime
- Current Director-General: Dr. Lyra Voss
- ~340 active researchers across 6 field outposts

### 2. The Discovery That Changed Everything

3–4 paragraphs narrating:
- The 2341 discovery of fossilised remains on Ignarion Prime by an unmanned deep-space probe
- The scientific community's initial scepticism
- Dr. Voss's campaign to fund a crewed mission
- The 2387 confirmation of living species

### 3. Dr. Voss's Field Journal — Aquathos, Entry 7

A short first-person excerpt from Dr. Voss's journal:
- Describes her first encounter with a Thalassadon through the submersible viewport
- Vivid, literary, and scientifically framed writing style

### 4. Discovery Timeline

| Year (GPI Standard) | Event |
|---------------------|-------|
| 2341 | Probe Helios-7 detects fossil fragments on Ignarion Prime |
| 2355 | Aquathos survey mission confirms oceanic megafauna signatures |
| 2371 | Verdania expedition establishes first off-world research outpost |
| 2387 | GPI formally chartered; Dr. Voss appointed Director-General |
| 2401 | Crystalyx survey reveals subterranean species at geothermal vents |
| 2419 | Galactic Species Catalogue reaches 100 confirmed species |

## SEO

- Exports `generateMetadata` with unique `<title>` tag
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-8 | Navigation links are correct |
| AC-10 | Page has a unique `<title>` tag |
| AC-13 | `/about` contains fully written fictional narrative (no lorem ipsum) |
