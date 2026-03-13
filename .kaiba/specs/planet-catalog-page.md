---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Planet Catalog Page
---

# Planet Catalog Page

## Route

`/planets` — Static generation

## Purpose

Browse all planets in the fictional universe.

## Content Blocks

1. **Page title** + lore description paragraph
2. **Planet grid** — one `PlanetCard` per planet
   - Each card shows: name, galaxy, climate pill, species count
   - Each card links to `/planets/[slug]`
   - Cards use `PlanetSilhouette` SVG styled with the planet's `accentColor`

## Layout

- Responsive grid: `grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4`

## SEO

- Exports `generateMetadata` with unique `<title>` tag
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-3 | All 4 planets appear in the grid |
| AC-6 | Page is responsive at 375px, 768px, and 1280px |
| AC-8 | Navigation links are correct |
| AC-10 | Page has a unique `<title>` tag |
