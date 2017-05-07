#! /bin/bash 

result=$(tempfile) ; chmod go-rw $result
whiptail --inputbox "Enter some text" 10 30 2>$result
echo Result=$(cat $result)
rm $result

COLOR=$(whiptail --inputbox "What is your favorite Color?" 8 78 --title "Example Dialog" 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "User selected Ok and entered " $COLOR
else
    echo "User selected Cancel."
fi
 
echo "(Exit status was $exitstatus)"		
