#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
set follow-fork-mode child 
#set follow-fork-mode parent
set print pretty 

define cls
shell clear
end
document cls
clear the screen with shell command
end

define  sfc
set follow-fork-mode child 
end 

document sfc
clear the screen with shell command
end


define  sfp
set follow-fork-mode parent
end 

document sfp
clear the screen with shell command
end


define bpl
info breakpoints
end
document bpl
List breakpoints
end

define argv
show args
end
document argv
print programs argv
end

define stack
info stack
end
document stack
Print call stack
end

define frame_qzj
info frame
end

# 其他线程锁定掉
set scheduler-locking on

