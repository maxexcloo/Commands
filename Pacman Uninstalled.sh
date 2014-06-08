echo -n "" > listun.txt
while read i; do
	pacman -Qq $i
	if [ $? != 0 ]; then
		echo $i >> listun.txt
	fi
done < list.txt
