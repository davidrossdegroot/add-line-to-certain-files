#bin/bash

for files in find . -name "project.project" -print
do
  echo Adding the gradle nature to the following files: $files
done

