#!/bin/bash
set -e

all_args=$@

/usr/share/dependency-check/bin/dependency-check.sh ${all_args}
#
chmod -Rf 777 $GITHUB_WORKSPACE/reports
chmod -Rf 666 $GITHUB_WORKSPACE/reports/dependency-check-report.*