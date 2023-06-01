# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 9 : Write a script to print message like good morning, good afternoon, ....etc according to the current time

hour=`date +%H`
if [ $hour -lt 12 ] # if hour is less than 12
then
echo "GOOD MORNING WORLD"
elif [ $hour -le 16 ] # if hour is less than equal to 16
then
echo "GOOD AFTERNOON WORLD"
elif [ $hour -le 20 ] # if hour is less than equal to 20
then
echo "GOOD EVENING WORLD"
else
echo "GOOD NIGHT WORLD"
fi

# ****************************************************************************************************************************************
# Output:-

# GOOD AFTERNOON WORLD