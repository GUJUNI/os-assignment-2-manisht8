# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 2 : Write a menu driven shell script for basic arithmetic operations.

ch=0
echo -e "Enter value for a : \c"
read a
echo -e "Enter value for b : \c"
read b

while [ $ch -lt 6 ];
do
    echo -e "\n\n Press 1 For Addition(+) "
    echo " Press 2 For Substraction(-) "
    echo " Press 3 For Division(/) "
    echo " Press 4 For Multiplication(*) "
    echo " Press 5 For Modulo(%) "
    echo " (-_-) Press 6 For Exit (-_-) "
    echo "-------------------------------"
    echo -e "Enter Value for ch : \c"
    read ch
    case "$ch" in
    1)
        echo "The sum is : $(expr $a + $b) "
        ;;
    2)
        echo "The Substraction is : $(expr $a - $b) "
        ;;
    3)
        echo "The Division is : $(expr $a / $b) "
        ;;
    4)

        echo "The Multiplication is : $(expr $a \* $b)"
        ;;
    5)
        echo "The Modulo is : $(expr $a % $b) "
        ;;
    6)
        echo "Exit"
        ;;
    esac
done

# ****************************************************************************************************************************************
# Output:-

# Enter value for a : 5
# Enter value for b : 4

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 1
# The sum is : 9

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 2
# The Substraction is : 1

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 3
# The Division is : 1

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 4
# The Multiplication is : 20

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 5
# The Modulo is : 1

#  Press 1 For Addition(+)
#  Press 2 For Substraction(-)
#  Press 3 For Division(/)
#  Press 4 For Multiplication(*)
#  Press 5 For Modulo(%)
#  (-_-) Press 6 For Exit (-_-)
# -------------------------------
# Enter Value for ch : 6

# Exit
