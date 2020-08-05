#!/usr/bin/env bash
clear
echo "Checking components..."
if [ -e readmehelp ]; then
sleep 0.5
    echo `tput setaf 2`readme/ 1/7`tput sgr0`
    
    if [ -e Secondary ]; then
    sleep 0.5
         echo `tput setaf 2`Secondary/ 2/7`tput sgr0`
         
         if [ -e readmehelp/readme.txt ]; then
         sleep 0.5
        echo `tput setaf 2`readme.txt 3/7`tput sgr0`
        sleep 0.5
              echo `tput setaf 2`The folder 'readmehelper' is checked and in working order.`tput sgr0`

              if [ -e Secondary/commandforshell.txt ]; then
              sleep 0.5
              echo `tput setaf 2`commandforshell.txt 4/7`tput sgr0`
              sleep 0.5
                   echo `tput setaf 2`The folder 'Secondary' is checked and in working order.`tput sgr0`
                   sleep 0.5

                   if [ -e main.sh ]; then
                        echo `tput setaf 2`main.sh 5/7`tput sgr0`
                        sleep 0.5

                        if [ -e Scripthelper.sh ]; then
                             echo `tput setaf 2`Scripthelper.sh 6/7`tput sgr0`
                             sleep 0.5

                             if [ -e ISS.sh ]; then
                                   echo `tput setaf 2`ISS.sh 7/7`tput sgr0`
                                   sleep 0.5

                             else
                                   red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
                                   exit 0
                             fi
                             
                             if [ -e 'disk'* ]; then
                             echo
                                  echo `tput setaf 2`Disk found!`tput sgr0`
                                   echo `tput setaf 5`The components are fully serviceable and functional!`tput sgr0`
                                   echo
                                   read -p "Press enter to continue..."
                                   sleep 0.5
                                   echo "Loading 'main.sh'"
                             
                                   sleep 2
                                   chmod +x ISS.sh
                                   ./ISS.sh
                             else
                                  echo `tput setaf 3`Disk nof found`tput sgr0`
                                  ./ISS.sh
                             fi
                             
                             
                            
                        else
                             red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
                        fi
                        

                   else
                        red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
                        exit 0
                   fi
                   
                   
              else
                   echo `tput setaf 1`The folder is empty.`tput sgr0`
              fi
              



         else
         sleep 0.5
            echo `tput setaf 1`3/6`tput sgr0`
            
              echo `tput setaf 1`The folder is empty.`tput sgr0`
              
              exit 0

         fi
         
    else
    sleep 0.5
         echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
         
         exit 0
    fi
    
else
sleep 0.5
    echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
    
    exit 0
fi




