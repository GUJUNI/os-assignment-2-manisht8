# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 5 : Script to display pattern
# |_
# | |_
# | | |_
# | | | |_
# | | | | |_

for ((i=1; i<=5; i++))
do
    for ((j=1; j<=i; j++))
    do
        if [ $j -eq $i ]; then
            echo -n "|_"
        else
            echo -n "| "
        fi
    done
    echo ""
done
echo ""

# ****************************************************************************************************************************************
# Output:-

# |_
# | |_
# | | |_
# | | | |_
# | | | | |_