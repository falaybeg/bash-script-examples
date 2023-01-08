#!/bin/bash
 
echo -n "Your Name: "
read NAME
echo -n "Your age: "
read AGE
echo -n "Your Department: "
read DEP
 
echo "You have entered following: "
echo "Name: $NAME"
echo "Age: $AGE"
echo "Deparment: $DEP"
 
CHECK=0
 
while [ $CHECK -eq 0 ]
do
 
echo -n "Is that correct? [Y/n]"
read ANSWER
 
case "$ANSWER" in
  "Y"|"y" )
        echo "Name: $NAME" >> emply.txt
        echo "Age: $AGE" >> emply.txt
        echo "Department: $DEP" >> emply.txt
        echo "========================" >> emply.txt
        echo "You date weer saved into employee file"
        CHECK=1
        ;;
 
  "N"|"n")
        echo "Nothing was saved, run the script again if you want t
o add date to employee file"
        CHECK=1
        ;;
#!/bin/bash
 
echo -n "Your Name: "
read NAME
echo -n "Your age: "
read AGE
echo -n "Your Department: "
read DEP
 
echo "You have entered following: "
echo "Name: $NAME"
echo "Age: $AGE"
echo "Deparment: $DEP"
 
CHECK=0
 
while [ $CHECK -eq 0 ]
do
 
echo -n "Is that correct? [Y/n]"
read ANSWER
 
case "$ANSWER" in
  "Y"|"y" )
        echo "Name: $NAME" >> emply.txt
        echo "Age: $AGE" >> emply.txt
        echo "Department: $DEP" >> emply.txt
        echo "========================" >> emply.txt
        echo "You date weer saved into employee file"
        CHECK=1
        ;;
 
  "N"|"n")
        echo "Nothing was saved, run the script again if you want to add date to employee file"
        CHECK=1
        ;;
 
  * )
        echo "Wrong answer provided"
        ;;
esac
done
