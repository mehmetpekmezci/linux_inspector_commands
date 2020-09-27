#!/bin/bash

if [ -z "INSPECTOR_HOME" ]
then
    grep INSPECTOR_HOME release >/dev/null
    if [ $? = 0 ]
    then
	   . ./release
    else
           echo "Please source the release file of this inspector"
    fi	   
fi

echo " "
echo "#### "
echo "#### INSPECTORS :"
echo "#### "
echo " "


categories=($(ls $INSPECTOR_HOME/commands))
for i in ${!categories[@]}
do
 echo "$i. ${categories[$i]} "
done
i=$((i+1))
echo "$i. Quit "
echo -n "Your choice (0-${#categories[@]}) : "
read selection
echo ""
if [ $selection == $i ]
then
 exit
fi

selected_category=${categories[$selection]}

commands=($(ls $INSPECTOR_HOME/commands/$selected_category))
for i in ${!commands[@]}
do
 echo "$i. ${commands[$i]} "
done
i=$((i+1))
echo "$i. Quit "
echo -n "Your choice (0-${#commands[@]}) : "
read selection
echo ""
if [ $selection == $i ]
then
 exit
fi


selected_command=${commands[$selection]}

echo "########################################################################### "
echo ""
echo ""
echo "$selected_command Usage Examples : "
echo ""
cat $INSPECTOR_HOME/commands/$selected_category/$selected_command
echo ""
echo ""
echo "########################################################################### "
echo ""
echo ""


test_file=$(echo $selected_command| sed -e 's/_/\//g')
if [ -f /$test_file ]
then
        echo -n "Pipe : "
        read pipe
        echo " " 
	if [ "$pipe" != "" ]
	then
            echo "press enter to execute this command :   \"cat /$test_file | $pipe\" "
            echo " " 
            read
	    cat /$test_file | $pipe
	else
            echo "press enter to execute this command :   \"cat /$test_file \" "
            echo " " 
            read
	    cat /$test_file 
	fi

else
        echo -n "Parameters : "
        read params
        echo " " 
        echo "press enter to execute this command :   \"$selected_command $params\" "
        echo " " 
        read
        $selected_command $params
fi


