---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Design System and Styling
---

# Design System and Styling

## Theme: Dark Space

All pages use a consistent dark space design system implemented with Tailwind CSS v3.

## Design Tokens

| Token | Tailwind / Value |
|-------|-----------------|
| Page background | `bg-slate-950` |
| Card / surface | `bg-slate-900` |
| Border | `border-slate-800` |
| Body text | `text-slate-200` |
| Muted text | `text-slate-400` |
| Headings | `text-white` |
| Star-field | CSS `radial-gradient` dots on `::before` pseudo-element |

## Planet Accent Colours

Planet accent colours (Tailwind color names stored in `Planet.accentColor`) are used for:
- Glow effects on cards
- Badge backgrounds
- Section headings on planet detail pages
- `PlanetSilhouette` outlines

## Typography

- Font family: Inter via `next/font/google`
- Applied globally in root layout

## Responsive Grid Pattern

```
grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4
```

Used consistently across all catalog grids (planets, species).

## Micro-Interactions

- Cards: `transition-all duration-200`, `hover:scale-105`
- Planet cards: coloured glow shadow on hover using planet's `accentColor`

## Star-Field Effect

Applied to the homepage hero section:
- CSS `radial-gradient` creating tiny white dots
- Applied via `::before` pseudo-element on the hero container

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-6 | Site is responsive at 375px, 768px, and 1280px |
