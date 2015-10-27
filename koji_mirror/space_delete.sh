find . |grep " " | while read line
do
	echo rm -rf "$line"
	rm -rf "$line"
done
