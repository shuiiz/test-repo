---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Data Models and Seed Data
---

# Data Models and Seed Data

## Overview

Static TypeScript data files defining the Planet and DinosaurSpecies models with seed data for at least 4 planets and 12 species (≥3 per planet). No external database required.

## Data Models

### Planet

```typescript
interface Planet {
  slug: string;                // URL-safe identifier, e.g. "ignarion-prime"
  name: string;                // Display name, e.g. "Ignarion Prime"
  galaxy: string;              // e.g. "Andromeda"
  distanceFromEarth: string;   // e.g. "2.5 million light-years"
  climate: string;             // e.g. "Volcanic / Arid"
  gravity: string;             // e.g. "1.8× Earth"
  description: string;         // 2–4 sentence lore paragraph
  accentColor: string;         // Tailwind color name for theming, e.g. "orange"
  silhouetteType: "rocky" | "ocean" | "jungle" | "ice";
}
```

### DinosaurSpecies

```typescript
interface DinosaurSpecies {
  slug: string;                // URL-safe identifier
  name: string;                // e.g. "Pyrosaur Rex"
  planetSlug: string;          // Foreign key → Planet.slug
  era: string;                 // e.g. "Neo-Volcanic Period"
  diet: "Carnivore" | "Herbivore" | "Omnivore" | "Photosynthetic";
  length: string;              // e.g. "18m"
  weight: string;              // e.g. "12 tonnes"
  abilities: string[];         // e.g. ["Fire breath", "Heat resistance"]
  description: string;         // Rich lore text (3–6 sentences)
  silhouetteVariant: string;   // Drives SVG dino silhouette shape
  dangerLevel: 1 | 2 | 3 | 4 | 5;
  discovered: string;          // In-universe date, e.g. "2401 GPI Standard"
}
```

## Seed Data Requirements

Minimum counts:

| Entity | Minimum count |
|--------|--------------|
| Planets | 4 |
| Dinosaur species | 12 (≥3 per planet) |

### Required Planets

| Planet | Accent | Silhouette | Climate |
|--------|--------|------------|---------|
| Ignarion Prime | `orange` | `rocky` | Volcanic / Arid |
| Aquathos | `cyan` | `ocean` | Aquatic / High-pressure |
| Verdania | `emerald` | `jungle` | Tropical / High-oxygen |
| Crystalyx | `blue` | `ice` | Glacial / Geothermal vents |

### Required Species (≥3 per planet)

| Planet | Species | Diet | Danger |
|--------|---------|------|--------|
| Ignarion Prime | Pyrosaur Rex | Carnivore | 5 |
| Ignarion Prime | Emberback | Herbivore | 2 |
| Ignarion Prime | Cinderscale | Omnivore | 3 |
| Aquathos | Thalassadon | Carnivore | 4 |
| Aquathos | Coralhorn | Herbivore | 1 |
| Aquathos | Pressureback | Omnivore | 3 |
| Verdania | Canopydrake | Photosynthetic | 1 |
| Verdania | Vinevore | Herbivore | 2 |
| Verdania | Junglestalker | Carnivore | 4 |
| Crystalyx | Glaciosaur | Carnivore | 5 |
| Crystalyx | Frosthorn | Herbivore | 2 |
| Crystalyx | Ventcrawler | Omnivore | 3 |

## File Locations

- `data/planets.ts` — Planet seed data array
- `data/species.ts` — DinosaurSpecies seed data array
- `types/index.ts` — Shared TypeScript interfaces

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-3 | All 4 planets and 12+ species appear across the site |
| AC-9 | Diet badges and danger-level icons render for all diet types |
