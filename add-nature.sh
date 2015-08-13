#bin/bash
# Utility to add some gradle nature that keeps being removed from our eclipse workspace

# Replace "project.project" with the name of the file you're searching for.
# This will search the current directory recursively. 
for i in `find . -name "project.project"` ; 
 
do
  echo Fixing $i;
  # Looks for a line with the patter "from" in it. Adds a line after the matching line with "HELLO WORLD".
  sed -i "/from/a HELLO WORLD" $i
done

