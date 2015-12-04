#!/bin/sh
#
# Spawn programs from bar
while read CMD; do $CMD & done
