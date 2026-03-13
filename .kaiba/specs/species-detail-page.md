---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Species Detail Page
---

# Species Detail Page

## Route

`/species/[slug]` — Static generation via `generateStaticParams`

## Purpose

Full encyclopaedia entry for a single dinosaur species.

## Routing

- `generateStaticParams` iterates over all species slugs
- Each species slug maps to a unique static page

## Content Blocks

1. **Large `DinoSilhouette` SVG** + species name as heading

2. **Metadata table**
   - Planet (linked to `/planets/[planetSlug]`)
   - Era
   - Diet
   - Length
   - Weight
   - Danger level
   - Discovered date

3. **Abilities list**
   - Rendered as `Badge` / pill components

4. **Full lore description** (3–6 sentences from species data)

5. **"Other species from [Planet]"**
   - Horizontal scrollable row
   - `DinoCard` components for sibling species on the same planet
   - Excludes the current species

6. **Breadcrumb navigation**
   - Home → Species → [Species Name]

## SEO

- Exports `generateMetadata` with unique `<title>` tag (e.g. `"Pyrosaur Rex | GalactiDino"`)
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-5 | `/species/[slug]` shows full species detail and related dinos |
| AC-6 | Page is responsive at 375px, 768px, and 1280px |
| AC-8 | Navigation links are correct |
| AC-9 | Diet badges and danger-level icons render for all diet types |
| AC-10 | Page has a unique `<title>` tag |
| AC-14 | `DinoSilhouette` components render without errors |
