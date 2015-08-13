#bin/bash
# Utility to add some gradle nature that keeps being removed from our eclipse workspace

# Test code that should be removed for the source - adds test data
for i in `find . -name "project.project"` ; 
do
  echo Removing $i
  rm $i
done

cp template.project hello-test/project.project 
cp template.project test1/project.project

./add-nature.sh

cat hello-test/project.project
cat test1/project.project
