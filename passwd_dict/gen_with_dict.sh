
for each in $(cat a ); 
do 
	for each2 in $(cat b); 
		do 
		echo $each$each2; 
		echo $each2$each; 
	done; 
done 
