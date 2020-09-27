
echo "1. /proc/cpuinfo"
echo "2. Network Inspection"
echo "3. RAM  Inspection"
echo "4. CPU  Inspection"
echo "5. IO  Inspection"
echo "6. Java  Inspection"

read selection

case $selection in

  1)
    echo "cat /proc/cpuinfo"
    cat /proc/cpuinfo
    exit
    ;;

  2)
     echo "2"
    ;;

  *)
    echo "all other"
    ;;
esac


perf
mpstat
sar
top
dstat
vmstat
rdmsr
tiptop
pidstat
numastat
