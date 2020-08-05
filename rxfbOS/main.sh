#!/usr/bin/env bash


# rxfBOS

clear
echo "Running..."
# sleep 10
sleep 2
clear
echo -e "\e[1mWelcome to rxfbOS\e[0m"
echo "version 1.1"
echo
echo -e "\e[1mEnter the number corresponding to the menu item:\e[0m"
select command in "Readme!*" "File creation" "File modification" "Delete file" "Test the network for connection" "Help for Bash" "Open console" "Authors" "exit"
do
echo
echo -e "\e[1m$command\e[0m"
echo ">>"
break
done


# readme
if [[ $command == "Readme!*" ]]; then
     cat readmehelp/readme.txt
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
fi

# file created
 if [[ $command == "File creation" ]]; then
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
 if [[ $command == "File modification" ]]; then
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
 if [[ $command == "Delete file" ]]; then
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

 if [[ $command == "Test the network for connection" ]]; then
     echo "If there is a signal, then the connection is stable."
     echo "Press ctrl + c to finish"
     sleep 2.5
     ping google.com
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

# help for bash
 if [[ $command == "Help for Bash" ]]; then
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

 if [[ $command == 'Open console' ]]; then
     echo "Owner initialization..."
     echo "Exit back to bash: $ bash"
     sudo echo 'Heh'
     sh
     sleep 5
     echo "-----------------------------"
     ./Scripthelper.sh
 fi

 if [[ $command == 'Authors' ]]; then
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

if [[ $command == 'exit' ]]; then
     exit 0
fi



 
