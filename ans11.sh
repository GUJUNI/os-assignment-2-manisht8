# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 11 : Write a script to print content of the file if file exits otherwise print appropriate message.

filename="demo.txt"
if [ -e "$filename" ]; then
    cat "$filename"
else
    echo "$filename does not exist."
fi

# ****************************************************************************************************************************************
# Output:-

# Hello
# Good Afternoon