lspci
lsmod
nvidia-smi
dmesg
lsof
/proc/softirqs
/proc/devices

echo "1. Process Inspection"
echo "2. Network Inspection"
echo "3. RAM  Inspection"
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


