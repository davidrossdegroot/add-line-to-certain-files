#bin/bash
# Utility to add some gradle nature that keeps being removed from our eclipse workspace

#source code 
for i in `find . -name "project.project"` ; 
 
do
  echo Fixing $i;
  sed -i "/from/a HELLO WORLD" $i
done

