#!/usr/bin/env bash
FILENAME=`basename $0`
while getopts "hHLSPCDWEMBT" opt
do
case $opt in
h)  clear
    echo "Using $FILENAME -option"
    echo "<L > Current directory."
    echo "<S > Start a sh file from within sh file."
    echo "<P (purification) > Clear screen."
    echo "<C > Copy files."
    echo "<D > Removes file(s)."
    echo "<W (Withdraw) > Display any text."
    echo "<E > End script."
    echo "<M > Make derectory."
    echo "<B (Break) > Waits for one keystrokes to continue."
    echo "<H > List of supported commands";;

H) 
    clear
    echo "Using $FILENAME -option"
    echo "<L > Current directory."
    echo "<S > Start a sh file from within sh file."
    echo "<P (Purification) > Clear screen."
    echo "<C > Copy files."
    echo "<D > Removes file(s)."
    echo "<W (Withdraw) > Display any text."
    echo "<E > End script."
    echo "<M > Make derectory."
    echo "<B (Break) > Waits for one keystrokes to continue."
    echo "<T (Tuning) > List of supported commands for install mini pc";;

L) ls;;
S) $OPTARG
echo "Enter the full path to the file"
    read FULLSH
    echo "Confirm?"
    select CONFIRM in "Yes" "No"
    do
    break
    done

    if [[ $CONFIRM == 'Yes' ]]; then
         ./$FULLSH
    else
         exit 0
    fi
    ;;

P)clear;;

C) echo "Enter source:"
    read SOURCE
    echo "Enter target:"
    read TARGET
    cp $SOURCE $TARGET/
    ;;



D) echo "Enter the full path to the file"
     read confirmfilefordelete
     if [ -e $confirmfilefordelete ]; then
          rm $confirmfilefordelete
          echo "File on the way '$confirmfilefordelete' deleted!"
     else
          echo " '$confirmfilefordelete' not found."
          fi
    ;;
W) 
echo "Enter text:"
read TXTFORECHO
echo
echo ">$TXTFORECHO"
;;
E) exit 0;;
M) echo "Enter folder name:"
read NAMENEWFOLDER
if [[ -e diskFORDOS/$NAMENEWFOLDER ]]; then
     echo "The folder already exists."
else
     mkdir diskFORDOS/$NAMENEWFOLDER
     echo ">/diskFORDOS/$NAMENEWFOLDER"
fi
;;

B) clear
read -p "Press any key to continue.";;

T) clear
cat Instructions.txt


esac
done
