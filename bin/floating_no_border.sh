#!/bin/bash

while read -r _ _ _ node state status; do
	[[ "$state" == "floating" ]] && [[ "$status" == "on" ]] && bspc config -n $node border_width 0
	[[ "$state" == "floating" ]] && [[ "$status" == "off" ]] && bspc config -n $node border_width 5
done < <(bspc subscribe node_state)
