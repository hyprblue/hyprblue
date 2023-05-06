#!/usr/bin/sh

cat <<EOF > /usr/etc/hyprland/environment

export LIBVA_DRIVER_NAME=nvidia
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export SDL_VIDEODRIVER=wayland
export WLR_NO_HARDWARE_CURSORS=1
EOF
