#! /bin/bash 

{
    for ((i = 0 ; i <= 100 ; i+=30)); do
        sleep 1
        echo $i
    done
} | whiptail --gauge "Please wait" 5 50 0	

whiptail --title "Example Dialog" --msgbox "Traitement terminé." 10 60
