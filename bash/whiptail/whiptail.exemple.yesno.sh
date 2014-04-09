#! /bin/bash 

whiptail --title "Example Dialog" --yesno "This is an example of a yes/no box." 8 78
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "User selected Yes."
else
    echo "User selected No."
fi
 
echo "(Exit status was $exitstatus)"
