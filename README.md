iosHanbit
=========

git download
============
https://code.google.com/p/git-osx-installer/downloads/detail?name=git-1.7.10.3-intel-universal-snow-leopard.dmg&can=3&q=


git autocommit
==============

brew install https://raw.github.com/mlevin2/homebrew/116b43eaef08d89054c2f43579113b37b4a2abd3/Library/Formula/fswatch.rb

한 단계 아래 에서...
cd iphone
fswatch . "git pull;git add --all .;git commit -m 'autosave'"



shell 만들기
==========

#!/bin/sh

##
# Keep local path in sync with remote path on server.
# Ignore .git metadata.
#
local=$1
#remote=$2

cd "$local" && fswatch . "git pull;git add --all .;git commit -m 'autosave'"


#cd "$local" &&
#fswatch . "date +%H:%M:%S && rsync -iru --exclude .git --exclude-from=.gitignore --delete . $remote"
