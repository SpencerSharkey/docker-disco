#!/bin/bash
cd /app

if [[ -z "${DISCORD_TOKEN}" ]]; then
	SCRIPT_ARGS="--config config.yaml"
else
	SCRIPT_ARGS="--token=${DISCORD_TOKEN}"
fi

python -m disco.cli ${SCRIPT_ARGS} $*
