# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 13 : Write a script to check given number is prime or not.

echo "Enter a number:"
read num

if [ $num -lt 2 ]; then
    echo "$num is not a prime number"
    exit 0
fi

for (( i=2; i<=$num/2; i++ ))
do
    if [ $((num%i)) -eq 0 ]; then
        echo "$num is not a prime number"
        exit 0
    fi
done

echo "$num is a prime number"

# ****************************************************************************************************************************************
# Output:-

# Enter a number:
# 10
# 10 is not a prime number

# Enter a number:
# 3
# 3 is a prime number 