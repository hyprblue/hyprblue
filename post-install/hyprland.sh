#!/usr/bin/sh

# Change target of hyprland.desktop to use custom script
sed -i 's|^Exec=.*|Exec=/usr/bin/start-hyprland|' /usr/share/wayland-sessions/hyprland.desktop

# Append custom Hyprland configuration to the default config
echo "\n" >> /usr/share/hyprland/hyprland.conf
for config in "/usr/share/hyprland/conf.d"/*.conf; do
    echo "source = $config" >> /usr/share/hyprland/hyprland.conf
done
