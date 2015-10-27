#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__

#rhel5_8
Command class: aliases

ni -- Step one instruction
rc -- Continue program being debugged but run it in reverse
rni -- Step backward one instruction
rsi -- Step backward exactly one instruction
si -- Step one instruction exactly
stepping -- Specify single-stepping behavior at a tracepoint
tp -- Set a tracepoint at specified line or function
tty -- Set terminal for future runs of program being debugged
where -- Print backtrace of all stack frames
ws -- Specify single-stepping behavior at a tracepoint

Command class: breakpoints

awatch -- Set a watchpoint for an expression
break -- Set breakpoint at specified line or function
catch -- Set catchpoints to catch events
catch assert -- Catch failed Ada assertions
catch catch -- Catch an exception
catch exception -- Catch Ada exceptions
catch exec -- Catch calls to exec
catch fork -- Catch calls to fork
catch syscall -- Catch system calls by their names and/or numbers
catch throw -- Catch an exception
catch vfork -- Catch calls to vfork
clear -- Clear breakpoint at specified line or function
commands -- Set commands to be executed when a breakpoint is hit
condition -- Specify breakpoint number N to break only if COND is true
delete -- Delete some breakpoints or auto-display expressions
delete breakpoints -- Delete some breakpoints or auto-display expressions
delete checkpoint -- Delete a checkpoint (experimental)
delete display -- Cancel some expressions to be displayed when program stops
delete mem -- Delete memory region
delete tracepoints -- Delete specified tracepoints
disable -- Disable some breakpoints
disable breakpoints -- Disable some breakpoints
disable display -- Disable some expressions to be displayed when program stops
disable mem -- Disable memory region
disable tracepoints -- Disable specified tracepoints
enable -- Enable some breakpoints
enable delete -- Enable breakpoints and delete when hit
enable display -- Enable some expressions to be displayed when program stops
enable mem -- Enable memory region
enable once -- Enable breakpoints for one hit
enable tracepoints -- Enable specified tracepoints
hbreak -- Set a hardware assisted  breakpoint
ignore -- Set ignore-count of breakpoint number N to COUNT
rbreak -- Set a breakpoint for all functions matching REGEXP
rwatch -- Set a read watchpoint for an expression
tbreak -- Set a temporary breakpoint
tcatch -- Set temporary catchpoints to catch events
tcatch assert -- Catch failed Ada assertions
tcatch catch -- Catch an exception
tcatch exception -- Catch Ada exceptions
tcatch exec -- Catch calls to exec
tcatch fork -- Catch calls to fork
tcatch syscall -- Catch system calls by their names and/or numbers
tcatch throw -- Catch an exception
tcatch vfork -- Catch calls to vfork
thbreak -- Set a temporary hardware assisted breakpoint
trace -- Set a tracepoint at specified line or function
watch -- Set a watchpoint for an expression

Command class: data

append -- Append target code/data to a local file
append binary -- Append target code/data to a raw binary file
append binary memory -- Append contents of memory to a raw binary file
append binary value -- Append the value of an expression to a raw binary file
append memory -- Append contents of memory to a raw binary file
append value -- Append the value of an expression to a raw binary file
call -- Call a function in the program
disassemble -- Disassemble a specified section of memory
display -- Print value of expression EXP each time the program stops
dump -- Dump target code/data to a local file
dump binary -- Write target code/data to a raw binary file
dump binary memory -- Write contents of memory to a raw binary file
dump binary value -- Write the value of an expression to a raw binary file
dump ihex -- Write target code/data to an intel hex file
dump ihex memory -- Write contents of memory to an ihex file
dump ihex value -- Write the value of an expression to an ihex file
dump memory -- Write contents of memory to a raw binary file
dump srec -- Write target code/data to an srec file
dump srec memory -- Write contents of memory to an srec file
dump srec value -- Write the value of an expression to an srec file
dump tekhex -- Write target code/data to a tekhex file
dump tekhex memory -- Write contents of memory to a tekhex file
dump tekhex value -- Write the value of an expression to a tekhex file
dump value -- Write the value of an expression to a raw binary file
find -- Search memory for a sequence of bytes
init-if-undefined -- Initialize a convenience variable if necessary
inspect -- Same as "print" command
mem -- Define attributes for memory region or reset memory region handling to
output -- Like "print" but don't put in value history and don't print newline
print -- Print value of expression EXP
print-object -- Ask an Objective-C object to print itself
printf -- Printf "printf format string"
ptype -- Print definition of type TYPE
restore -- Restore the contents of FILE to target memory
set -- Evaluate expression EXP and assign result to variable VAR
set annotate -- Set annotation_level
set architecture -- Set architecture of target
set args -- Set argument list to give program being debugged when it is started
set auto-solib-add -- Set autoloading of shared library symbols
set backtrace -- Set backtrace specific variables
set backtrace limit -- Set an upper bound on the number of backtrace levels
set backtrace past-entry -- Set whether backtraces should continue past the entry point of a program
set backtrace past-main -- Set whether backtraces should continue past "main"
set backtrace past-zero-pc -- Set whether backtraces should continue past a zero pc value
set breakpoint -- Breakpoint specific settings
set breakpoint always-inserted -- Set mode for inserting breakpoints
set breakpoint auto-hw -- Set automatic usage of hardware breakpoints
set breakpoint pending -- Set debugger's behavior regarding pending breakpoints
set build-id-core-loads -- Set whether CORE-FILE loads the build-id associated files automatically
set build-id-verbose --  Set debugging level of the build-id locator
set can-use-hw-watchpoints -- Set debugger's willingness to use watchpoint hardware
set case-sensitive -- Set case sensitivity in name search
set charset -- Set the host and target character sets
set check -- Set the status of the type/range checker
set check range -- Set range checking
set check type -- Set type checking
set coerce-float-to-double -- Set coercion of floats to doubles when calling functions
set complaints -- Set max number of complaints about incorrect symbols
set confirm -- Set whether to confirm potentially dangerous operations
set cp-abi -- Set the ABI used for inspecting C++ objects
set data-directory -- Set GDB's data directory
set debug -- Generic command for setting gdb debugging flags
set debug arch -- Set architecture debugging
set debug displaced -- Set displaced stepping debugging
set debug dwarf2-die -- Set debugging of the dwarf2 DIE reader
set debug expression -- Set expression debugging
set debug frame -- Set frame debugging
set debug infrun -- Set inferior debugging
set debug lin-lwp -- Set debugging of GNU/Linux lwp module
set debug lin-lwp-async -- Set debugging of GNU/Linux async lwp module
set debug observer -- Set observer debugging
set debug overload -- Set debugging of C++ overloading
set debug record -- Set debugging of record/replay feature
set debug remote -- Set debugging of remote protocol
set debug serial -- Set serial debugging
set debug target -- Set target debugging
set debug timestamp -- Set timestamping of debugging messages
set debug xml -- Set XML parser debugging
set debug-file-directory -- Set the directories where separate debug symbols are searched for
set debugvarobj -- Set varobj debugging
set demangle-style -- Set the current C++ demangling style
set detach-on-fork -- Set whether gdb will detach the child of a fork
set disable-randomization -- Set disabling of debuggee's virtual address space randomization
set disassemble-next-line -- Set whether to disassemble next source line or insn when execution stops
set disassembly-flavor -- Set the disassembly flavor
set displaced-stepping -- Set debugger's willingness to use displaced stepping
set editing -- Set editing of command lines as they are typed
set endian -- Set endianness of target
set environment -- Set environment variable value to give the program
set exec-direction -- Set direction of execution
set exec-done-display -- Set notification of completion for asynchronous execution commands
set exec-wrapper -- Set a wrapper for running programs
set extension-language -- Set mapping between filename extension and source language
set follow-fork-mode -- Set debugger response to a program call of fork or vfork
set gnutarget -- Set the current BFD target
set height -- Set number of lines gdb thinks are in a page
set history -- Generic command for setting command history parameters
set history expansion -- Set history expansion on command input
set history filename -- Set the filename in which to record the command history
set history save -- Set saving of the history record on exit
set history size -- Set the size of the command history
set host-charset -- Set the host character set
set inferior-tty -- Set terminal for future runs of program being debugged
set input-radix -- Set default input radix for entering numbers
set interactive-mode -- Set whether GDB should run in interactive mode or not
set language -- Set the current source language
set libthread-db-search-path -- Set search path for libthread_db
set listsize -- Set number of source lines gdb will list by default
set logging -- Set logging options
set logging file -- Set the current logfile
set logging off -- Disable logging
set logging on -- Enable logging
set logging overwrite -- Set whether logging overwrites or appends to the log file
set logging redirect -- Set the logging output mode
set max-user-call-depth -- Set the max call depth for user-defined commands
set mem -- Memory regions settings
set mem inaccessible-by-default -- Set handling of unknown memory regions
set multiple-symbols -- Set the debugger behavior when more than one symbol are possible matches
set non-stop -- Set whether gdb controls the inferior in non-stop mode
set opaque-type-resolution -- Set resolution of opaque struct/class/union types (if set before loading symbols)
set osabi -- Set OS ABI of target
set output-radix -- Set default output radix for printing of values
set overload-resolution -- Set overload resolution in evaluating C++ functions
set pagination -- Set state of pagination
set print -- Generic command for setting how things print
set print address -- Set printing of addresses
set print array -- Set prettyprinting of arrays
set print array-indexes -- Set printing of array indexes
set print asm-demangle -- Set demangling of C++/ObjC names in disassembly listings
set print demangle -- Set demangling of encoded C++/ObjC names when displaying symbols
set print elements -- Set limit on string chars or array elements to print
set print frame-arguments -- Set printing of non-scalar frame arguments
set print inferior-events -- Set printing of inferior events (e
set print max-symbolic-offset -- Set the largest offset that will be printed in <symbol+1234> form
set print null-stop -- Set printing of char arrays to stop at first null char
set print object -- Set printing of object's derived type based on vtable info
set print pascal_static-members -- Set printing of pascal static members
set print pretty -- Set prettyprinting of structures
set print repeats -- Set threshold for repeated print elements
set print sevenbit-strings -- Set printing of 8-bit characters in strings as \nnn
set print static-members -- Set printing of C++ static members
set print symbol-filename -- Set printing of source filename and line number with <symbol>
set print thread-events -- Set printing of thread events (such as thread start and exit)
set print union -- Set printing of unions interior to structures
set print vtbl -- Set printing of C++ virtual function tables
set prompt -- Set gdb's prompt
set radix -- Set default input and output number radices
set record -- Set record options
set record insn-number-max -- Set record/replay buffer limit
set record stop-at-limit -- Set whether record/replay stops when record/replay buffer becomes full
set remote -- Remote protocol specific variables
set remote P-packet -- Set use of remote protocol `P' (set-register) packet
set remote X-packet -- Set use of remote protocol `X' (binary-download) packet
set remote Z-packet -- Set use of remote protocol `Z' packets
set remote access-watchpoint-packet -- Set use of remote protocol `Z4' (access-watchpoint) packet
set remote attach-packet -- Set use of remote protocol `vAttach' (attach) packet
set remote binary-download-packet -- Set use of remote protocol `X' (binary-download) packet
set remote conditional-tracepoints-packet -- Set use of remote protocol `ConditionalTracepoints' (conditional-tracepoints) packet
set remote exec-file -- Set the remote pathname for "run"
set remote fetch-register-packet -- Set use of remote protocol `p' (fetch-register) packet
set remote get-thread-local-storage-address-packet -- Set use of remote protocol `qGetTLSAddr' (get-thread-local-storage-address) packet
set remote hardware-breakpoint-limit -- Set the maximum number of target hardware breakpoints
set remote hardware-breakpoint-packet -- Set use of remote protocol `Z1' (hardware-breakpoint) packet
set remote hardware-watchpoint-limit -- Set the maximum number of target hardware watchpoints
set remote hostio-close-packet -- Set use of remote protocol `vFile:close' (hostio-close) packet
set remote hostio-open-packet -- Set use of remote protocol `vFile:open' (hostio-open) packet
set remote hostio-pread-packet -- Set use of remote protocol `vFile:pread' (hostio-pread) packet
set remote hostio-pwrite-packet -- Set use of remote protocol `vFile:pwrite' (hostio-pwrite) packet
set remote hostio-unlink-packet -- Set use of remote protocol `vFile:unlink' (hostio-unlink) packet
set remote kill-packet -- Set use of remote protocol `vKill' (kill) packet
set remote library-info-packet -- Set use of remote protocol `qXfer:libraries:read' (library-info) packet
set remote memory-map-packet -- Set use of remote protocol `qXfer:memory-map:read' (memory-map) packet
set remote memory-read-packet-size -- Set the maximum number of bytes per memory-read packet
set remote memory-write-packet-size -- Set the maximum number of bytes per memory-write packet
set remote noack-packet -- Set use of remote protocol `QStartNoAckMode' (noack) packet
set remote osdata-packet -- Set use of remote protocol `qXfer:osdata:read' (osdata) packet
set remote p-packet -- Set use of remote protocol `p' (fetch-register) packet
set remote pass-signals-packet -- Set use of remote protocol `QPassSignals' (pass-signals) packet
set remote query-attached-packet -- Set use of remote protocol `qAttached' (query-attached) packet
set remote read-aux-vector-packet -- Set use of remote protocol `qXfer:auxv:read' (read-aux-vector) packet
set remote read-siginfo-object-packet -- Set use of remote protocol `qXfer:siginfo:read' (read-siginfo-object) packet
set remote read-spu-object-packet -- Set use of remote protocol `qXfer:spu:read' (read-spu-object) packet
set remote read-watchpoint-packet -- Set use of remote protocol `Z3' (read-watchpoint) packet
set remote reverse-continue-packet -- Set use of remote protocol `bc' (reverse-continue) packet
set remote reverse-step-packet -- Set use of remote protocol `bs' (reverse-step) packet
set remote run-packet -- Set use of remote protocol `vRun' (run) packet
set remote search-memory-packet -- Set use of remote protocol `qSearch:memory' (search-memory) packet
set remote set-register-packet -- Set use of remote protocol `P' (set-register) packet
set remote software-breakpoint-packet -- Set use of remote protocol `Z0' (software-breakpoint) packet
set remote supported-packets-packet -- Set use of remote protocol `qSupported' (supported-packets) packet
set remote symbol-lookup-packet -- Set use of remote protocol `qSymbol' (symbol-lookup) packet
set remote system-call-allowed -- Set if the host system(3) call is allowed for the target
set remote target-features-packet -- Set use of remote protocol `qXfer:features:read' (target-features) packet
set remote verbose-resume-packet -- Set use of remote protocol `vCont' (verbose-resume) packet
set remote write-siginfo-object-packet -- Set use of remote protocol `qXfer:siginfo:write' (write-siginfo-object) packet
set remote write-spu-object-packet -- Set use of remote protocol `qXfer:spu:write' (write-spu-object) packet
set remote write-watchpoint-packet -- Set use of remote protocol `Z2' (write-watchpoint) packet
set remoteaddresssize -- Set the maximum size of the address (in bits) in a memory packet
set remotebaud -- Set baud rate for remote serial I/O
set remotebreak -- Set whether to send break if interrupted
set remotecache -- Set cache use for remote targets
set remoteflow -- Set use of hardware flow control for remote serial I/O
set remotelogbase -- Set numerical base for remote session logging
set remotelogfile -- Set filename for remote session recording
set remotetimeout -- Set timeout limit to wait for target to respond
set remotewritesize -- Set the maximum number of bytes per memory write packet (deprecated)
set schedule-multiple -- Set mode for resuming threads of all processes
set scheduler-locking -- Set mode for locking scheduler during execution
set serial -- Set default serial/parallel port configuration
set solib-absolute-prefix -- Set an alternate system root
set solib-search-path -- Set the search path for loading non-absolute shared library symbol files
set stack-cache -- Set cache use for stack access
set step-mode -- Set mode of the step operation
set stop-on-solib-events -- Set stopping for shared library events
set struct-convention -- Set the convention for returning small structs
set substitute-path -- Usage: set substitute-path FROM TO
set symbol-reloading -- Set dynamic symbol table reloading multiple times in one run
set sysroot -- Set an alternate system root
set target-async -- Set whether gdb controls the inferior in asynchronous mode
set target-charset -- Set the target character set
set target-wide-charset -- Set the target wide character set
set tcp -- TCP protocol specific variables
set tcp auto-retry -- Set auto-retry on socket connect
set tcp connect-timeout -- Set timeout limit for socket connection
set tdesc -- Set target description specific variables
set tdesc filename -- Set the file to read for an XML target description
set trace-commands -- Set tracing of GDB CLI commands
set trust-readonly-sections -- Set mode for reading from readonly sections
set tui -- TUI configuration variables
set tui active-border-mode -- Set the attribute mode to use for the active TUI window border
set tui border-kind -- Set the kind of border for TUI windows
set tui border-mode -- Set the attribute mode to use for the TUI window borders
set unwind-on-terminating-exception -- Set unwinding of stack if std::terminate is called while in call dummy
set unwindonsignal -- Set unwinding of stack if a signal is received while in a call dummy
set variable -- Evaluate expression EXP and assign result to variable VAR
set verbose -- Set verbosity
set watchdog -- Set watchdog timer
set width -- Set number of characters gdb thinks are in a line
set write -- Set writing into executable and core files
undisplay -- Cancel some expressions to be displayed when program stops
whatis -- Print data type of expression EXP
x -- Examine memory: x/FMT ADDRESS

Command class: files

add-symbol-file -- Load symbols from FILE
add-symbol-file-from-memory -- Load the symbols out of memory from a dynamically loaded object file
cd -- Set working directory to DIR for debugger and program being debugged
core-file -- Use FILE as core dump for examining memory and registers
directory -- Add directory DIR to beginning of search path for source files
edit -- Edit specified file or function
exec-file -- Use FILE as program for getting contents of pure memory
file -- Use FILE as program to be debugged
forward-search -- Search for regular expression (see regex(3)) from last line listed
generate-core-file -- Save a core file with the current state of the debugged process
list -- List specified function or line
load -- Dynamically load FILE into the running program
nosharedlibrary -- Unload all shared object library symbols
path -- Add directory DIR(s) to beginning of search path for object files
pwd -- Print working directory
remote -- Manipulate files on the remote system
remote delete -- Delete a remote file
remote get -- Copy a remote file to the local system
remote put -- Copy a local file to the remote system
reverse-search -- Search backward for regular expression (see regex(3)) from last line listed
search -- Search for regular expression (see regex(3)) from last line listed
section -- Change the base address of section SECTION of the exec file to ADDR
sharedlibrary -- Load shared object library symbols for files matching REGEXP
symbol-file -- Load symbol table from executable file FILE

Command class: internals

flushregs -- Force gdb to flush its register cache (maintainer command)
maintenance -- Commands for use by GDB maintainers
maintenance agent -- Translate an expression into remote agent bytecode for tracing
maintenance agent-eval -- Translate an expression into remote agent bytecode for evaluation
maintenance check-symtabs -- Check consistency of psymtabs and symtabs
maintenance cplus -- C++ maintenance commands
maintenance cplus first_component -- Print the first class/namespace component of NAME
maintenance cplus namespace -- Print the list of possible C++ namespaces
maintenance demangle -- Demangle a C++/ObjC mangled name
maintenance deprecate -- Deprecate a command
maintenance dump-me -- Get fatal error; make debugger dump its core
maintenance info -- Commands for showing internal info about the program being debugged
maintenance info breakpoints -- Status of all breakpoints
maintenance info psymtabs -- List the partial symbol tables for all object files
maintenance info sections -- List the BFD sections of the exec and core files
maintenance info symtabs -- List the full symbol tables for all object files
maintenance internal-error -- Give GDB an internal error
maintenance internal-warning -- Give GDB an internal warning
maintenance packet -- Send an arbitrary packet to a remote target
maintenance print -- Maintenance command for printing GDB internal state
maintenance print architecture -- Print the internal architecture configuration
maintenance print c-tdesc -- Print the current target description as a C source file
maintenance print cooked-registers -- Print the internal register configuration including cooked values
maintenance print dummy-frames -- Print the contents of the internal dummy-frame stack
maintenance print msymbols -- Print dump of current minimal symbol definitions
maintenance print objfiles -- Print dump of current object file definitions
maintenance print psymbols -- Print dump of current partial symbol definitions
maintenance print raw-registers -- Print the internal register configuration including raw values
maintenance print reggroups -- Print the internal register group names
maintenance print register-groups -- Print the internal register configuration including each register's group
maintenance print registers -- Print the internal register configuration
maintenance print statistics -- Print statistics about internal gdb state
maintenance print symbols -- Print dump of current symbol definitions
maintenance print target-stack -- Print the name of each layer of the internal target stack
maintenance print type -- Print a type chain for a given symbol
maintenance set -- Set GDB internal variables used by the GDB maintainer
maintenance set dwarf2 -- Set DWARF 2 specific variables
maintenance set dwarf2 max-cache-age -- Set the upper bound on the age of cached dwarf2 compilation units
maintenance set gdb_datadir -- Set GDB's datadir path
maintenance set internal-error -- Configure what GDB does when internal-error is detected
maintenance set internal-error corefile -- Set whether GDB should create a core file of GDB when internal-error is detected
maintenance set internal-error quit -- Set whether GDB should quit when an internal-error is detected
maintenance set internal-warning -- Configure what GDB does when internal-warning is detected
maintenance set internal-warning corefile -- Set whether GDB should create a core file of GDB when internal-warning is detected
maintenance set internal-warning quit -- Set whether GDB should quit when an internal-warning is detected
maintenance set profile -- Set internal profiling
maintenance set python -- Prefix command for python maintenance settings
maintenance set python auto-load -- Enable or disable auto-loading of Python code when an object is opened
maintenance set python print-stack -- Enable or disable printing of Python stack dump on error
maintenance set show-debug-regs -- Set whether to show variables that mirror the x86 debug registers
maintenance show -- Show GDB internal variables used by the GDB maintainer
maintenance show dwarf2 -- Show DWARF 2 specific variables
maintenance show dwarf2 max-cache-age -- Show the upper bound on the age of cached dwarf2 compilation units
maintenance show gdb_datadir -- Show GDB's datadir path
maintenance show internal-error -- Show what GDB does when internal-error is detected
maintenance show internal-error corefile -- Show whether GDB will create a core file of GDB when internal-error is detected
maintenance show internal-error quit -- Show whether GDB will quit when an internal-error is detected
maintenance show internal-warning -- Show what GDB does when internal-warning is detected
maintenance show internal-warning corefile -- Show whether GDB will create a core file of GDB when internal-warning is detected
maintenance show internal-warning quit -- Show whether GDB will quit when an internal-warning is detected
maintenance show profile -- Show internal profiling
maintenance show python -- Prefix command for python maintenance settings
maintenance show python auto-load -- Show whether Python code will be auto-loaded when an object is opened
maintenance show python print-stack -- Show whether Python stack will be printed on error
maintenance show show-debug-regs -- Show whether to show variables that mirror the x86 debug registers
maintenance space -- Set the display of space usage
maintenance time -- Set the display of time usage
maintenance translate-address -- Translate a section name and address to a symbol
maintenance undeprecate -- Undeprecate a command

Command class: obscure

checkpoint -- Fork a duplicate process (experimental)
compare-sections -- Compare section data on target to the exec file
complete -- List the completions for the rest of the line as a command
monitor -- Send a command to the remote monitor (remote targets only)
python -- Evaluate a Python command
record -- Abbreviated form of "target record" command
record delete -- Delete the rest of execution log and start recording it anew
record stop -- Stop the record/replay target
restart -- Restart <n>: restore program context from a checkpoint
stop -- There is no `stop' command

Command class: running

advance -- Continue the program up to the given location (same form as args for break command)
attach -- Attach to a process or file outside of GDB
continue -- Continue program being debugged
detach -- Detach a process or file previously attached
detach checkpoint -- Detach from a checkpoint (experimental)
detach inferior -- Detach from inferior ID
disconnect -- Disconnect from a target
finish -- Execute until selected stack frame returns
handle -- Specify how to handle a signal
inferior -- Use this command to switch between inferiors
interrupt -- Interrupt the execution of the debugged program
jump -- Continue program being debugged at specified line or address
kill -- Kill execution of program being debugged
kill inferior -- Kill inferior ID
next -- Step program
nexti -- Step one instruction
reverse-continue -- Continue program being debugged but run it in reverse
reverse-finish -- Execute backward until just before selected stack frame is called
reverse-next -- Step program backward
reverse-nexti -- Step backward one instruction
reverse-step -- Step program backward until it reaches the beginning of another source line
reverse-stepi -- Step backward exactly one instruction
run -- Start debugged program
signal -- Continue program giving it signal specified by the argument
start -- Run the debugged program until the beginning of the main procedure
step -- Step program until it reaches a different source line
stepi -- Step one instruction exactly
target -- Connect to a target machine or process
target child -- Unix child process (started by the "run" command)
target core -- Use a core file as a target
target exec -- Use an executable file as a target
target extended-remote -- Use a remote computer via a serial line
target multi-thread -- Threads and pthreads support
target record -- Log program while executing and replay execution from log
target remote -- Use a remote computer via a serial line
task -- Use this command to switch between Ada tasks
thread -- Use this command to switch between threads
thread apply -- Apply a command to a list of threads
thread apply all -- Apply a command to all threads
until -- Execute until the program reaches a source line greater than the current

Command class: stack

backtrace -- Print backtrace of all stack frames
bt -- Print backtrace of all stack frames
down -- Select and print stack frame called by this one
frame -- Select and print a stack frame
return -- Make selected stack frame return to its caller
select-frame -- Select a stack frame without printing anything
up -- Select and print stack frame that called this one

Command class: status

info -- Generic command for showing things about the program being debugged
info address -- Describe where symbol SYM is stored
info all-registers -- List of all registers and their contents
info args -- Argument variables of current stack frame
info auxv -- Display the inferior's auxiliary vector
info breakpoints -- Status of user-settable breakpoints
info catch -- Exceptions that can be caught in the current stack frame
info checkpoints -- IDs of currently known checkpoints
info classes -- All Objective-C classes
info common -- Print out the values contained in a Fortran COMMON block
info copying -- Conditions for redistributing copies of GDB
info dcache -- Print information on the dcache performance
info display -- Expressions to display when program stops
info extensions -- All filename extensions associated with a source language
info files -- Names of targets and files being debugged
info float -- Print the status of the floating point unit
info frame -- All about selected stack frame
info functions -- All function names
info handle -- What debugger does when program gets various signals
info inferiors -- IDs of currently known inferiors
info line -- Core addresses of the code for a source line
info locals -- Local variables of current stack frame
info macro -- Show the definition of MACRO
info mem -- Memory region attributes
info os -- Show OS data ARG
info probes -- Show available static probes
info proc -- Show /proc process information about any running process
info program -- Execution status of the program
info record -- Info record options
info record insn-number -- Show the current number of instructions in the record/replay buffer
info registers -- List of integer registers and their contents
info scope -- List the variables local to a scope
info selectors -- All Objective-C selectors
info set -- Show all GDB settings
info sharedlibrary -- Status of loaded shared object libraries
info signals -- What debugger does when program gets various signals
info source -- Information about the current source file
info sources -- Source files in the program
info stack -- Backtrace of the stack
info symbol -- Describe what symbol is at location ADDR
info target -- Names of targets and files being debugged
info tasks -- Provide information about all known Ada tasks
info terminal -- Print inferior's saved terminal status
info threads -- IDs of currently known threads
info tracepoints -- Status of tracepoints
info types -- All type names
info variables -- All global and static variable names
info vector -- Print the status of the vector unit
info warranty -- Various kinds of warranty you do not have
info watchpoints -- Synonym for ``info breakpoints''
info win -- List of all displayed windows
macro -- Prefix for commands dealing with C preprocessor macros
macro define -- Define a new C/C++ preprocessor macro
macro expand -- Fully expand any C/C++ preprocessor macro invocations in EXPRESSION
macro expand-once -- Expand C/C++ preprocessor macro invocations appearing directly in EXPRESSION
macro list -- List all the macros defined using the `macro define' command
macro undef -- Remove the definition of the C/C++ preprocessor macro with the given name
show -- Generic command for showing things about the debugger
show annotate -- Show annotation_level
show architecture -- Show architecture of target
show args -- Show argument list to give program being debugged when it is started
show auto-solib-add -- Show autoloading of shared library symbols
show backtrace -- Show backtrace specific variables
show backtrace limit -- Show the upper bound on the number of backtrace levels
show backtrace past-entry -- Show whether backtraces should continue past the entry point of a program
show backtrace past-main -- Show whether backtraces should continue past "main"
show backtrace past-zero-pc -- Show whether backtraces should continue past a zero pc value
show breakpoint -- Breakpoint specific settings
show breakpoint always-inserted -- Show mode for inserting breakpoints
show breakpoint auto-hw -- Show automatic usage of hardware breakpoints
show breakpoint pending -- Show debugger's behavior regarding pending breakpoints
show build-id-core-loads -- Show whether CORE-FILE loads the build-id associated files automatically
show build-id-verbose --  Show debugging level of the build-id locator
show can-use-hw-watchpoints -- Show debugger's willingness to use watchpoint hardware
show case-sensitive -- Show case sensitivity in name search
show charset -- Show the host and target character sets
show check -- Show the status of the type/range checker
show check range -- Show range checking
show check type -- Show type checking
show coerce-float-to-double -- Show coercion of floats to doubles when calling functions
show commands -- Show the history of commands you typed
show complaints -- Show max number of complaints about incorrect symbols
show confirm -- Show whether to confirm potentially dangerous operations
show convenience -- Debugger convenience ("$foo") variables
show copying -- Conditions for redistributing copies of GDB
show cp-abi -- Show the ABI used for inspecting C++ objects
show data-directory -- Show GDB's data directory
show debug -- Generic command for showing gdb debugging flags
show debug arch -- Show architecture debugging
show debug displaced -- Show displaced stepping debugging
show debug dwarf2-die -- Show debugging of the dwarf2 DIE reader
show debug expression -- Show expression debugging
show debug frame -- Show frame debugging
show debug infrun -- Show inferior debugging
show debug lin-lwp -- Show debugging of GNU/Linux lwp module
show debug lin-lwp-async -- Show debugging of GNU/Linux async lwp module
show debug observer -- Show observer debugging
show debug overload -- Show debugging of C++ overloading
show debug record -- Show debugging of record/replay feature
show debug remote -- Show debugging of remote protocol
show debug serial -- Show serial debugging
show debug target -- Show target debugging
show debug timestamp -- Show timestamping of debugging messages
show debug xml -- Show XML parser debugging
show debug-file-directory -- Show the directories where separate debug symbols are searched for
show debugvarobj -- Show varobj debugging
show demangle-style -- Show the current C++ demangling style
show detach-on-fork -- Show whether gdb will detach the child of a fork
show directories -- Current search path for finding source files
show disable-randomization -- Show disabling of debuggee's virtual address space randomization
show disassemble-next-line -- Show whether to disassemble next source line or insn when execution stops
show disassembly-flavor -- Show the disassembly flavor
show displaced-stepping -- Show debugger's willingness to use displaced stepping
show editing -- Show editing of command lines as they are typed
show endian -- Show endianness of target
show environment -- The environment to give the program
show exec-direction -- Show direction of execution (forward/reverse)
show exec-done-display -- Show notification of completion for asynchronous execution commands
show exec-wrapper -- Show the wrapper for running programs
show extension-language -- Show mapping between filename extension and source language
show follow-fork-mode -- Show debugger response to a program call of fork or vfork
show gnutarget -- Show the current BFD target
show height -- Show number of lines gdb thinks are in a page
show history -- Generic command for showing command history parameters
show history expansion -- Show history expansion on command input
show history filename -- Show the filename in which to record the command history
show history save -- Show saving of the history record on exit
show history size -- Show the size of the command history
show host-charset -- Show the host character set
show inferior-tty -- Show terminal for future runs of program being debugged
show input-radix -- Show default input radix for entering numbers
show interactive-mode -- Show whether GDB runs in interactive mode
show language -- Show the current source language
show libthread-db-search-path -- Show the current search path or libthread_db
show listsize -- Show number of source lines gdb will list by default
show logging -- Show logging options
show logging file -- Show the current logfile
show logging overwrite -- Show whether logging overwrites or appends to the log file
show logging redirect -- Show the logging output mode
show max-user-call-depth -- Show the max call depth for user-defined commands
show mem -- Memory regions settings
show mem  inaccessible-by-default -- Show handling of unknown memory regions
show multiple-symbols -- Show how the debugger handles ambiguities in expressions
show non-stop -- Show whether gdb controls the inferior in non-stop mode
show opaque-type-resolution -- Show resolution of opaque struct/class/union types (if set before loading symbols)
show osabi -- Show OS ABI of target
show output-radix -- Show default output radix for printing of values
show overload-resolution -- Show overload resolution in evaluating C++ functions
show pagination -- Show state of pagination
show paths -- Current search path for finding object files
show print -- Generic command for showing print settings
show print address -- Show printing of addresses
show print array -- Show prettyprinting of arrays
show print array-indexes -- Show printing of array indexes
show print asm-demangle -- Show demangling of C++/ObjC names in disassembly listings
show print demangle -- Show demangling of encoded C++/ObjC names when displaying symbols
show print elements -- Show limit on string chars or array elements to print
show print frame-arguments -- Show printing of non-scalar frame arguments
show print inferior-events -- Show printing of inferior events (e
show print max-symbolic-offset -- Show the largest offset that will be printed in <symbol+1234> form
show print null-stop -- Show printing of char arrays to stop at first null char
show print object -- Show printing of object's derived type based on vtable info
show print pascal_static-members -- Show printing of pascal static members
show print pretty -- Show prettyprinting of structures
show print repeats -- Show threshold for repeated print elements
show print sevenbit-strings -- Show printing of 8-bit characters in strings as \nnn
show print static-members -- Show printing of C++ static members
show print symbol-filename -- Show printing of source filename and line number with <symbol>
show print thread-events -- Show printing of thread events (such as thread start and exit)
show print union -- Show printing of unions interior to structures
show print vtbl -- Show printing of C++ virtual function tables
show prompt -- Show gdb's prompt
show radix -- Show the default input and output number radices
show record -- Show record options
show record insn-number-max -- Show record/replay buffer limit
show record stop-at-limit -- Show whether record/replay stops when record/replay buffer becomes full
show remote -- Remote protocol specific variables
show remote P-packet -- Show current use of remote protocol `P' (set-register) packet
show remote X-packet -- Show current use of remote protocol `X' (binary-download) packet
show remote Z-packet -- Show use of remote protocol `Z' packets 
show remote access-watchpoint-packet -- Show current use of remote protocol `Z4' (access-watchpoint) packet
show remote attach-packet -- Show current use of remote protocol `vAttach' (attach) packet
show remote binary-download-packet -- Show current use of remote protocol `X' (binary-download) packet
show remote conditional-tracepoints-packet -- Show current use of remote protocol `ConditionalTracepoints' (conditional-tracepoints) packet
show remote exec-file -- Show the remote pathname for "run"
show remote fetch-register-packet -- Show current use of remote protocol `p' (fetch-register) packet
show remote get-thread-local-storage-address-packet -- Show current use of remote protocol `qGetTLSAddr' (get-thread-local-storage-address) packet
show remote hardware-breakpoint-limit -- Show the maximum number of target hardware breakpoints
show remote hardware-breakpoint-packet -- Show current use of remote protocol `Z1' (hardware-breakpoint) packet
show remote hardware-watchpoint-limit -- Show the maximum number of target hardware watchpoints
show remote hostio-close-packet -- Show current use of remote protocol `vFile:close' (hostio-close) packet
show remote hostio-open-packet -- Show current use of remote protocol `vFile:open' (hostio-open) packet
show remote hostio-pread-packet -- Show current use of remote protocol `vFile:pread' (hostio-pread) packet
show remote hostio-pwrite-packet -- Show current use of remote protocol `vFile:pwrite' (hostio-pwrite) packet
show remote hostio-unlink-packet -- Show current use of remote protocol `vFile:unlink' (hostio-unlink) packet
show remote kill-packet -- Show current use of remote protocol `vKill' (kill) packet
show remote library-info-packet -- Show current use of remote protocol `qXfer:libraries:read' (library-info) packet
show remote memory-map-packet -- Show current use of remote protocol `qXfer:memory-map:read' (memory-map) packet
show remote memory-read-packet-size -- Show the maximum number of bytes per memory-read packet
show remote memory-write-packet-size -- Show the maximum number of bytes per memory-write packet
show remote noack-packet -- Show current use of remote protocol `QStartNoAckMode' (noack) packet
show remote osdata-packet -- Show current use of remote protocol `qXfer:osdata:read' (osdata) packet
show remote p-packet -- Show current use of remote protocol `p' (fetch-register) packet
show remote pass-signals-packet -- Show current use of remote protocol `QPassSignals' (pass-signals) packet
show remote query-attached-packet -- Show current use of remote protocol `qAttached' (query-attached) packet
show remote read-aux-vector-packet -- Show current use of remote protocol `qXfer:auxv:read' (read-aux-vector) packet
show remote read-siginfo-object-packet -- Show current use of remote protocol `qXfer:siginfo:read' (read-siginfo-object) packet
show remote read-spu-object-packet -- Show current use of remote protocol `qXfer:spu:read' (read-spu-object) packet
show remote read-watchpoint-packet -- Show current use of remote protocol `Z3' (read-watchpoint) packet
show remote reverse-continue-packet -- Show current use of remote protocol `bc' (reverse-continue) packet
show remote reverse-step-packet -- Show current use of remote protocol `bs' (reverse-step) packet
show remote run-packet -- Show current use of remote protocol `vRun' (run) packet
show remote search-memory-packet -- Show current use of remote protocol `qSearch:memory' (search-memory) packet
show remote set-register-packet -- Show current use of remote protocol `P' (set-register) packet
show remote software-breakpoint-packet -- Show current use of remote protocol `Z0' (software-breakpoint) packet
show remote supported-packets-packet -- Show current use of remote protocol `qSupported' (supported-packets) packet
show remote symbol-lookup-packet -- Show current use of remote protocol `qSymbol' (symbol-lookup) packet
show remote system-call-allowed -- Show if the host system(3) call is allowed for the target
show remote target-features-packet -- Show current use of remote protocol `qXfer:features:read' (target-features) packet
show remote verbose-resume-packet -- Show current use of remote protocol `vCont' (verbose-resume) packet
show remote write-siginfo-object-packet -- Show current use of remote protocol `qXfer:siginfo:write' (write-siginfo-object) packet
show remote write-spu-object-packet -- Show current use of remote protocol `qXfer:spu:write' (write-spu-object) packet
show remote write-watchpoint-packet -- Show current use of remote protocol `Z2' (write-watchpoint) packet
show remoteaddresssize -- Show the maximum size of the address (in bits) in a memory packet
show remotebaud -- Show baud rate for remote serial I/O
show remotebreak -- Show whether to send break if interrupted
show remotecache -- Show cache use for remote targets
show remoteflow -- Show use of hardware flow control for remote serial I/O
show remotelogbase -- Show numerical base for remote session logging
show remotelogfile -- Show filename for remote session recording
show remotetimeout -- Show timeout limit to wait for target to respond
show remotewritesize -- Show the maximum number of bytes per memory write packet (deprecated)
show schedule-multiple -- Show mode for resuming threads of all processes
show scheduler-locking -- Show mode for locking scheduler during execution
show serial -- Show default serial/parallel port configuration
show solib-absolute-prefix -- Show the current system root
show solib-search-path -- Show the search path for loading non-absolute shared library symbol files
show stack-cache -- Show cache use for stack access
show step-mode -- Show mode of the step operation
show stop-on-solib-events -- Show stopping for shared library events
show struct-convention -- Show the convention for returning small structs
show substitute-path -- Usage: show substitute-path [FROM]
show symbol-reloading -- Show dynamic symbol table reloading multiple times in one run
show sysroot -- Show the current system root
show target-async -- Show whether gdb controls the inferior in asynchronous mode
show target-charset -- Show the target character set
show target-wide-charset -- Show the target wide character set
show tcp -- TCP protocol specific variables
show tcp auto-retry -- Show auto-retry on socket connect
show tcp connect-timeout -- Show timeout limit for socket connection
show tdesc -- Show target description specific variables
show tdesc filename -- Show the file to read for an XML target description
show trace-commands -- Show state of GDB CLI command tracing
show trust-readonly-sections -- Show mode for reading from readonly sections
show tui -- TUI configuration variables
show tui active-border-mode -- Show the attribute mode to use for the active TUI window border
show tui border-kind -- Show the kind of border for TUI windows
show tui border-mode -- Show the attribute mode to use for the TUI window borders
show unwind-on-terminating-exception -- Show unwinding of stack if std::terminate() is called while in a call dummy
show unwindonsignal -- Show unwinding of stack if a signal is received while in a call dummy
show user -- Show definitions of user defined commands
show values -- Elements of value history around item number IDX (or last ten)
show verbose -- Show verbosity
show version -- Show what version of GDB this is
show warranty -- Various kinds of warranty you do not have
show watchdog -- Show watchdog timer
show width -- Show number of characters gdb thinks are in a line
show write -- Show writing into executable and core files

Command class: support

apropos -- Search for commands matching a REGEXP
define -- Define a new command name
document -- Document a user-defined command
dont-repeat -- Don't repeat this command
down-silently -- Same as the `down' command
echo -- Print a constant string
help -- Print list of commands
if -- Execute nested commands once IF the conditional expression is non zero
interpreter-exec -- Execute a command in an interpreter
make -- Run the ``make'' program using the rest of the line as arguments
overlay -- Commands for debugging overlays
overlay auto -- Enable automatic overlay debugging
overlay list-overlays -- List mappings of overlay sections
overlay load-target -- Read the overlay mapping state from the target
overlay manual -- Enable overlay debugging
overlay map-overlay -- Assert that an overlay section is mapped
overlay off -- Disable overlay debugging
overlay unmap-overlay -- Assert that an overlay section is unmapped
quit -- Exit gdb
require -- Prefix command for requiring features
require command -- Demand-load a command by name
require function -- Demand-load a function by name
shell -- Execute the rest of the line as a shell command
source -- Read commands from a file named FILE
up-silently -- Same as the `up' command
while -- Execute nested commands WHILE the conditional expression is non zero

Command class: tracepoints

actions -- Specify the actions to be taken at a tracepoint
collect -- Specify one or more data items to be collected at a tracepoint
end -- Ends a list of commands or actions
passcount -- Set the passcount for a tracepoint
save-tracepoints -- Save current tracepoint definitions as a script
tdump -- Print everything collected at the current tracepoint
tfind -- Select a trace frame;
tfind end -- Synonym for 'none'
tfind line -- Select a trace frame by source line
tfind none -- De-select any trace frame and resume 'live' debugging
tfind outside -- Select a trace frame whose PC is outside the given range
tfind pc -- Select a trace frame by PC
tfind range -- Select a trace frame whose PC is in the given range
tfind start -- Select the first trace frame in the trace buffer
tfind tracepoint -- Select a trace frame by tracepoint number
tstart -- Start trace data collection
tstatus -- Display the status of the current trace data collection
tstop -- Stop trace data collection
while-stepping -- Specify single-stepping behavior at a tracepoint

Command class: user-defined


Unclassified commands

function -- Placeholder command for showing help on convenience functions
unset -- Complement to certain "set" commands
unset environment -- Cancel environment variable VAR for the program
unset exec-wrapper -- Disable use of an execution wrapper
unset substitute-path -- Usage: unset substitute-path [FROM]
unset tdesc -- Unset target description specific variables
unset tdesc filename -- Unset the file to read for an XML target description
