#!/bin/bash

CONTENT_PATTERN=$(echo "$CONTENT_PATTERN" | sed 's/\*/.*/g' | sed 's/?/./g')

echo $CONTENT_PATTERN

grep -RiP --include="$FILENAME_PATTERN" "$CONTENT_PATTERN" "$1"