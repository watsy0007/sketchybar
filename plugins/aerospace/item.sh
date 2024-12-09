#!/usr/bin/env bash

for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    background.color=0x44ffffff \
    background.corner_radius=6 \
    background.height=20 \
    background.border_color=0x00FFFF \
    padding_left=7 \
    padding_right=7 \
    background.drawing=off \
    label="$sid" \
    click_script="aerospace workspace $sid" \
    script="$PLUGIN_DIR/aerospace/scripts/aerospace.sh $sid"
done
