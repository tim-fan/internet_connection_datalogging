#!/bin/bash

# bash script to regularly `git add / git commit / git push` in a given directory
# used to push log files to github

if (( $# != 1 )); then
    >&2 echo "Expected exactly one argument: LOG_DIR: directory to push"
    exit 1
fi

LOG_DIR=$1

cd $LOG_DIR

find $LOG_DIR | entr bash -c "git add -u && git commit -m 'Automatic update $(date)' && git push"
