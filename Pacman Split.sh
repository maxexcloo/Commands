echo -n "" > listaur.txt
echo -n "" > listrepo.txt
while read i; do
	pacman -Sddp $i
	if [ $? != 0 ]; then
		echo $i >> listaur.txt
	else
		echo $i >> listrepo.txt
	fi
done < list.txt
