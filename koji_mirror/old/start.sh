for each in $(seq_ascii.pl a z); do yum_search.pl  $each   |awk -F\|  '{print $2}'   >> all_url; echo $each; done
sort all_url 
wc all_url 
sort all_url |uniq -c > uniq_c 
vim uniq_c 
wc uniq_c 
sort uniq_c -c 
sort -c  uniq_c 
vim uniq_c 
sort -c  uniq_c 
vim uniq_c 
sort -n uniq_c  
sort -n uniq_c   > uniq_c_2
awk '{print $2}' uniq_c_2  
awk '{print $2}' uniq_c_2   > uniq_c_3
vim uniq_c_3 
cat uniq_c_3 
vim uniq_c_3 
vim uniq_c_c
vim uniq_c_3 
grep noarch uniq_c_3 
grep noarch uniq_c_3  |wc
grep noarch uniq_c_3  -v |wc
grep noarch uniq_c_3  -v >  uniq_c_elf
vim uniq_c_elf 
mkdir koji
cd koji/
mv ../uniq_c* .
ls
cat uniq_c_elf 

