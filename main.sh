#!/usr/bin/env bash


# rxfBOS

clear
echo "Running..."
# sleep 10
sleep 2
clear
echo -e "\e[1mWelcome to rxfbOS\e[0m"
echo "version 2.2rc"
echo
echo -e "\e[1mEnter the number corresponding to the menu item:\e[0m"
select command in "README!*" "FILE CREATION" "FILE MODIFICATION" "DELETE FILE" "TEST THE NETWORK FOR CONNECTION" "HELP FOR BASH" "OPEN CONSOLE" "AUTHORS" "CHANGING DISK" "DN-DOS (!)" "EXIT"
do
echo
echo -e "\e[1m$command\e[0m"
echo ">>"
break
done


# readme
if [[ $command == "README!*" ]]; then
     cat readmehelp/readme.txt
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
fi

# file created
 if [[ $command == "FILE CREATION" ]]; then
     echo "Select disk*:"
     read DISKFORFILE
     echo "Select user*:"
     read USERDISKFILE
     echo "Enter file name*:"
     read filename
     touch $DISKFORFILE/$USERDISKFILE/Documents/$filename
     echo "File '$filename' created in diskname/Documents/$filename"
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

# file modification
 if [[ $command == "FILE MODIFUCATION" ]]; then
     echo "Enter the full path to the file"
     read fileroad
     if [ -e $fileroad ]; then
           nano $fileroad
     else
           echo "File not found!"
           sleep 0.5
           echo -n "Created? (N/y)"
           read choicecreated

           case "$choicecreated" in 
           y|Y) echo "Confirm file name:"
               read confirmfilename
               touch $confirmfilename
        ;;
    n|N) echo "The file will not be created."
          exit 0
        ;;
    *) echo "Default action... 'N'"
          exit 0
        ;;
esac
sleep 5
echo "-----------------------------"
     ./Scripthelper.sh
     fi

 fi

# delete file
 if [[ $command == "DELETE FILE" ]]; then
     echo "Enter the full path to the file"
     read confirmfilefordelete
     if [ -e $confirmfilefordelete ]; then
          rm $confirmfilefordelete
          echo "File on the way '$confirmfilefordelete' deleted!"
     else
          echo " '$confirmfilefordelete' not found."
          sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
     fi
 fi

 if [[ $command == "TEST THE NETWORK FOR CONNECTION" ]]; then
     echo "If there is a signal, then the connection is stable."
     echo "Press ctrl + c to finish"
     sleep 2.5
     ping google.com
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

# help for bash
 if [[ $command == "HELP FOR BASH" ]]; then
     echo "The list of commands is very long, are you sure you want to read them in the terminal?!(y/N)"

     read $choicereading
     case "$choicereading" in
    y|Y) echo "a.n - Okay....."
    sleep 3
    cat Secondary/commandforshell.txt
        ;;
    n|N) echo "if you want to read the list of commands follow this link: 
              https://tproger.ru/translations/bash-cheatsheet/  or open a file in the secondary folder called 'commandforshell.txt'. Thank!"
        exit 0
        ;;
    *) echo "Default action... 'N'"
    echo
    echo "a.n - Так как них%я не работает, я оставлю это: if you want to read the list of commands follow this link: 
          https://tproger.ru/translations/bash-cheatsheet/
          or open a file in the secondary folder called 'commandforshell'. Thank!"
        ;;
     esac
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

 if [[ $command == 'OPEN CONSOLE' ]]; then
     echo "Owner initialization..."
     echo "Exit back to bash: $ bash"
     sudo echo 'Heh'
     sh
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

 if [[ $command == 'CHANGING DISK' ]]; then
    select disksedit in "Creating new disk" "Delete disk" "Change disk contents"
    do
    echo
    echo -e "\e[1m$disksedit\e[0m"
    echo ">>"
    break
    done

    if [[ $disksedit == 'Creating new disk' ]]; then

    echo `tput setaf 3`Create new disk?`tput sgr0`
     select CREATEDISK in "Yes" "No"
     do
     echo
     echo ">>"
     echo "$CREATEDISK"
     break
     done

     if [[ $CREATEDISK == 'Yes' ]]; then
          echo "Enter the disk name:"
          read NAMEDISKNEW
          mkdir $NAMEDISKNEW
          echo `tput setaf 2`Disk created.`tput sgr0`
          sleep 1
          select configdisk in "Yes" "No"
          do
          break
          done

          
        

          if [ $configdisk == 'Yes' ]; then
            select howconfigdisk in "Auto" "Manual"
            do
            break
            done

            if [[ $howconfigdisk == 'Auto' ]]; then
                 mkdir $NAMEDISKNEW/user
                 mkdir $NAMEDISKNEW/user/Documents
                 mkdir $NAMEDISKNEW/user/Images
                 mkdir $NAMEDISKNEW/user/files
                 echo `tput setaf 2`Disk configuration.`tput sgr0`
                 sleep 2
                 ./Scripthelper.sh
            fi

            if [[ $howconfigdisk == 'Manual' ]]; then
                echo "Enter username:"
                read usernamefornewdisk

                 mkdir $NAMEDISKNEW/$usernamefornewdisk
                echo "Enter directories that must be present, maximum 5"
                 read whatkatalog
                 mkdir $NAMEDISKNEW/$usernamefornewdisk/$whatkatalog
                 echo `tput setaf 2`Created.`tput sgr0`
                 echo "More?"
                 read whatkatalogone
                 mkdir $NAMEDISKNEW/$usernamefornewdisk/$whatkatalogone
                 echo `tput setaf 2`Created.`tput sgr0`
                 echo "More?"
                 read whatkatalogtwo

                 mkdir $NAMEDISKNEW/$usernamefornewdisk/$whatkatalogtwo
                 echo `tput setaf 2`Created.`tput sgr0`
                 echo "More?"

                 read whatkatalogthree
                 mkdir $NAMEDISKNEW/$usernamefornewdisk/$whatkatalogthree
                 echo `tput setaf 2`Created.`tput sgr0`

                 echo "More?"
                 read whatkatalogfour
                 mkdir $NAMEDISKNEW/$usernamefornewdisk/$whatkatalogfour
                 echo `tput setaf 2`Disk configuration.`tput sgr0`
                 sleep 2
                 ./Scripthelper.sh
                fi
            fi
        fi
    fi

    if [[ $CREATEDISK == 'No' ]]; then
            echo `tput setaf 3`Action canceled.`tput sgr0`
            sleep 2
            ./Scripthelper.sh
            fi
fi

if [[ $disksedit ==  'Delete disk' ]]; then
     echo `tput setaf 1`All your data will be deleted! And with them the whole disk setup.`tput sgr0`
     select deldisk in "Confirm this action" "Undo action"
fi

    if [[ $deldisk == 'Confirm this action' ]]; then
         echo "Insert the name of the disc to delete."
         read namedeldisk
         rm -rf $namedeldisk
         if [ -e $namedeldisk ]; then
              echo `tput setaf 1`Removal failed!`tput sgr0`
         else
              echo `tput setaf 2`Removed.`tput sgr0`   
         fi
    fi

if [[ $disksedit == 'Change disk contents' ]]; then
    echo `tput setaf 3`You can ditch the system that I was tormented by writing...`tput sgr0`
    echo "Username"
    read usedisk
    echo "Full path to folder:"
    read fullpatchtodiskedit
    select whattodo in "Change directory name" "Delete directory"

    if [[ $whattodo == 'Change directory name' ]]; then
         echo "Enter a new name:"
         read newnamedir
         mv $fullpatchtodiskedit $newnamedir
    fi    
fi

if [[ $command == 'DN-DOS (!)' ]]; then
     chmod +x DNDOS.sh
     ./DNDOS.sh -h
fi


 if [[ $command == 'AUTHORS' ]]; then
     clear
     echo "              Code: doonort3."
     sleep 0.8
     echo "             Idea: Doonort3."
     sleep 0.8
     echo "                  Lost Time: Doonort3."
     sleep 0.8
     echo "               Inspiration: The last script that turned out."
     sleep 1
      echo "Глянуть русские титры?"
      echo "Yes/No"
      read $lookandno

     echo "Выбора то особо и нет)"
     echo
     echo "              Код: Doonort3."
     sleep 0.5
     echo "             Идея: Doonort3."
     sleep 0.5
     echo "                  Потеряное время: Doonort3."
     sleep 0.5
     echo "Источник вдохновения: Прошлый скрипт который заработал."
     sleep 0.5
     echo "Лицензия: Michail inc."
     echo
     echo
     echo
     sleep 10
     echo "Неужели))) Кто-то до сюда дождался)
          vk.com/vishix"
          sleep 5
     echo "-----------------------------"
fi

if [[ $command == 'EXIT' ]]; then
     exit 0
fi