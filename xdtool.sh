#!/bin/bash
wid=$(xdotool search --name "mozilla firefox")
xdotool windowfocus $wid
xdotool key "ctrl+t"
xdotool key "ctrl+l"
xdotool type "google.com"
xdotool key "Return"
