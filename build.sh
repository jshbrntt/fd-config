#!/bin/bash
tag=$(git describe --tags `git rev-list --tags --max-count=1`)
zip -r jbarnett-${tag}.fdz ./$(BaseDir)
