#!/bin/bash

rm -rf img/
(cd ..; docker run -it --rm --volume=$(pwd):/srv --volume=$(pwd)/../hugo-vitae:/srv/themes/hugo-vitae registry.gitlab.com/pages/hugo:latest hugo -D -s srv -d public/)
git add --all
git commit -m 'Update and publish'
git push origin master
