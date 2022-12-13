#!/bin/bash

SCRIPT_PATH=$(dirname "$(readlink -f "$0")")

bash "${SCRIPT_PATH}/install.sh"

datasette "${SCRIPT_PATH}/../data/coasterbot.db" -o
