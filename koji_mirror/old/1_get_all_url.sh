
#for each in $(cat uniq_c_elf|tac)
for each in $(cat uniq_c_elf|rl.pl)
do
 echo wget --mirror -np $each 
 wget --mirror -np $each 
done
