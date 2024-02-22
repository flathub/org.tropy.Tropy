#!/bin/bash


WAYLAND_SOCKET=${WAYLAND_DISPLAY:-"wayland-0"}

if [[ -e "$XDG_RUNTIME_DIR/${WAYLAND_SOCKET}" ]]; then
  FLAGS="--ozone-platform-hint=auto"
fi

exec zypak-wrapper /app/tropy "$FLAGS" "$@"
