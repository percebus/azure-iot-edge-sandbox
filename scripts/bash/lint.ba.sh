#!/usr/bin/env bash

find ./scripts/ -name "*.sh"
find ./scripts/ -name "*.sh" | bash -n
echo $?


find ./containers/edge/ -name "*.sh"
find ./containers/edge/ -name "*.sh" | bash -n
echo $?
