# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 24 : The script receives any number of filenames as arguments. It should check whether every argument supplied is a file or directory. If it is a directory, it should be reported. If it is a filename then name of the file as well as the number of lines present in it should be reported

items=$@
echo ""
for item in $items
do
    if [ -d "$item" ]; then
        echo "$item is a directory"
        echo ""
    elif [ -f "$item" ]; then
        echo "$item is a file"
        line_count=$(wc -l < "$item")
        echo "Number of lines in $item : $line_count"
        echo ""
    else
        echo "$item is not a valid file or directory"
        echo ""
    fi
done

# ****************************************************************************************************************************************
# Output:-

# > sh ans24.sh demodirectory/ ans20.sh

# demodirectory/ is a directory

# ans20.sh is a file
# Number of lines in ans20.sh : 98