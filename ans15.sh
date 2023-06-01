# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 15 : Basic salary of a person is input through the keyboard. His dearness allowance is 40% of basic salary and house rent is 20% of basic salary. Write a program to calculate the gross pay

echo -n "Enter basic salary : " 
read basic_salary
dearness_allowance=$(echo "scale=2; $basic_salary * 0.4" | bc)
house_rent=$(echo "scale=2; $basic_salary * 0.2" | bc)
gross_pay=$(echo "scale=2; $basic_salary + $dearness_allowance + $house_rent" | bc)
echo "Basic Salary : $basic_salary"
echo "Dearness Allowance : $dearness_allowance"
echo "House Rent : $house_rent"
echo "Gross Pay : $gross_pay"

# ****************************************************************************************************************************************
# Output:-

# Enter basic salary : 10000
# Basic Salary : 10000
# Dearness Allowance : 4000.0
# House Rent : 2000.0
# Gross Pay : 16000.0