---
source_spec_id: c9cebbfc-1aef-4aea-a0e3-d3b614d500f7
title: Images and Media
---

# Images and Media

Each rock type section MUST include one representative image sourced from Wikimedia Commons.

## Requirements

- Each rock type section includes exactly one `<img>` tag
- Image source URLs must be from Wikimedia Commons (HTTPS) and confirmed freely-licensed (public domain or CC-licensed)
- Each image MUST have a descriptive `alt` attribute (e.g. `alt="Close-up photograph of granite, showing interlocking crystals of quartz, feldspar, and mica"`)
- Images must display at a consistent size: `max-width: 400px`, responsive (`width: 100%` within their container)
- Images must not overflow their container on small screens (`max-width: 100%` on `img`)
- Images may be floated or centred within their section

## Suggested Wikimedia Commons Images

| Rock Type | Suggested Subject | Wikimedia Commons Search Term |
|---|---|---|
| Igneous | Granite | `Granite_closeup` |
| Sedimentary | Sandstone | `Sandstone_cliff` |
| Metamorphic | Marble | `Marble_texture` |

Implementer must verify that image URLs are live at the time of implementation.
