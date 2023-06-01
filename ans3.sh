# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 3 : Write a shell script to generate Fibonacci numbers from 1 to n

echo -n "Enter value upto which you want to print fibonacci series : "
read n
a=0
b=1
sum=0
if [ $n -ge 1 ];
then
    echo "Fibonacci series from 1 to $n :-"
    while [ $b -le $n ]
    do
       echo -n $b " "
       sum=`expr $a + $b`
       a=$b
       b=$sum
    done
else
    echo "Invalid Input!"
fi
echo ""

# ****************************************************************************************************************************************
# Output:-

# Enter value upto which you want to print fibonacci series : 100
# Fibonacci series from 1 to 100 :-
# 1  1  2  3  5  8  13  21  34  55  89