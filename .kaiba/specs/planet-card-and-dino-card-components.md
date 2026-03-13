---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: PlanetCard and DinoCard Components
---

# PlanetCard and DinoCard Components

## Overview

Reusable card components used in catalog pages, detail pages, and the homepage.

---

## PlanetCard (`components/PlanetCard.tsx`)

**Type:** Server Component

### Props

Accepts a `Planet` object.

### Visual Elements

- `PlanetSilhouette` SVG (locked aspect ratio), styled with planet's `accentColor`
- Planet name
- Galaxy name
- Climate pill/badge
- Species count (number of species with matching `planetSlug`)

### Behaviour

- Entire card links to `/planets/[slug]`
- **Hover effect:** `scale-105` + coloured glow shadow using `accentColor`
- Transition: `transition-all duration-200`

---

## DinoCard (`components/DinoCard.tsx`)

**Type:** Server Component

### Props

Accepts a `DinosaurSpecies` object (and optionally the associated `Planet` for display).

### Visual Elements

- `DinoSilhouette` SVG
- Species name
- Planet name
- **Diet badge** with colour coding:
  - Carnivore → red
  - Herbivore → green
  - Omnivore → amber
  - Photosynthetic → purple
- **Danger level** displayed as 1–5 skull icons (☠)

### Behaviour

- Entire card links to `/species/[slug]`
- Hover: `scale-105`, transition: `transition-all duration-200`

---

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Both components render without console errors |
| AC-9 | Diet badges and danger-level icons render for all diet types |
| AC-14 | Silhouette components within cards render without errors |
