#!/bin/bash
set -e

all_args=$@

/usr/share/dependency-check/bin/dependency-check.sh ${all_args}
#
chmod o+w $GITHUB_WORKSPACE/reports/dependency-check-report.*