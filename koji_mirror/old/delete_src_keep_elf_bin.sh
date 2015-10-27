
bash wget.sh 
ls
for each in $(dir -1 |grep rpm$)
do
	q_rpm2targz.sh $each
done


for each in $(dir -1 |grep tar.gz)
do
tar -xzvf  $each
done



find -type d -name src
find -type d -name src |xargs rm -rf 
cp 		-a -r   usr/lib/debug/usr/ . 
rm 	-rf usr/lib/debug/


mv *.tar.gz *.rpm ../

find -type f 
find -type f  
for each in $(find -type f  ); do file $each >> file_type.sh ; done

#cat file_type.sh 
#cat file_type.sh  |grep ELF 
#cat file_type.sh  |grep ELF   -v
#cat file_type.sh  |grep ELF   -v | awk -F: '{print $1}' 
cat file_type.sh  |grep ELF   -v | awk -F: '{print $1}'  |xargs rm -f 

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

