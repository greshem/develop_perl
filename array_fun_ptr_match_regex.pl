
#["2007/12/18", "34.6400", "35.0000", "34.2100", "34.7400"],
our @res=(
['unsigned\s+char\s+(\S+)[\d+]\s*;', 		\&print_name],
['char\s+(\S+)\[\d+\]\s*;', 		\&print_string_name],
['char\s+(\S+)\s*;', 		\&print_name],
['int\s+(\S+)\s*;', 		\&print_name],
['short\s+(\S+)\s*;', 		\&print_name],
['unsinged\s+int\s+(\S+)\s*;', 		\&print_name],
['unsinged\s+short\s+(\S+)\s*;', 		\&print_name],

#stat
['uid_t\s+(\S+)\s*;', 		\&print_name],
['gid_t\s+(\S+)\s*;', 		\&print_name],
['dev_t\s+(\S+)\s*;', 		\&print_name],
['off_t\s+(\S+)\s*;', 		\&print_name],
['time_t\s+(\S+)\s*;', 		\&print_name],
['ino_t\s+(\S+)\s*;', 		\&print_name],
['blksize_t\s+(\S+)\s*;', 		\&print_name],
['blkcnt_t\s+(\S+)\s*;', 		\&print_name],
# # typedef unsigned char u8;	/* Unsigned types of an exact size */
# # typedef unsigned short u16;
# # typedef unsigned int u32;
# # typedef unsigned long long u64;
# # typedef unsigned long long int_64;
['__u8\s+(\S+)\[\d+\]\s*;', 		\&print_string_name],
['u8\s+(\S+)\[\d+\]\s*;', 		\&print_string_name],
['u8\s+(\S+)\s*;', 		\&print_name],
['u16\s+(\S+)\s*;', 		\&print_name],
['u32\s+(\S+)\s*;', 		\&print_name],
['u64\s+(\S+)\s*;', 		\&print_name],
['s64\s+(\S+)\s*;', 		\&print_name],

# typedef u16 le16;
# typedef u32 le32;
# typedef u64 le64;
['le16\s+(\S+)\s*;', 		\&print_name],
['le32\s+(\S+)\s*;', 		\&print_name],
['le64\s+(\S+)\s*;', 		\&print_name],

);

 for $each (@res)
 {
	$pattern=@{$each}[0];
	$function_ptr= @{$each}[1];

 }
#
