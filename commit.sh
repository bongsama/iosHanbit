#!/bin/sh

##
# Keep local path in sync with remote path on server.
# Ignore .git metadata.
#
local=$1
#remote=$2

cd "$local" && fswatch . "git pull;git add --all .;git commit -m 'autosave'"
