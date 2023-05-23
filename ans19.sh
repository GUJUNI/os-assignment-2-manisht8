# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 19 : The script receives two file names as arguments, the script must check whether the files are same or not, if they are similar then delete the second file.

if [ $# -ne 2 ]; 
then
    echo "Please provide two file names as arguments!"
    exit 1
fi
if cmp -s "$1" "$2"; then
    echo "File $1 and File $2 are same."
    echo "Deleting $2"
    rm "$2"
else
    echo "File $1 and File $2 are different. No action taken."
fi

# ****************************************************************************************************************************************
# Output:-

# > cat demo3.txt                                                                                   
# this is demo3                                                                                            
# > cat demo3_copy.txt                                                                              
# this is demo3                                                                                            
# > cat demo4.txt                                                                                   
# this is demo4                                                                                                                            
# > sh ans19.sh                                                                                     
# Please provide two file names as arguments!                                                              
# > sh ans19.sh demo3.txt demo4.txt                                                                 
# File demo3.txt and File demo4.txt are different. No action taken.                                        
# > sh ans19.sh demo3.txt demo3_copy.txt                                                            
# File demo3.txt and File demo3_copy.txt are same.                                                         
# Deleting demo3_copy.txt                                                                                  
# > ls                                                                                              
# ans19.sh  demo3.txt  demo4.txt