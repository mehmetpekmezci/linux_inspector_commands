strace
ltrace
sysdig
ps
top
lttng
stap



echo "1. Strace "
echo "2. Ltrace "
echo "3. "
echo "4. CPU  Inspection"
echo "5. IO  Inspection"
echo "6. Java  Inspection"

read selection

case $selection in

  1)
    echo "1"
    ;;

  2)
     echo "2"
    ;;

  *)
    echo "all other"
    ;;
esac


