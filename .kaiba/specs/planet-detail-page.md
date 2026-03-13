---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Planet Detail Page
---

# Planet Detail Page

## Route

`/planets/[slug]` — Static generation via `generateStaticParams`

## Purpose

Display full information about a single planet.

## Routing

- `generateStaticParams` iterates over all planet slugs
- Each planet slug maps to a unique static page

## Content Blocks

1. **Hero banner**
   - Large `PlanetSilhouette` SVG
   - Planet name as heading

2. **Stats grid**
   - Gravity
   - Climate
   - Distance from Earth
   - Galaxy

3. **Lore description** paragraph

4. **Native Species grid**
   - `DinoCard` components
   - Only species whose `planetSlug` matches this planet's slug
   - Responsive grid layout

5. **Breadcrumb navigation**
   - Home → Planets → [Planet Name]

## SEO

- Exports `generateMetadata` with unique `<title>` tag (e.g. `"Ignarion Prime | GalactiDino"`)
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-4 | `/planets/[slug]` shows only species native to that planet |
| AC-6 | Page is responsive at 375px, 768px, and 1280px |
| AC-8 | Navigation links are correct |
| AC-10 | Page has a unique `<title>` tag |
| AC-14 | `PlanetSilhouette` components render without errors |
