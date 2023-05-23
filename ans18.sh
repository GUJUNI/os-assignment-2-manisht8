# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 18 : If cost price and selling price of an item are entered through the keyboard, write a program to determine whether the seller has made profit or loss. Also determine how much profit/loss is made.

echo -n "Enter cost price of product : "
read cost_price
echo -n "Enter selling price of product : "
read selling_price

if [ "$selling_price" -gt "$cost_price" ]; 
then
    profit=$(($selling_price - $cost_price))
    echo "Profit made : $profit"
elif [ "$selling_price" -lt "$cost_price" ]; 
then
    loss=$(($cost_price - $selling_price))
    echo "Loss made : $loss"
else
    echo "Seller has neither made a profit nor incurred a loss"
fi

# ****************************************************************************************************************************************
# Output:-

# Enter cost price of product : 100
# Enter selling price of product : 120
# Profit made : 20

# Enter cost price of product : 100
# Enter selling price of product : 80
# Loss made : 20