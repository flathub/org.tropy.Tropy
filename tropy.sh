#!/bin/bash

EXTRA_ARGS=()

if [[ ${XDG_SESSION_TYPE:-} == "wayland" ]]; then
    EXTRA_ARGS+=(
      "--ozone-platform-hint=auto"
      "--enable-wayland-ime"
      "--wayland-text-input-version=3"
    )
fi

exec zypak-wrapper /app/tropy "${EXTRA_ARGS[@]}" "$@"
