# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 12 : Write a script to check the string entered by user is palindrome or not.

echo "Enter a String"
read input
reverse=""
len=${#input}
for (( i=$len-1; i>=0; i-- ))
do
        reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse ]
then
    echo "$input is palindrome"
else
    echo "$input is not palindrome"
fi

# ****************************************************************************************************************************************
# Output:-

# Enter a String
# madam
# madam is palindrome