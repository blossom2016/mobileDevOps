#!/usr/bin/env bash

sleep 5
echo "Hello world from ${NOMAD_TASK_NAME} ${NOMAD_DC}" > /tmp/hello-world