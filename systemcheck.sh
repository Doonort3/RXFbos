#!/usr/bin/env bash
chmod +x DNDOS.sh
chmod +x ISS.sh
chmod +x main.sh
chmod +x Scripthelper.sh


clear
echo "Checking components..."

if [ -e readmehelp ]; then
sleep 0.1
    echo `tput setaf 2`readme/ 1/7`tput sgr0`
    
    if [ -e Secondary ]; then
    sleep 0.1
         echo `tput setaf 2`Secondary/ 2/7`tput sgr0`
         
         if [ -e readmehelp/readme.txt ]; then
         sleep 0.1
        echo `tput setaf 2`readme.txt 3/7`tput sgr0`
        sleep 0.1
              echo `tput setaf 2`The folder 'readmehelper' is checked and in working order.`tput sgr0`

              if [ -e Secondary/commandforshell.txt ]; then
              sleep 0.1
              echo `tput setaf 2`commandforshell.txt 4/7`tput sgr0`
              sleep 0.1
                   echo `tput setaf 2`The folder 'Secondary' is checked and in working order.`tput sgr0`
                   sleep 0.1

                   if [ -e main.sh ]; then
                        echo `tput setaf 2`main.sh 5/7`tput sgr0`
                        sleep 0.1

                        if [ -e Scripthelper.sh ]; then
                             echo `tput setaf 2`Scripthelper.sh 6/7`tput sgr0`
                             sleep 0.1

                             if [ -e ISS.sh ]; then
                                   echo `tput setaf 2`ISS.sh 7/7`tput sgr0`
                                   sleep 0.1

                             else
                                   red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
                                   exit 0
                             fi

                             if [ -e DNDOS.sh ]; then
                                   echo `tput setaf 2`DNDOS.sh 8/9`tput sgr0`
                             else
                                   red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
                                   exit 0
                             fi

                              if [ -e Instructions.txt ]; then
                                    echo `tput setaf 2`Instructions.txt 9/9`tput sgr0`
                              else
                                    echo `tput setaf 3`There is no required file for manual installation, manual configuration will not be available to you.`tput sgr0`
                                    
                              fi
                              
                             
                             
                             if [ -e 'disk'* ]; then
                             if [ -e 'DOS'* ]; then
                                   echo `tput setaf 2`DOS disk found and defined`tput sgr0`
                             else
                                   echo `tput setaf 3`DOS disk not found!`tput sgr0`   
                             fi
                                   echo `tput setaf 2`Main disk found!`tput sgr0`
                             else
                                  echo `tput setaf 3`Disk not found`tput sgr0`
                                  ./ISS.sh
                              fi
                             
                             

                             if [ -e 'disk'* -a -e 'DOS'* ]; then
                                    ./ISS.sh
                             else
                                   echo "Installation program:"
                                   echo "I recommend 'ISS'"
                                   select choosesetup in "DN-DOS(Manual setting)" "ISS(The initial automatic system setup)"
                                   do
                                   break
                                   done
                                   sleep 0.1
                                   if [[ $choosesetup == 'DN-DOS(Manual setting)' ]]; then
                                   echo "Prepare for torment."
                                   read -p "Press enter to continue..."
                                   ./DNDOS.sh -h
                                   else
                                         echo "Easy way? okay."
                                         read -p "Press enter to continue..."
                                         ./ISS.sh
                                   fi
                             fi

                             fi
                             
                             
                             else
                             red echo `tput setaf 1`Important component does not exist or has been moved.`tput sgr0`
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

    