# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 6 : Write a menu driven shell script for remove, rename, copy and modify a file

while true
do
    echo ""
    echo "(1) Remove file"
    echo "(2) Rename file"
    echo "(3) Copy file"
    echo "(4) Modify file"
    echo "(5) Exit"
    echo -n "Enter Choice : "
    read choice

    case $choice in
        1)  echo -n "Enter name of file to remove : "
            read filename
            if [ -f "$filename" ]; then
                rm $filename
                echo "File $filename has been removed successfully"
            else
                echo "File $filename not found!"
            fi
            ;;
        2)  echo -n "Enter the name of file to rename : "
            read oldfilename
            if [ -f "$oldfilename" ]; then
                echo -n "Enter new name for file : "
                read newfilename
                mv $oldfilename $newfilename
                echo "File $oldfilename has been renamed to $newfilename successfully"
            else
                echo "File $oldfilename not found!"
            fi
            ;;
        3)  echo -n "Enter name of file to copy : "
            read filename
            if [ -f "$filename" ]; then
                echo -n "Enter destination file name : "
                read destfilename
                cp $filename $destfilename
                echo "File $filename has been copied to $destfilename successfully"
            else
                echo "File $filename not found!"
            fi
            ;;
        4)  echo -n "Enter name of file to modify : "
            read filename
            if [ -f "$filename" ]; then
                vi $filename
                echo "File $filename has been modified successfully"
            else
                echo "File $filename not found!"
            fi
            ;;
        5)  echo "Exit"
            exit 0
            ;;
        *)  echo "Invalid Choice!"
            ;;
    esac
done

# ****************************************************************************************************************************************
# Output:-

# (1) Remove file
# (2) Rename file
# (3) Copy file
# (4) Modify file
# (5) Exit
# Enter Choice : 4
# Enter name of file to modify : demo1.txt
# File demo1.txt has been modified successfully

# (1) Remove file
# (2) Rename file
# (3) Copy file
# (4) Modify file
# (5) Exit
# Enter Choice : 2
# Enter the name of file to rename : demo1.txt
# Enter new name for file : demo.txt
# File demo1.txt has been renamed to demo.txt successfully

# (1) Remove file
# (2) Rename file
# (3) Copy file
# (4) Modify file
# (5) Exit
# Enter Choice : 3
# Enter name of file to copy : demo.txt
# Enter destination file name : demo2.txt
# File demo.txt has been copied to demo2.txt successfully

# (1) Remove file
# (2) Rename file
# (3) Copy file
# (4) Modify file
# (5) Exit
# Enter Choice : 1
# Enter name of file to remove : demo.txt
# File demo.txt has been removed successfully

# (1) Remove file
# (2) Rename file
# (3) Copy file
# (4) Modify file
# (5) Exit
# Enter Choice : 5
# Exit