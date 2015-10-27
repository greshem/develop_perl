
#bash wget.sh 
ls
for each in $(dir -1 |grep rpm$)
do
	q_rpm2targz.sh $each
done


for each in $(dir -1 |grep tar.gz)
do
tar -xzvf  $each
done

find  usr/share/ -type l |xargs rm -f 

find -type d -name src
find -type d -name src |xargs rm -rf 

if [ -d   usr/lib/debug/usr/ ];then
	cp 		-a -r   usr/lib/debug/usr/ . 
fi
if [ -d   usr/lib/debug/bin ];then
	cp 		-a -r   usr/lib/debug/bin . 
fi
if [ -d  usr/lib/debug/sbin  ];then
	cp 		-a -r   usr/lib/debug/sbin .
fi
if [ -d   usr/lib/debug/ ];then
	rm 	-rf usr/lib/debug/
fi


mv *.tar.gz *.rpm ../

#find -type f 
#find -type f  
#for each in $(find -type f  ); do file $each >> file_type.sh ; done

find -type f | while read line;
do 
file "$line" >> file_type.sh ; 
done


#cat file_type.sh 
#cat file_type.sh  |grep ELF 
#cat file_type.sh  |grep ELF   -v
#cat file_type.sh  |grep ELF   -v | awk -F: '{print $1}' 
#cat file_type.sh  |grep ELF   -v | awk -F: '{print $1}'  |xargs rm -f 

cat file_type.sh  |grep ELF   -v | awk -F: '{print $1}'  |while read line;
do
	echo rm -f $line
	rm -f $line 
done

find -type  d -empty 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  |xargs rm -rf 
find -type  d -empty  

