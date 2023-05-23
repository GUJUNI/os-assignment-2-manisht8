# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 20 : Write a shell script to display the menu driven interface :- 1) list all files of the current directory 2) print the current directory 3) print the date 4) print the users otherwise display "Invalid Option".

while true
do
    echo ""
    echo "(1) List all files of the current directory"
    echo "(2) Print the current directory"
    echo "(3) Print date"
    echo "(4) Print users"
    echo "(5) Exit"
    echo -n "Enter Choice : "
    read choice

    case $choice in
        1)  echo "Files of the current directory :- "
            ls -l
            ;;
        2)  echo "Current directory :- "
            pwd
            ;;
        3)  echo "Date :- "
            date
            ;;
        4)  echo "Users :- "
            who
            ;;    
        5)  echo "Exit"
            exit 0
            ;;
        *)  echo "Invalid Option!"
            ;;
    esac
done

# ****************************************************************************************************************************************
# Output:-

# (1) List all files of the current directory
# (2) Print the current directory
# (3) Print date
# (4) Print users
# (5) Exit
# Enter Choice : 1
# Files of the current directory :-
# total 44
# -rw-r--r-- 1 manis 197609 1123 May 22 16:32 ans15.sh
# -rw-r--r-- 1 manis 197609 1873 May 22 16:56 ans17.sh
# -rw-r--r-- 1 manis 197609 1238 May 22 17:00 ans18.sh
# -rw-r--r-- 1 manis 197609 2362 May 22 18:17 ans19.sh
# -rw-r--r-- 1 manis 197609 1139 May 22 18:51 ans20.sh
# -rw-r--r-- 1 manis 197609  931 May 22 01:52 ans3.sh
# -rw-r--r-- 1 manis 197609 1180 May 22 14:34 ans4.sh
# -rw-r--r-- 1 manis 197609  728 May 22 14:41 ans5.sh
# -rw-r--r-- 1 manis 197609 3309 May 22 15:05 ans6.sh
# -rw-r--r-- 1 manis 197609 2391 May 22 15:57 ans8.sh
# -rw-r--r-- 1 manis 197609   13 May 22 15:04 demo2.txt
# -rw-r--r-- 1 manis 197609   14 May 22 18:48 demo3.txt
# -rw-r--r-- 1 manis 197609   14 May 22 18:49 demo3_copy.txt
# -rw-r--r-- 1 manis 197609   14 May 22 18:49 demo4.txt

# (1) List all files of the current directory
# (2) Print the current directory
# (3) Print date
# (4) Print users
# (5) Exit
# Enter Choice : 2
# Current directory :-
# /c/Users/manis/Downloads/OS

# (1) List all files of the current directory
# (2) Print the current directory
# (3) Print date
# (4) Print users
# (5) Exit
# Enter Choice : 3
# Date :-
# Mon May 22 18:54:26 IST 2023

# (1) List all files of the current directory
# (2) Print the current directory
# (3) Print date
# (4) Print users
# (5) Exit
# Enter Choice : 4
# Users :-

# (1) List all files of the current directory
# (2) Print the current directory
# (3) Print date
# (4) Print users
# (5) Exit
# Enter Choice : 5
# Exit