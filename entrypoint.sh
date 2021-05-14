#!/bin/bash

shopt -s nullglob

for f in /docker-entrypoint.d/*; do
    echo "Executing user script ${f}"
    . "${f}"
done
