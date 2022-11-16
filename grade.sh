set -e
FILE="ListExamples.java"
CPATH=".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
rm -rf student-submission
git clone $1 student-submission
cd student-submission
if [[ -f "$FILE" ]]
then
        echo "$FILE has been found."
else
        echo "$FILE was not found."
        exit
fi
cd ../
cp TestListExamples.java student-submission/
cp -r lib student-submission/
cd student-submission/
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples | grep "Tests run:" > results.txt
NUMS=(`grep -o '[0-9]' results.txt`)
PASS=${NUMS[0]}
TOTAL=${NUMS[1]}
echo $PASS
echo $TOTAL