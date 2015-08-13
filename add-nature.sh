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

#source code 
for i in `find . -name "project.project"` ; 
 
do
  echo Fixing $i;
  #sed  -n '/from/p' $i
  sed -i '/from/a HELLO WORLD' $i
  cat $i
  #sed  '\from>\a Hello World' $i
done

