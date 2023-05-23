# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 8 : Write a menu driven shell script to find area of rectangle, triangle, and circle

while true
do
    echo ""
    echo "(1) Calculate area of Rectangle"
    echo "(2) Calculate area of Triangle"
    echo "(3) Calculate area of Circle"
    echo "(4) Exit"
    echo -n "Enter Choice : "
    read choice

    case $choice in
        1)  echo -n "Enter the length of rectangle : "
            read length
            echo -n "Enter the breadth of rectangle : "
            read breadth
            area=$(echo "$length * $breadth" | bc)
            echo "Area of rectangle is : $area"
            ;;
        2)  echo -n "Enter the base of triangle : "
            read base
            echo -n "Enter the height of triangle : "
            read height
            area=$(echo "scale=2; 0.5 * $base * $height" | bc)
            echo "Area of triangle is : $area"
            ;;
        3)  echo -n "Enter the radius of circle : "
            read radius
            area=$(echo "scale=2; 3.141 * $radius * $radius" | bc)
            echo "Area of circle is : $area"
            ;;
        4)  echo "Exit"
            exit 0
            ;;
        *)  echo "Invalid Choice!"
            ;;
    esac
done

# ****************************************************************************************************************************************
# Output:-

# (1) Calculate area of Rectangle
# (2) Calculate area of Triangle
# (3) Calculate area of Circle
# (4) Exit
# Enter Choice : 1
# Enter the length of rectangle : 5
# Enter the breadth of rectangle : 3
# Area of rectangle is : 15

# (1) Calculate area of Rectangle
# (2) Calculate area of Triangle
# (3) Calculate area of Circle
# (4) Exit
# Enter Choice : 2
# Enter the base of triangle : 5
# Enter the height of triangle : 3
# Area of triangle is : 7.5

# (1) Calculate area of Rectangle
# (2) Calculate area of Triangle
# (3) Calculate area of Circle
# (4) Exit
# Enter Choice : 3
# Enter the radius of circle : 10
# Area of circle is : 314.100

# (1) Calculate area of Rectangle
# (2) Calculate area of Triangle
# (3) Calculate area of Circle
# (4) Exit
# Enter Choice : 4
# Exit