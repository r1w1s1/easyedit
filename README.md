# ee (upstream-based)

This repository tracks FreeBSD `contrib/ee` closely and keeps Linux changes minimal.

Based on `freebsd/freebsd-src` `contrib/ee`, commit [`62fba0054d9eb2303116f54be1f9bc0e7b75cc15`](https://github.com/freebsd/freebsd-src/commit/62fba0054d9eb2303116f54be1f9bc0e7b75cc15) (`ee: add unicode support`), with minimal Linux portability changes.

## Project direction

- Keep source layout and behavior close to FreeBSD upstream.
- Apply only small portability fixes needed for modern Linux.
- Prefer simple, reviewable patches over large rewrites.

## What is included here

- Upstream-style `ee` source files (`ee.c`, `new_curse.c`, `new_curse.h`, etc.).
- A tiny launcher script `ee.sh`.

## Running

Build with your selected Makefile workflow, then run:

```sh
./ee.sh
```

`ee.sh` uses your current `TERM` in general, but forces `xterm-256color` for `screen`/`tmux` style terminal names (which can render menus poorly with classic `ee`).

## Notes

- This repo intentionally avoids drifting far from FreeBSD's `ee`.
- If upstream changes are available, prefer syncing upstream first, then reapplying minimal Linux patches.

## Historical references

Original upstream project page (Wayback Machine):
https://web.archive.org/web/20120119045059/http://www.users.qwest.net/~hmahon/
