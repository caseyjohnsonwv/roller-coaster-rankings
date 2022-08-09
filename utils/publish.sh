#!/bin/bash

SCRIPT_PATH=$(dirname $(readlink -f $0))

bash ${SCRIPT_PATH}/install.sh

heroku login
cd ${SCRIPT_PATH}/../data && \
datasette publish heroku coasterbot.db --name caseyjohnsonwv-coasterbot
