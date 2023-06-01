# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 17 : Script will receive the filename or filename with its full path, script should obtain information about this file as given by "ls -l" and display it in proper format
# e.g., Filename: , File access permissions: , Number of links: , Owner of the file: , Group to which belongs: , Size of file: , File modification date: , File modification time:

echo -n "Enter filename or full path : "
read filename

file_info=$(ls -l "$filename")

file_name=$(echo "$file_info" | cut -d ' ' -f 9)
permissions=$(echo "$file_info" | cut -d ' ' -f 1)
num_links=$(echo "$file_info" | cut -d ' ' -f 2)
owner=$(echo "$file_info" | cut -d ' ' -f 3)
group=$(echo "$file_info" | cut -d ' ' -f 4)
file_size=$(echo "$file_info" | cut -d ' ' -f 5)
mod_date=$(echo "$file_info" | cut -d ' ' -f 6,7)
mod_time=$(echo "$file_info" | cut -d ' ' -f 8)
formatted_date=$(date -d "$mod_date" +"%d-%m-%Y")

echo "Filename: $file_name"
echo "File access permissions: $permissions"
echo "Number of links: $num_links"
echo "Owner of the file: $owner"
echo "Group to which it belongs: $group"
echo "Size of file: $file_size bytes"
echo "File modification date: $formatted_date" 
echo "File modification time: $mod_time"

# ****************************************************************************************************************************************
# Output:-

# Enter filename or full path : demo2.txt
# Filename: demo2.txt
# File access permissions: -rw-r--r--
# Number of links: 1
# Owner of the file: manis
# Group to which it belongs: 197609
# Size of file: 13 bytes
# File modification date: 22-05-2023
# File modification time: 15:04