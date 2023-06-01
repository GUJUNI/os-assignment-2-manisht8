# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 22 : Write a script which has the functionality similar to head and tail commands

echo "(1) head command"
echo "(2) tail command"
echo -n "Enter Choice : "
read choice
case $choice in
    1)  echo -n "Enter filename : "
        read filename
        if [ -f "$filename" ]; 
        then
            echo -n "Enter number of lines : "
            read lines
            echo "Displaying the first $lines lines of $filename :- "
            head -n "$lines" "$filename"
        else
            echo "File $filename not found!"
        fi 
        ;;
    2)  echo -n "Enter filename : "
        read filename
        if [ -f "$filename" ]; 
        then
            echo -n "Enter number of lines : "
            read lines
            echo "Displaying the last $lines lines of $filename :- "
            tail -n "$lines" "$filename"
        else
            echo "File $filename not found!"
        fi 
        ;;
    *)  echo "Invalid Choice!"
        ;;
esac

# ****************************************************************************************************************************************
# Output:-

# (1) head command
# (2) tail command
# Enter Choice : 1
# Enter filename : demo5.txt
# Enter number of lines : 6
# Displaying the first 6 lines of demo5.txt :-
# A
# B
# C
# D
# E
# F

# (1) head command
# (2) tail command
# Enter Choice : 2
# Enter filename : demo5.txt
# Enter number of lines : 10
# Displaying the last 10 lines of demo5.txt :-
# Q
# R
# S
# T
# U
# V
# W
# X
# Y
# Z