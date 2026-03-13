---
source_spec_id: c9cebbfc-1aef-4aea-a0e3-d3b614d500f7
title: Non-Functional Requirements
---

# Non-Functional Requirements

| ID | Requirement |
|---|---|
| NFR-1 | **Valid HTML5** — passes W3C validation with no errors |
| NFR-2 | **No JavaScript** — pure HTML + CSS only; no `<script>` tags or inline event handlers |
| NFR-3 | **Self-contained** — works when opened locally as a file (`file://`); Wikimedia image URLs load over HTTPS |
| NFR-4 | **Accessible** — headings used semantically (`h1` → `h2` → `h3`), `alt` text on all images, sufficient colour contrast (WCAG AA) |
| NFR-5 | **Responsive** — readable at all viewport sizes from 320px (mobile) to 1440px (desktop) |
