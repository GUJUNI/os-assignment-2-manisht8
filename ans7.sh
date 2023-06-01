# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 7 : Write a script to reverse a six digit number

read -p "Enter a six-digit number: " num

if [ ${#num} -ne 6 ]; then
  echo "Error: Please enter a six-digit number."
else
  reversed_num=$(echo $num | rev)
  echo "The reversed number is: $reversed_num"
fi

# ****************************************************************************************************************************************
# Output:-

# Enter a six-digit number: 123456
# The reversed number is: 654321