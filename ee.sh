#!/bin/sh
case "${TERM:-}" in
	""|screen*|tmux*) TERM=xterm-256color ;;
	*) TERM="$TERM" ;;
esac

TERM="$TERM" ee "$@"
