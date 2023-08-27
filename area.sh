#!/bin/bash
clear
echo "$val"
echo "Select option to find Area"
echo "1 Square"
echo "2 Triangle"
echo "3 Circle"
echo "0 Exit"
echo "Enter your choice here"
read choice
case "$choice" in
        1) echo "Enter size of square"
                read size
                sarea=$`expr $size \* $size`
                echo "Area of Square = $sarea"
        ;;

        2) echo "Enter Base of Triangle:"
                read base
                echo "Enter Height of Triangle"
                read height
                tarea=`echo "scale=2;0.5 * $base * $height"|bc`
                echo "Area of Triangle = $tarea"
        ;;

        3) echo "Enter Radius og Circle"
                read radius
                echo "Area of Circle = "
                echo "3.14 * $radius * $radius"|bc

        ;;
        0) echo "Exit"
        ;;
        *) echo "Invalid Choice......"
        ;;
esac
