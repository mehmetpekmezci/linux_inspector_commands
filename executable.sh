echo " " 
echo "#### " 
echo "#### EXECUTABLE:" 
echo "#### " 
echo " " 
echo "1. strace "
echo "2. ltrace "
echo "3. sysdig"
echo "4. ps"
echo "5. top"
echo "6. lttng"
echo "7. stap"
echo -n "Your choice (1-7) : "
read selection
echo ""


case $selection in

  1)
    echo -n "Executable :"
    read executable
    echo " " 
    echo "press enter to execute this command :   \"strace $executable\" "
    echo " " 
    read
    strace $executable
    exit
    ;;

  2)
     echo "2"
    ;;

  *)
    echo "all other"
    ;;
esac


strace
ltrace
sysdig
ps
top
lttng
stap


