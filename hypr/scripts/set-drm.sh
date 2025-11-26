#!/usr/bin/env bash

# find external monitor outputs (ignore built-in eDP maybe)
EXTERNAL=$(hyprctl monitors | grep -Eo 'HDMI-.|DP-.|USB-C-|' )  # adjust regex to your output names

if [ -n "$EXTERNAL" ]; then
    export AQ_DRM_DEVICES="/dev/dri/card0:/dev/dri/card1"
else
    # optionally unset or set default
    unset AQ_DRM_DEVICES
fi

# Finally launch a shell wrapper to start Hyprland or just exit

touch ~/.config/hypr/drm_test_set.txt

