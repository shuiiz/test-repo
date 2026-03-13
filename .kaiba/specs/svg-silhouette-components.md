---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: SVG Silhouette Components
---

# SVG Silhouette Components

## Overview

Inline SVG placeholder components that replace external images at MVP. All visuals use these components — no image files or external URLs required.

---

## PlanetSilhouette (`components/PlanetSilhouette.tsx`)

**Type:** Server Component

### Props

```typescript
interface PlanetSilhouetteProps {
  type: "rocky" | "ocean" | "jungle" | "ice";
  accentColor: string;   // Tailwind color name, e.g. "orange"
  className?: string;
}
```

### Behaviour

- Renders an inline SVG themed planet shape based on `type`:
  - `rocky` — craters / volcanic texture
  - `ocean` — wave patterns
  - `jungle` — canopy / leaf shapes
  - `ice` — ice shard / crystalline shapes
- Planet outline and accent elements are tinted with `accentColor`
- Glowing accent outline on dark background
- Sized via `className` prop
- Integrates into card layouts and hero sections

---

## DinoSilhouette (`components/DinoSilhouette.tsx`)

**Type:** Server Component

### Props

```typescript
interface DinoSilhouetteProps {
  variant: string;      // Drives SVG dino silhouette shape
  className?: string;
}
```

### Behaviour

- Renders a minimalist dinosaur profile in `slate-400` silhouette style
- Different `variant` values produce different dinosaur body shapes
- Sized via `className` prop

---

## Image Strategy: Post-MVP Upgrade Path

Replace silhouette props with `imageUrl` strings in the data model and swap the SVG component for `next/image` — no layout changes needed.

---

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-14 | All `PlanetSilhouette` and `DinoSilhouette` components render without errors |
