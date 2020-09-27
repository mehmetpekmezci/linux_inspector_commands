function inspector_run(){
    readable=""
    if [ "$1" != "" ]
    then
      echo -n "$1 : "
      read readable
      echo " " 
    fi
    echo "press enter to execute this command :   \"$2 $readable\" "
    echo " " 
    read
    $2 $readable
}


function menu(){

    command_list=$1
    readparam_list=$2
    echo " " 
    echo "#### " 
    echo "#### EXECUTABLE:" 
    echo "#### " 
    echo " " 
    for i in ${!command_list[@]};
    do
     echo "$i. ${command_list[$i]} "
    done
    echo -n "Your choice (1-${#command_list[@]}) : "
    read selection
    echo ""
  
    inspector_run ${readparam_list[$selection]} ${command_list[$selection]}  

}
