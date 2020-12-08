#! /bin/bash
#cars.sh
#Kylie Ilonummi

echo -n "Type the number 1 to enter a car, Type the number 2 to display the list of cars, Type the number 3 to quit and exit the program: "
read -r CARS

while echo "$CARS" | grep -E -v "3"> /dev/null 2>&1
do
	case "$CARS" in
		"1") echo -n "Year: "
			 read -r YEAR
		echo -n "Make: "
			 read -r MAKE
		echo -n "Model: "
			 read -r MODEL
		echo -n "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
		"2") sort My_old_cars;;
		"*") echo "Enter 1, 2, or 3";;
	esac
	read -r CARS
done
echo "Goodbye"
