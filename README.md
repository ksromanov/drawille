# A port of asciimoo's drawille to OCaml

Drawille is a tiny library for drawing in terminal with
Unicode Braille characters. Current implementation supports
only UTF-8 encoding. It is not hard to add UTF-16 encoding,
however drawing with Braille characters is historically used
on Mac/Linux only.

## Quick start

Create canvas using either `empty` or `fromList`, set some pixels
with `set` and render UTF-8 encoded with `frame`:

```ocaml
let canvas = fromList [(0,2); (2,3); (3,0)] in
set canvas (0,0);
frame canvas
```

(0, 0) pixel is in the top-left corner.
