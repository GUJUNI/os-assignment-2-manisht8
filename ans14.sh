# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 14 : Write a script to display the student marksheet in appropriate format.

echo "*****************"
echo "Student Marksheet"
echo "*****************"
echo "Enter Operating System Marks:"
read os
echo "Enter Web Design Marks:"
read ml
echo "Enter Java Marks:"
read java
echo "*****************"
total=`expr $os + $ml + $java`
echo "Total Marks:"$total
percentage=`expr $total / 3`
echo "Percentage:" $percentage %
if [ $percentage -ge 60 ]
then
echo "Class: First Class Distinction"
elif [ $percentage -ge 50 ]
then
echo "Class: First class"
elif [ $percentage -ge 40 ]
then
echo "Class: Second class"
else
echo "Class: Fail"
fi
echo "*****************"

# ****************************************************************************************************************************************
# Output:-

# *****************
# Student Marksheet
# *****************
# Enter Operating System Marks:
# 70
# Enter Web Design Marks:
# 80
# Enter Java Marks:
# 75
# *****************
# Total Marks:225
# Percentage: 75 %
# Class: First Class Distinction
# *****************