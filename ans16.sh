# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 16 : The distance between two cities is input through the keyboard. (in km). Write a program to convert this distance into meters ,feet, inches and centimeters and display the results.

echo "Enter the distance between two cities in kilometers:"
read distance_km

# Convert the distance to meters, feet, inches, and centimeters
distance_m=$(echo "$distance_km * 1000" | bc)
distance_ft=$(echo "$distance_km * 3280.84" | bc)
distance_in=$(echo "$distance_ft * 12" | bc)
distance_cm=$(echo "$distance_m * 100" | bc)

# Display the results to the user
echo "Distance in meters: $distance_m"
echo "Distance in feet: $distance_ft"
echo "Distance in inches: $distance_in"
echo "Distance in centimeters: $distance_cm"

# ****************************************************************************************************************************************
# Output:-

# Enter the distance between two cities in kilometers:
# 800
# Distance in meters: 800000
# Distance in feet: 2624672.00
# Distance in inches: 31496064.00
# Distance in centimeters: 80000000
