
for each in $(find $(pwd) -type d -maxdepth 6  -mindepth 6)
do
cd $each
if [ ! -f wget.sh ];then
	echo $each 
	bash  /root/koji/gen_url.sh  > wget.sh
fi
done
