#! /bin/bash
# cars.sh
# Irene Liu

INPUT="start"

shopt -s nocasematch
while [ $INPUT != "quit" ]
do
	echo "-----Main Menu-----"
	echo "1. (Add) a car"
	echo "2. (List) the cars"
	echo "3. (Quit)"
	echo "Please enter a command:"
	read INPUT

	case "$INPUT" in
	"Add" | 1) 
		echo "Year of car: "
		read YEAR
		echo "Make of car: "
		read MAKE
		echo "Model of car: "
		read MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars
		;;
	"List" | 2)
		sort -n My_old_cars | tr ":" " "
		;;
	"Quit" | 3)
		echo "Goodbye"
		break
		;;
	*)
		echo "Invalid choice. You must enter one of the commands in the parentheses."
		;;
	esac
done
