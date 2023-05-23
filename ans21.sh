# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 21 : Two numbers are entered through the keyboard, find the power, one number raised to another

echo -n "Enter the base : "
read base
echo -n "Enter the exponent : "
read power
result=$(echo "$base ^ $power" | bc)
echo "$base raised to the power of $power = $result"

# ****************************************************************************************************************************************
# Output:-

# Enter the base : 5
# Enter the exponent : 3
# 5 raised to the power of 3 = 125