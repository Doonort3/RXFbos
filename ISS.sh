#!/usr/bin/env bash

if [ -e 'disk'* -a -d 'disk'* ]; then
echo "Enter the username that you specified during setup, this is done to check if you went through the setup.
Nothing personal,
just bash limitations."
read USER

if [ -e 'disk'*/$USER ]; then
     echo -e "\e[1;32;1mYour disk is fully configured, thank you very much for your time.\e[0m"
     sleep 4.2
else
      echo `tput setaf 3`The disc is found, you can use it. Go through the home directory setup`tput sgr0`
     echo "Select disk:"
     read DISKSELECT
     echo "Enter your username:"
     read USERNAME
     mkdir $DISKSELECT/$USERNAME
     mkdir $DISKSELECT/$USERNAME/Documents
     fi

     if [ -e $DISKSELECT/$USERNAME -a -e $DISKSELECT/$USERNAME/Documents ]; then
          echo `tput setaf 2`Setting complite, congratulations!`tput sgr0`
          sleep 3
     fi

     else
     echo `tput setaf 1`No discs found, create one?     Yes/No`tput sgr0`
     select CREATEDISK in "Yes" "No"
     do
     echo
     echo '>>'
     echo "$CREATEDISK"
     break
     done

     if [[ $CREATEDISK == 'Yes' ]]; then
          echo "Enter the disc name(Title must start in 'disk'):"
          read NAMEDISKNEW
          mkdir $NAMEDISKNEW

          if [ -e 'disk'* ]; then
               echo `tput setaf 2`Disk created`tput sgr0`
               else
                    echo
                    echo
                    echo `tput setaf 1`                 THERE CAN BE NUMEROUS ERRORS!!`tput sgr0`
                    echo
                    echo
                    fi
          else
               echo 'Ok!'
     fi
fi
echo
if [ -e 'DOS'* ]; then
      echo `tput setaf 2`DOS disk found and defined`tput sgr0`
else
echo "Created DOS disk?"
select dec in "YES" "NO"
do
break
done

fi

     if [[ $dec == 'YES' ]]; then
               echo "Enter a disk name for DOS(Title must start in 'DOS')"
               read selectdiskdos
               mkdir $selectdiskdos
               echo "Enter the name of the process or identifier"
               read indiorname
               mkdir $selectdiskdos/$indiorname
               cp DNDOS.sh $selectdiskdos/$indiorname
     else
               echo "Many DOS functions will not function correctly!"
     fi