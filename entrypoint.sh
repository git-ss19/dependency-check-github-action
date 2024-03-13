#!/bin/bash
set -e

all_args=$@

/usr/share/dependency-check/bin/dependency-check.sh ${all_args}
#
chmod -Rf 755 $GITHUB_WORKSPACE/reports
chmod -Rf 655 $GITHUB_WORKSPACE/reports/dependency-check-report.*