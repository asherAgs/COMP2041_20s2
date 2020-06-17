#!/bin/sh

echo "$1" | egrep -q "^[1-9][0-9]*$"
