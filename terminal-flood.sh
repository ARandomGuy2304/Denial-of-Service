#!/bin/bash
read -p "Do you really want to run this script (it will execute a real DoS attack, which can crash your system)? (y/n) " ans
if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
sleep 1
else
echo "Operation canceled."
exit
fi
ulimit -n unlimited
ulimit -u unlimited
ulimit -s unlimited
while true; do
gnome-terminal -- bash -c "while true; do gnome-terminal; done"
done
