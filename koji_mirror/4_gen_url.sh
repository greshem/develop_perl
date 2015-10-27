#echo $(pwd) 

base=$(echo $(pwd)  |sed 's|/root/koji/||g'  )

for each in $(/usr/bin/urlveiw.pl  index.html|grep rpm$)
do
	echo wget http://$base/$each
done
