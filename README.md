# Tropy Flatpak

## Permissions rationale
Tropy requests the following restricted permissions:
- Filesystem: we use access to `home` `/media` and `/run/media` because Tropy needs access to all files in a Tropy project.
- Wayland: since 1.16 we use `--socket=wayland` and `--socket=fallback-x11`
- Network: we use `--share=network` because Tropy needs to fetch remote images if you import them by pasting a URL.
- WebGL: `--device=dri` is required becuase Tropy's image viewer needs access to the GPU.

## Update sources notes
- Fetch and unpack the Tropy sources outside of the sandbox
- Run `flatpak-node-generator --electron-node-headers --electron-ffmpeg=lib npm package-lock.json`
- Fix node-gyp cache installVersion from 9 to 11
