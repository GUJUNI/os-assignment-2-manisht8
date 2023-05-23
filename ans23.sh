# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 23 : The script displays a list of all files in the current directory to which you have read, write and execute permissions

files=$(ls -l)
echo "Files in the current directory which have read, write and execute permissions :-"
for file in $files
do
    if [ -f "$file" ] && [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; 
    then
        echo "$file"
    fi
done

# ****************************************************************************************************************************************
# Output:-

# Files in the current directory which have read, write and execute permissions :-
# ans3.sh
# ans4.sh
# ans5.sh
# ans6.sh
# ans8.sh