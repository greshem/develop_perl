for (qw(richdgram_t richmsg_t richrw_t richparam_t richseek_t richverify_t richenclockinfo_t richsyncserver_t richmountdisk_t rich_attack_buffer_t rich_buffer_size_t richclninfo_t  ))
{
	$to=$_;
	$to=~s/^rich/hangyue_/g;
	print  "sed 's/$_/$to/g'  *.cpp *.h  -i\n";
}
