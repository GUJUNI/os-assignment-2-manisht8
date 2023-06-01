# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 4 : Write a shell script to generate prime number from 1 to n, where n any positive integer number by user

echo -n "Enter value up to which you want to generate prime numbers : "
read n
if [ $n -ge 1 ]; then
    echo "Prime numbers from 1 to $n are :- "
    i=2
    while [ $i -le $n ]; do
        count=0
        j=1
        while [ $j -le $i ]; do
            if [ `expr $i % $j` -eq 0 ]; then
                count=$(expr $count + 1)
            fi
            j=$(expr $j + 1)
        done
        if [ $count -eq 2 ]; then
            echo -n "$i "
        fi
        i=$(expr $i + 1)
    done
else
    echo "Invalid Input!"
fi
echo ""

# ****************************************************************************************************************************************
# Output:-

# Enter value up to which you want to generate prime numbers : 30
# Prime numbers from 1 to 30 are :-
# 2 3 5 7 11 13 17 19 23 29