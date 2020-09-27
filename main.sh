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
echo -n "Your choice (1-${#categories[@]}) : "
read selection
echo ""

selected_category=${categories[$selection]}

commands=($(ls $INSPECTOR_HOME/commands/$selected_category))
for i in ${!commands[@]}
do
 echo "$i. ${commands[$i]} "
done
echo -n "Your choice (1-${#commands[@]}) : "
read selection
echo ""

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


echo -n "Parameters : "
read params
echo " " 
echo "press enter to execute this command :   \"$selected_command $params\" "
echo " " 
read
$selected_command $params


