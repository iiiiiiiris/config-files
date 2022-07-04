#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar-main.log
polybar main 2>&1 | tee -a /tmp/polybar-main.log & disown
echo "launched barsi"
