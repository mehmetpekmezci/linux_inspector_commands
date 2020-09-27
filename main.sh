
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

echo "1. Executable Inspection"
echo "2. Network Inspection"
echo "3. RAM  Inspection"
echo "4. CPU  Inspection"
echo "5. IO/File/Disk  Inspection"
echo "6. Java  Inspection"
echo "7. Device  Inspection"
echo -n "Your choice (1-7) : "
read selection
echo ""

case $selection in

  1)
    ./executable.sh 
    exit
    ;;

  2)
    ./network.sh 
    exit
    ;;

  3)
    ./ram.sh 
    exit
    ;;

  4)
    ./cpu.sh 
    exit
    ;;

  5)
    ./io_file_disk.sh 
    exit
    ;;

  6)
    ./java.sh 
    exit
    ;;

  7)
    ./devices.sh 
    exit
    ;;


  *)
    echo "Please select 1-7 "
    ;;
esac


