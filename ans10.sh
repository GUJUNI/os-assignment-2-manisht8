# Name - Manish Tulsiani
# R.No - 37
# Course - MCA-2
# Subject - Operating Systems
# Assignment - Practical Assignment-1
# ****************************************************************************************************************************************
# Question 10 : Write a menu driven shell script for storing employee information (like add, modify, delete, display info)

file="emp_details.txt"
if [ -f "$file" ];
then
    > $file
fi

add_employee() 
{
    echo -n "Enter employee ID : "
    read id
    echo -n "Enter employee name : "
    read name
    echo -n "Enter employee designation : "
    read designation
    echo "$id|$name|$designation" >> "$file"
    echo "Employee details added successfully!"
}

modify_employee() 
{
    echo -n "Enter ID of employee to modify : "
    read id
    found=false
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id == "$id" ]]; 
        then
            found=true
            break
        fi
    done < "$file"
    if [[ $found == false ]]; 
    then
        echo "Employee with ID $id not found!"
        return
    fi
    echo -n "Enter new employee name : "
    read name
    echo -n "Enter new employee designation : "
    read designation
    temp_file="temp_emp_details.txt"
    touch "$temp_file"
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id == "$id" ]]; 
        then
            echo "$id|$name|$designation" >> "$temp_file"
        else
            echo "$emp_id|$emp_name|$emp_desig" >> "$temp_file"
        fi
    done < "$file"
    mv "$temp_file" "$file"
    echo "Employee details modified successfully!"
}

delete_employee() 
{
    echo -n "Enter ID of employee to delete : "
    read id
    found=false
    temp_file="temp_emp_details.txt"
    touch "$temp_file"
    while IFS="|" read -r emp_id emp_name emp_desig; 
    do
        if [[ $emp_id != "$id" ]]; 
        then
            echo "$emp_id|$emp_name|$emp_desig" >> "$temp_file"
        else
            found=true
        fi
    done < "$file"
    if [[ $found == false ]]; 
    then
        echo "Employee with ID $id not found!"
        return
    fi
    mv "$temp_file" "$file"
    echo "Employee details deleted successfully!"
}

display_employees() 
{
    echo ""
    while IFS="|" read -r emp_id emp_name emp_desig; do
        echo "ID: $emp_id"
        echo "Name: $emp_name"
        echo "Designation: $emp_desig"
        echo "***********************"
    done < "$file"
}

while true; 
do
    echo ""
    echo "(1) Add Employee"
    echo "(2) Modify Employee"
    echo "(3) Delete Employee"
    echo "(4) Display Employees"
    echo "(5) Exit"
    echo -n "Enter Choice : "
    read choice
    
    case $choice in
        1)  add_employee 
            ;;
        2)  modify_employee 
            ;;
        3)  delete_employee 
            ;;
        4)  display_employees 
            ;;
        5)  echo "Exit"
            exit 0
            ;;
        *)  echo "Invalid Option!"
            ;;
    esac
    echo ""
done

# ****************************************************************************************************************************************
# Output:-

# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 1
# Enter employee ID : 101
# Enter employee name : manish
# Enter employee designation : ceo
# Employee details added successfully!


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 1
# Enter employee ID : 102
# Enter employee name : rohit
# Enter employee designation : manager
# Employee details added successfully!


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 1
# Enter employee ID : 103
# Enter employee name : ruchit
# Enter employee designation : clerk
# Employee details added successfully!


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 4

# ID: 101
# Name: manish
# Designation: ceo
# ***********************
# ID: 102
# Name: rohit
# Designation: manager
# ***********************
# ID: 103
# Name: ruchit
# Designation: clerk
# ***********************


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 2
# Enter ID of employee to modify : 103
# Enter new employee name : yash
# Enter new employee designation : accountant
# Employee details modified successfully!


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 4

# ID: 101
# Name: manish
# Designation: ceo
# ***********************
# ID: 102
# Name: rohit
# Designation: manager
# ***********************
# ID: 103
# Name: yash
# Designation: accountant
# ***********************


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 3
# Enter ID of employee to delete : 102
# Employee details deleted successfully!


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 4

# ID: 101
# Name: manish
# Designation: ceo
# ***********************
# ID: 103
# Name: yash
# Designation: accountant
# ***********************


# (1) Add Employee
# (2) Modify Employee
# (3) Delete Employee
# (4) Display Employees
# (5) Exit
# Enter Choice : 5
# Exit