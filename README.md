# CV

My CV, written in [Typst](https://typst.app).

## Setup

```bash
mise install
lefthook install
```

## Build

```bash
mise compile
```

Outputs `docs/cv.pdf`. The PDF is automatically rebuilt and staged on
every commit that touches `cv.typ`, via lefthook.
