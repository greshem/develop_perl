#!/usr/bin/perl
$pattern= shift or die("Usage: $0 pttern\n");
foreach (<DATA>)
{
	chomp;
	if( $_=~/$pattern/i)
	{
		print "typeperf \"".$_."\""."\n";;
	}
}
__DATA__
\SMSvcHost 3.0.0.0\Protocol Failures over net.tcp
\SMSvcHost 3.0.0.0\Protocol Failures over net.pipe
\SMSvcHost 3.0.0.0\Dispatch Failures over net.tcp
\SMSvcHost 3.0.0.0\Dispatch Failures over net.pipe
\SMSvcHost 3.0.0.0\Connections Dispatched over net.tcp
\SMSvcHost 3.0.0.0\Connections Dispatched over net.pipe
\SMSvcHost 3.0.0.0\Connections Accepted over net.tcp
\SMSvcHost 3.0.0.0\Connections Accepted over net.pipe
\SMSvcHost 3.0.0.0\Registrations Active for net.tcp
\SMSvcHost 3.0.0.0\Registrations Active for net.pipe
\SMSvcHost 3.0.0.0\Uris Registered for net.tcp
\SMSvcHost 3.0.0.0\Uris Registered for net.pipe
\SMSvcHost 3.0.0.0\Uris Unregistered for net.tcp
\SMSvcHost 3.0.0.0\Uris Unregistered for net.pipe
\SMSvcHost 4.0.0.0\Protocol Failures over net.tcp
\SMSvcHost 4.0.0.0\Protocol Failures over net.pipe
\SMSvcHost 4.0.0.0\Dispatch Failures over net.tcp
\SMSvcHost 4.0.0.0\Dispatch Failures over net.pipe
\SMSvcHost 4.0.0.0\Connections Dispatched over net.tcp
\SMSvcHost 4.0.0.0\Connections Dispatched over net.pipe
\SMSvcHost 4.0.0.0\Connections Accepted over net.tcp
\SMSvcHost 4.0.0.0\Connections Accepted over net.pipe
\SMSvcHost 4.0.0.0\Registrations Active for net.tcp
\SMSvcHost 4.0.0.0\Registrations Active for net.pipe
\SMSvcHost 4.0.0.0\Uris Registered for net.tcp
\SMSvcHost 4.0.0.0\Uris Registered for net.pipe
\SMSvcHost 4.0.0.0\Uris Unregistered for net.tcp
\SMSvcHost 4.0.0.0\Uris Unregistered for net.pipe
\Windows Workflow Foundation\Workflows Created
\Windows Workflow Foundation\Workflows Created/sec
\Windows Workflow Foundation\Workflows Unloaded
\Windows Workflow Foundation\Workflows Unloaded/sec
\Windows Workflow Foundation\Workflows Loaded
\Windows Workflow Foundation\Workflows Loaded/sec
\Windows Workflow Foundation\Workflows Completed
\Windows Workflow Foundation\Workflows Completed/sec
\Windows Workflow Foundation\Workflows Suspended
\Windows Workflow Foundation\Workflows Suspended/sec
\Windows Workflow Foundation\Workflows Terminated
\Windows Workflow Foundation\Workflows Terminated/sec
\Windows Workflow Foundation\Workflows In Memory
\Windows Workflow Foundation\Workflows Aborted
\Windows Workflow Foundation\Workflows Aborted/sec
\Windows Workflow Foundation\Workflows Persisted
\Windows Workflow Foundation\Workflows Persisted/sec
\Windows Workflow Foundation\Workflows Executing
\Windows Workflow Foundation\Workflows Idle/sec
\Windows Workflow Foundation\Workflows Runnable
\Windows Workflow Foundation\Workflows Pending
\WF (System.Workflow) 4.0.0.0\Workflows Created
\WF (System.Workflow) 4.0.0.0\Workflows Created/sec
\WF (System.Workflow) 4.0.0.0\Workflows Unloaded
\WF (System.Workflow) 4.0.0.0\Workflows Unloaded/sec
\WF (System.Workflow) 4.0.0.0\Workflows Loaded
\WF (System.Workflow) 4.0.0.0\Workflows Loaded/sec
\WF (System.Workflow) 4.0.0.0\Workflows Completed
\WF (System.Workflow) 4.0.0.0\Workflows Completed/sec
\WF (System.Workflow) 4.0.0.0\Workflows Suspended
\WF (System.Workflow) 4.0.0.0\Workflows Suspended/sec
\WF (System.Workflow) 4.0.0.0\Workflows Terminated
\WF (System.Workflow) 4.0.0.0\Workflows Terminated/sec
\WF (System.Workflow) 4.0.0.0\Workflows In Memory
\WF (System.Workflow) 4.0.0.0\Workflows Aborted
\WF (System.Workflow) 4.0.0.0\Workflows Aborted/sec
\WF (System.Workflow) 4.0.0.0\Workflows Persisted
\WF (System.Workflow) 4.0.0.0\Workflows Persisted/sec
\WF (System.Workflow) 4.0.0.0\Workflows Executing
\WF (System.Workflow) 4.0.0.0\Workflows Idle/sec
\WF (System.Workflow) 4.0.0.0\Workflows Runnable
\WF (System.Workflow) 4.0.0.0\Workflows Pending
\.NET CLR Data\SqlClient: Current # pooled and nonpooled connections
\.NET CLR Data\SqlClient: Current # pooled connections
\.NET CLR Data\SqlClient: Current # connection pools
\.NET CLR Data\SqlClient: Peak # pooled connections
\.NET CLR Data\SqlClient: Total # failed connects
\.NET CLR Data\SqlClient: Total # failed commands
\.NET CLR Networking\Connections Established
\.NET CLR Networking\Bytes Received
\.NET CLR Networking\Bytes Sent
\.NET CLR Networking\Datagrams Received
\.NET CLR Networking\Datagrams Sent
\.NET CLR Memory(_Global_)\# Gen 0 Collections
\.NET CLR Memory(_Global_)\# Gen 1 Collections
\.NET CLR Memory(_Global_)\# Gen 2 Collections
\.NET CLR Memory(_Global_)\Promoted Memory from Gen 0
\.NET CLR Memory(_Global_)\Promoted Memory from Gen 1
\.NET CLR Memory(_Global_)\Gen 0 Promoted Bytes/Sec
\.NET CLR Memory(_Global_)\Gen 1 Promoted Bytes/Sec
\.NET CLR Memory(_Global_)\Promoted Finalization-Memory from Gen 0
\.NET CLR Memory(_Global_)\Process ID
\.NET CLR Memory(_Global_)\Gen 0 heap size
\.NET CLR Memory(_Global_)\Gen 1 heap size
\.NET CLR Memory(_Global_)\Gen 2 heap size
\.NET CLR Memory(_Global_)\Large Object Heap size
\.NET CLR Memory(_Global_)\Finalization Survivors
\.NET CLR Memory(_Global_)\# GC Handles
\.NET CLR Memory(_Global_)\Allocated Bytes/sec
\.NET CLR Memory(_Global_)\# Induced GC
\.NET CLR Memory(_Global_)\% Time in GC
\.NET CLR Memory(_Global_)\# Bytes in all Heaps
\.NET CLR Memory(_Global_)\# Total committed Bytes
\.NET CLR Memory(_Global_)\# Total reserved Bytes
\.NET CLR Memory(_Global_)\# of Pinned Objects
\.NET CLR Memory(_Global_)\# of Sink Blocks in use
\.NET CLR Interop(_Global_)\# of CCWs
\.NET CLR Interop(_Global_)\# of Stubs
\.NET CLR Interop(_Global_)\# of marshalling
\.NET CLR Interop(_Global_)\# of TLB imports / sec
\.NET CLR Interop(_Global_)\# of TLB exports / sec
\.NET CLR Exceptions(_Global_)\# of Exceps Thrown
\.NET CLR Exceptions(_Global_)\# of Exceps Thrown / sec
\.NET CLR Exceptions(_Global_)\# of Filters / sec
\.NET CLR Exceptions(_Global_)\# of Finallys / sec
\.NET CLR Exceptions(_Global_)\Throw To Catch Depth / sec
\.NET CLR Loading(_Global_)\Current Classes Loaded
\.NET CLR Loading(_Global_)\Total Classes Loaded
\.NET CLR Loading(_Global_)\Rate of Classes Loaded
\.NET CLR Loading(_Global_)\Current appdomains
\.NET CLR Loading(_Global_)\Total Appdomains
\.NET CLR Loading(_Global_)\Rate of appdomains
\.NET CLR Loading(_Global_)\Current Assemblies
\.NET CLR Loading(_Global_)\Total Assemblies
\.NET CLR Loading(_Global_)\Rate of Assemblies
\.NET CLR Loading(_Global_)\% Time Loading
\.NET CLR Loading(_Global_)\Assembly Search Length
\.NET CLR Loading(_Global_)\Total # of Load Failures
\.NET CLR Loading(_Global_)\Rate of Load Failures
\.NET CLR Loading(_Global_)\Bytes in Loader Heap
\.NET CLR Loading(_Global_)\Total appdomains unloaded
\.NET CLR Loading(_Global_)\Rate of appdomains unloaded
\.NET CLR LocksAndThreads(_Global_)\Total # of Contentions
\.NET CLR LocksAndThreads(_Global_)\Contention Rate / sec
\.NET CLR LocksAndThreads(_Global_)\Current Queue Length
\.NET CLR LocksAndThreads(_Global_)\Queue Length Peak
\.NET CLR LocksAndThreads(_Global_)\Queue Length / sec
\.NET CLR LocksAndThreads(_Global_)\# of current logical Threads
\.NET CLR LocksAndThreads(_Global_)\# of current physical Threads
\.NET CLR LocksAndThreads(_Global_)\# of current recognized threads
\.NET CLR LocksAndThreads(_Global_)\# of total recognized threads
\.NET CLR LocksAndThreads(_Global_)\rate of recognized threads / sec
\.NET CLR Jit(_Global_)\# of Methods Jitted
\.NET CLR Jit(_Global_)\# of IL Bytes Jitted
\.NET CLR Jit(_Global_)\Total # of IL Bytes Jitted
\.NET CLR Jit(_Global_)\IL Bytes Jitted / sec
\.NET CLR Jit(_Global_)\Standard Jit Failures
\.NET CLR Jit(_Global_)\% Time in Jit
\.NET CLR Remoting(_Global_)\Remote Calls/sec
\.NET CLR Remoting(_Global_)\Total Remote Calls
\.NET CLR Remoting(_Global_)\Channels
\.NET CLR Remoting(_Global_)\Context Proxies
\.NET CLR Remoting(_Global_)\Context-Bound Classes Loaded
\.NET CLR Remoting(_Global_)\Context-Bound Objects Alloc / sec
\.NET CLR Remoting(_Global_)\Contexts
\.NET CLR Security(_Global_)\Total Runtime Checks
\.NET CLR Security(_Global_)\% Time Sig. Authenticating
\.NET CLR Security(_Global_)\# Link Time Checks
\.NET CLR Security(_Global_)\% Time in RT checks
\.NET CLR Security(_Global_)\Stack Walk Depth
\ASP.NET\Application Restarts
\ASP.NET\Applications Running
\ASP.NET\Requests Disconnected
\ASP.NET\Request Execution Time
\ASP.NET\Requests Rejected
\ASP.NET\Requests Queued
\ASP.NET\Worker Processes Running
\ASP.NET\Worker Process Restarts
\ASP.NET\Request Wait Time
\ASP.NET\State Server Sessions Active
\ASP.NET\State Server Sessions Abandoned
\ASP.NET\State Server Sessions Timed Out
\ASP.NET\State Server Sessions Total
\ASP.NET\Requests Current
\ASP.NET\Audit Success Events Raised
\ASP.NET\Audit Failure Events Raised
\ASP.NET\Error Events Raised
\ASP.NET\Request Error Events Raised
\ASP.NET\Infrastructure Error Events Raised
\ASP.NET Applications(__Total__)\Anonymous Requests
\ASP.NET Applications(__Total__)\Anonymous Requests/Sec
\ASP.NET Applications(__Total__)\Cache Total Entries
\ASP.NET Applications(__Total__)\Cache Total Turnover Rate
\ASP.NET Applications(__Total__)\Cache Total Hits
\ASP.NET Applications(__Total__)\Cache Total Misses
\ASP.NET Applications(__Total__)\Cache Total Hit Ratio
\ASP.NET Applications(__Total__)\Cache API Entries
\ASP.NET Applications(__Total__)\Cache API Turnover Rate
\ASP.NET Applications(__Total__)\Cache API Hits
\ASP.NET Applications(__Total__)\Cache API Misses
\ASP.NET Applications(__Total__)\Cache API Hit Ratio
\ASP.NET Applications(__Total__)\Output Cache Entries
\ASP.NET Applications(__Total__)\Output Cache Turnover Rate
\ASP.NET Applications(__Total__)\Output Cache Hits
\ASP.NET Applications(__Total__)\Output Cache Misses
\ASP.NET Applications(__Total__)\Output Cache Hit Ratio
\ASP.NET Applications(__Total__)\Compilations Total
\ASP.NET Applications(__Total__)\Debugging Requests
\ASP.NET Applications(__Total__)\Errors During Preprocessing
\ASP.NET Applications(__Total__)\Errors During Compilation
\ASP.NET Applications(__Total__)\Errors During Execution
\ASP.NET Applications(__Total__)\Errors Unhandled During Execution
\ASP.NET Applications(__Total__)\Errors Unhandled During Execution/Sec
\ASP.NET Applications(__Total__)\Errors Total
\ASP.NET Applications(__Total__)\Errors Total/Sec
\ASP.NET Applications(__Total__)\Pipeline Instance Count
\ASP.NET Applications(__Total__)\Request Bytes In Total
\ASP.NET Applications(__Total__)\Request Bytes Out Total
\ASP.NET Applications(__Total__)\Requests Executing
\ASP.NET Applications(__Total__)\Requests Failed
\ASP.NET Applications(__Total__)\Requests Not Found
\ASP.NET Applications(__Total__)\Requests Not Authorized
\ASP.NET Applications(__Total__)\Requests In Application Queue
\ASP.NET Applications(__Total__)\Requests Timed Out
\ASP.NET Applications(__Total__)\Requests Succeeded
\ASP.NET Applications(__Total__)\Requests Total
\ASP.NET Applications(__Total__)\Requests/Sec
\ASP.NET Applications(__Total__)\Sessions Active
\ASP.NET Applications(__Total__)\Sessions Abandoned
\ASP.NET Applications(__Total__)\Sessions Timed Out
\ASP.NET Applications(__Total__)\Sessions Total
\ASP.NET Applications(__Total__)\Transactions Aborted
\ASP.NET Applications(__Total__)\Transactions Committed
\ASP.NET Applications(__Total__)\Transactions Pending
\ASP.NET Applications(__Total__)\Transactions Total
\ASP.NET Applications(__Total__)\Transactions/Sec
\ASP.NET Applications(__Total__)\Session State Server connections total
\ASP.NET Applications(__Total__)\Session SQL Server connections total
\ASP.NET Applications(__Total__)\Events Raised
\ASP.NET Applications(__Total__)\Events Raised/Sec
\ASP.NET Applications(__Total__)\Application Lifetime Events
\ASP.NET Applications(__Total__)\Application Lifetime Events/Sec
\ASP.NET Applications(__Total__)\Error Events Raised
\ASP.NET Applications(__Total__)\Error Events Raised/Sec
\ASP.NET Applications(__Total__)\Request Error Events Raised
\ASP.NET Applications(__Total__)\Request Error Events Raised/Sec
\ASP.NET Applications(__Total__)\Infrastructure Error Events Raised
\ASP.NET Applications(__Total__)\Infrastructure Error Events Raised/Sec
\ASP.NET Applications(__Total__)\Request Events Raised
\ASP.NET Applications(__Total__)\Request Events Raised/Sec
\ASP.NET Applications(__Total__)\Audit Success Events Raised
\ASP.NET Applications(__Total__)\Audit Failure Events Raised
\ASP.NET Applications(__Total__)\Membership Authentication Success
\ASP.NET Applications(__Total__)\Membership Authentication Failure
\ASP.NET Applications(__Total__)\Forms Authentication Success
\ASP.NET Applications(__Total__)\Forms Authentication Failure
\ASP.NET Applications(__Total__)\Viewstate MAC Validation Failure
\ASP.NET Applications(__Total__)\Request Execution Time
\ASP.NET Applications(__Total__)\Requests Disconnected
\ASP.NET Applications(__Total__)\Requests Rejected
\ASP.NET Applications(__Total__)\Request Wait Time
\ASP.NET Applications(__Total__)\Cache % Machine Memory Limit Used
\ASP.NET Applications(__Total__)\Cache % Process Memory Limit Used
\ASP.NET Applications(__Total__)\Cache Total Trims
\ASP.NET Applications(__Total__)\Cache API Trims
\ASP.NET Applications(__Total__)\Output Cache Trims
\ASP.NET Applications(__Total__)\% Managed Processor Time (estimated)
\ASP.NET Applications(__Total__)\Managed Memory Used (estimated)
\ASP.NET v1.1.4322\Application Restarts
\ASP.NET v1.1.4322\Applications Running
\ASP.NET v1.1.4322\Requests Disconnected
\ASP.NET v1.1.4322\Request Execution Time
\ASP.NET v1.1.4322\Requests Rejected
\ASP.NET v1.1.4322\Requests Queued
\ASP.NET v1.1.4322\Worker Processes Running
\ASP.NET v1.1.4322\Worker Process Restarts
\ASP.NET v1.1.4322\Request Wait Time
\ASP.NET v1.1.4322\State Server Sessions Active
\ASP.NET v1.1.4322\State Server Sessions Abandoned
\ASP.NET v1.1.4322\State Server Sessions Timed Out
\ASP.NET v1.1.4322\State Server Sessions Total
\ASP.NET v1.1.4322\Requests Current
\ASP.NET Apps v1.1.4322(__Total__)\Anonymous Requests
\ASP.NET Apps v1.1.4322(__Total__)\Anonymous Requests/Sec
\ASP.NET Apps v1.1.4322(__Total__)\Cache Total Entries
\ASP.NET Apps v1.1.4322(__Total__)\Cache Total Turnover Rate
\ASP.NET Apps v1.1.4322(__Total__)\Cache Total Hits
\ASP.NET Apps v1.1.4322(__Total__)\Cache Total Misses
\ASP.NET Apps v1.1.4322(__Total__)\Cache Total Hit Ratio
\ASP.NET Apps v1.1.4322(__Total__)\Cache API Entries
\ASP.NET Apps v1.1.4322(__Total__)\Cache API Turnover Rate
\ASP.NET Apps v1.1.4322(__Total__)\Cache API Hits
\ASP.NET Apps v1.1.4322(__Total__)\Cache API Misses
\ASP.NET Apps v1.1.4322(__Total__)\Cache API Hit Ratio
\ASP.NET Apps v1.1.4322(__Total__)\Output Cache Entries
\ASP.NET Apps v1.1.4322(__Total__)\Output Cache Turnover Rate
\ASP.NET Apps v1.1.4322(__Total__)\Output Cache Hits
\ASP.NET Apps v1.1.4322(__Total__)\Output Cache Misses
\ASP.NET Apps v1.1.4322(__Total__)\Output Cache Hit Ratio
\ASP.NET Apps v1.1.4322(__Total__)\Compilations Total
\ASP.NET Apps v1.1.4322(__Total__)\Debugging Requests
\ASP.NET Apps v1.1.4322(__Total__)\Errors During Preprocessing
\ASP.NET Apps v1.1.4322(__Total__)\Errors During Compilation
\ASP.NET Apps v1.1.4322(__Total__)\Errors During Execution
\ASP.NET Apps v1.1.4322(__Total__)\Errors Unhandled During Execution
\ASP.NET Apps v1.1.4322(__Total__)\Errors Unhandled During Execution/Sec
\ASP.NET Apps v1.1.4322(__Total__)\Errors Total
\ASP.NET Apps v1.1.4322(__Total__)\Errors Total/Sec
\ASP.NET Apps v1.1.4322(__Total__)\Pipeline Instance Count
\ASP.NET Apps v1.1.4322(__Total__)\Request Bytes In Total
\ASP.NET Apps v1.1.4322(__Total__)\Request Bytes Out Total
\ASP.NET Apps v1.1.4322(__Total__)\Requests Executing
\ASP.NET Apps v1.1.4322(__Total__)\Requests Failed
\ASP.NET Apps v1.1.4322(__Total__)\Requests Not Found
\ASP.NET Apps v1.1.4322(__Total__)\Requests Not Authorized
\ASP.NET Apps v1.1.4322(__Total__)\Requests In Application Queue
\ASP.NET Apps v1.1.4322(__Total__)\Requests Timed Out
\ASP.NET Apps v1.1.4322(__Total__)\Requests Succeeded
\ASP.NET Apps v1.1.4322(__Total__)\Requests Total
\ASP.NET Apps v1.1.4322(__Total__)\Requests/Sec
\ASP.NET Apps v1.1.4322(__Total__)\Sessions Active
\ASP.NET Apps v1.1.4322(__Total__)\Sessions Abandoned
\ASP.NET Apps v1.1.4322(__Total__)\Sessions Timed Out
\ASP.NET Apps v1.1.4322(__Total__)\Sessions Total
\ASP.NET Apps v1.1.4322(__Total__)\Transactions Aborted
\ASP.NET Apps v1.1.4322(__Total__)\Transactions Committed
\ASP.NET Apps v1.1.4322(__Total__)\Transactions Pending
\ASP.NET Apps v1.1.4322(__Total__)\Transactions Total
\ASP.NET Apps v1.1.4322(__Total__)\Transactions/Sec
\ASP.NET Apps v1.1.4322(__Total__)\Session State Server connections total
\ASP.NET Apps v1.1.4322(__Total__)\Session SQL Server connections total
\ASP.NET v2.0.50727\Application Restarts
\ASP.NET v2.0.50727\Applications Running
\ASP.NET v2.0.50727\Requests Disconnected
\ASP.NET v2.0.50727\Request Execution Time
\ASP.NET v2.0.50727\Requests Rejected
\ASP.NET v2.0.50727\Requests Queued
\ASP.NET v2.0.50727\Worker Processes Running
\ASP.NET v2.0.50727\Worker Process Restarts
\ASP.NET v2.0.50727\Request Wait Time
\ASP.NET v2.0.50727\State Server Sessions Active
\ASP.NET v2.0.50727\State Server Sessions Abandoned
\ASP.NET v2.0.50727\State Server Sessions Timed Out
\ASP.NET v2.0.50727\State Server Sessions Total
\ASP.NET v2.0.50727\Requests Current
\ASP.NET v2.0.50727\Audit Success Events Raised
\ASP.NET v2.0.50727\Audit Failure Events Raised
\ASP.NET v2.0.50727\Error Events Raised
\ASP.NET v2.0.50727\Request Error Events Raised
\ASP.NET v2.0.50727\Infrastructure Error Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Anonymous Requests
\ASP.NET Apps v2.0.50727(__Total__)\Anonymous Requests/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Entries
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Turnover Rate
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Hits
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Misses
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Hit Ratio
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Entries
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Turnover Rate
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Hits
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Misses
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Hit Ratio
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Entries
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Turnover Rate
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Hits
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Misses
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Hit Ratio
\ASP.NET Apps v2.0.50727(__Total__)\Compilations Total
\ASP.NET Apps v2.0.50727(__Total__)\Debugging Requests
\ASP.NET Apps v2.0.50727(__Total__)\Errors During Preprocessing
\ASP.NET Apps v2.0.50727(__Total__)\Errors During Compilation
\ASP.NET Apps v2.0.50727(__Total__)\Errors During Execution
\ASP.NET Apps v2.0.50727(__Total__)\Errors Unhandled During Execution
\ASP.NET Apps v2.0.50727(__Total__)\Errors Unhandled During Execution/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Errors Total
\ASP.NET Apps v2.0.50727(__Total__)\Errors Total/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Pipeline Instance Count
\ASP.NET Apps v2.0.50727(__Total__)\Request Bytes In Total
\ASP.NET Apps v2.0.50727(__Total__)\Request Bytes Out Total
\ASP.NET Apps v2.0.50727(__Total__)\Requests Executing
\ASP.NET Apps v2.0.50727(__Total__)\Requests Failed
\ASP.NET Apps v2.0.50727(__Total__)\Requests Not Found
\ASP.NET Apps v2.0.50727(__Total__)\Requests Not Authorized
\ASP.NET Apps v2.0.50727(__Total__)\Requests In Application Queue
\ASP.NET Apps v2.0.50727(__Total__)\Requests Timed Out
\ASP.NET Apps v2.0.50727(__Total__)\Requests Succeeded
\ASP.NET Apps v2.0.50727(__Total__)\Requests Total
\ASP.NET Apps v2.0.50727(__Total__)\Requests/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Sessions Active
\ASP.NET Apps v2.0.50727(__Total__)\Sessions Abandoned
\ASP.NET Apps v2.0.50727(__Total__)\Sessions Timed Out
\ASP.NET Apps v2.0.50727(__Total__)\Sessions Total
\ASP.NET Apps v2.0.50727(__Total__)\Transactions Aborted
\ASP.NET Apps v2.0.50727(__Total__)\Transactions Committed
\ASP.NET Apps v2.0.50727(__Total__)\Transactions Pending
\ASP.NET Apps v2.0.50727(__Total__)\Transactions Total
\ASP.NET Apps v2.0.50727(__Total__)\Transactions/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Session State Server connections total
\ASP.NET Apps v2.0.50727(__Total__)\Session SQL Server connections total
\ASP.NET Apps v2.0.50727(__Total__)\Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Events Raised/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Application Lifetime Events
\ASP.NET Apps v2.0.50727(__Total__)\Application Lifetime Events/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Error Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Error Events Raised/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Request Error Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Request Error Events Raised/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Infrastructure Error Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Infrastructure Error Events Raised/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Request Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Request Events Raised/Sec
\ASP.NET Apps v2.0.50727(__Total__)\Audit Success Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Audit Failure Events Raised
\ASP.NET Apps v2.0.50727(__Total__)\Membership Authentication Success
\ASP.NET Apps v2.0.50727(__Total__)\Membership Authentication Failure
\ASP.NET Apps v2.0.50727(__Total__)\Forms Authentication Success
\ASP.NET Apps v2.0.50727(__Total__)\Forms Authentication Failure
\ASP.NET Apps v2.0.50727(__Total__)\Viewstate MAC Validation Failure
\ASP.NET Apps v2.0.50727(__Total__)\Request Execution Time
\ASP.NET Apps v2.0.50727(__Total__)\Requests Disconnected
\ASP.NET Apps v2.0.50727(__Total__)\Requests Rejected
\ASP.NET Apps v2.0.50727(__Total__)\Request Wait Time
\ASP.NET Apps v2.0.50727(__Total__)\Cache % Machine Memory Limit Used
\ASP.NET Apps v2.0.50727(__Total__)\Cache % Process Memory Limit Used
\ASP.NET Apps v2.0.50727(__Total__)\Cache Total Trims
\ASP.NET Apps v2.0.50727(__Total__)\Cache API Trims
\ASP.NET Apps v2.0.50727(__Total__)\Output Cache Trims
\ASP.NET v4.0.30319\Application Restarts
\ASP.NET v4.0.30319\Applications Running
\ASP.NET v4.0.30319\Requests Disconnected
\ASP.NET v4.0.30319\Request Execution Time
\ASP.NET v4.0.30319\Requests Rejected
\ASP.NET v4.0.30319\Requests Queued
\ASP.NET v4.0.30319\Worker Processes Running
\ASP.NET v4.0.30319\Worker Process Restarts
\ASP.NET v4.0.30319\Request Wait Time
\ASP.NET v4.0.30319\State Server Sessions Active
\ASP.NET v4.0.30319\State Server Sessions Abandoned
\ASP.NET v4.0.30319\State Server Sessions Timed Out
\ASP.NET v4.0.30319\State Server Sessions Total
\ASP.NET v4.0.30319\Requests Current
\ASP.NET v4.0.30319\Audit Success Events Raised
\ASP.NET v4.0.30319\Audit Failure Events Raised
\ASP.NET v4.0.30319\Error Events Raised
\ASP.NET v4.0.30319\Request Error Events Raised
\ASP.NET v4.0.30319\Infrastructure Error Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Anonymous Requests
\ASP.NET Apps v4.0.30319(__Total__)\Anonymous Requests/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Entries
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Turnover Rate
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Hits
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Misses
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Hit Ratio
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Entries
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Turnover Rate
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Hits
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Misses
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Hit Ratio
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Entries
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Turnover Rate
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Hits
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Misses
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Hit Ratio
\ASP.NET Apps v4.0.30319(__Total__)\Compilations Total
\ASP.NET Apps v4.0.30319(__Total__)\Debugging Requests
\ASP.NET Apps v4.0.30319(__Total__)\Errors During Preprocessing
\ASP.NET Apps v4.0.30319(__Total__)\Errors During Compilation
\ASP.NET Apps v4.0.30319(__Total__)\Errors During Execution
\ASP.NET Apps v4.0.30319(__Total__)\Errors Unhandled During Execution
\ASP.NET Apps v4.0.30319(__Total__)\Errors Unhandled During Execution/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Errors Total
\ASP.NET Apps v4.0.30319(__Total__)\Errors Total/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Pipeline Instance Count
\ASP.NET Apps v4.0.30319(__Total__)\Request Bytes In Total
\ASP.NET Apps v4.0.30319(__Total__)\Request Bytes Out Total
\ASP.NET Apps v4.0.30319(__Total__)\Requests Executing
\ASP.NET Apps v4.0.30319(__Total__)\Requests Failed
\ASP.NET Apps v4.0.30319(__Total__)\Requests Not Found
\ASP.NET Apps v4.0.30319(__Total__)\Requests Not Authorized
\ASP.NET Apps v4.0.30319(__Total__)\Requests In Application Queue
\ASP.NET Apps v4.0.30319(__Total__)\Requests Timed Out
\ASP.NET Apps v4.0.30319(__Total__)\Requests Succeeded
\ASP.NET Apps v4.0.30319(__Total__)\Requests Total
\ASP.NET Apps v4.0.30319(__Total__)\Requests/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Sessions Active
\ASP.NET Apps v4.0.30319(__Total__)\Sessions Abandoned
\ASP.NET Apps v4.0.30319(__Total__)\Sessions Timed Out
\ASP.NET Apps v4.0.30319(__Total__)\Sessions Total
\ASP.NET Apps v4.0.30319(__Total__)\Transactions Aborted
\ASP.NET Apps v4.0.30319(__Total__)\Transactions Committed
\ASP.NET Apps v4.0.30319(__Total__)\Transactions Pending
\ASP.NET Apps v4.0.30319(__Total__)\Transactions Total
\ASP.NET Apps v4.0.30319(__Total__)\Transactions/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Session State Server connections total
\ASP.NET Apps v4.0.30319(__Total__)\Session SQL Server connections total
\ASP.NET Apps v4.0.30319(__Total__)\Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Events Raised/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Application Lifetime Events
\ASP.NET Apps v4.0.30319(__Total__)\Application Lifetime Events/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Error Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Error Events Raised/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Request Error Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Request Error Events Raised/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Infrastructure Error Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Infrastructure Error Events Raised/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Request Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Request Events Raised/Sec
\ASP.NET Apps v4.0.30319(__Total__)\Audit Success Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Audit Failure Events Raised
\ASP.NET Apps v4.0.30319(__Total__)\Membership Authentication Success
\ASP.NET Apps v4.0.30319(__Total__)\Membership Authentication Failure
\ASP.NET Apps v4.0.30319(__Total__)\Forms Authentication Success
\ASP.NET Apps v4.0.30319(__Total__)\Forms Authentication Failure
\ASP.NET Apps v4.0.30319(__Total__)\Viewstate MAC Validation Failure
\ASP.NET Apps v4.0.30319(__Total__)\Request Execution Time
\ASP.NET Apps v4.0.30319(__Total__)\Requests Disconnected
\ASP.NET Apps v4.0.30319(__Total__)\Requests Rejected
\ASP.NET Apps v4.0.30319(__Total__)\Request Wait Time
\ASP.NET Apps v4.0.30319(__Total__)\Cache % Machine Memory Limit Used
\ASP.NET Apps v4.0.30319(__Total__)\Cache % Process Memory Limit Used
\ASP.NET Apps v4.0.30319(__Total__)\Cache Total Trims
\ASP.NET Apps v4.0.30319(__Total__)\Cache API Trims
\ASP.NET Apps v4.0.30319(__Total__)\Output Cache Trims
\ASP.NET Apps v4.0.30319(__Total__)\% Managed Processor Time (estimated)
\ASP.NET Apps v4.0.30319(__Total__)\Managed Memory Used (estimated)
\ASP.NET State Service\State Server Sessions Active
\ASP.NET State Service\State Server Sessions Abandoned
\ASP.NET State Service\State Server Sessions Timed Out
\ASP.NET State Service\State Server Sessions Total
\.NET CLR Networking 4.0.0.0\Connections Established
\.NET CLR Networking 4.0.0.0\Bytes Received
\.NET CLR Networking 4.0.0.0\Bytes Sent
\.NET CLR Networking 4.0.0.0\Datagrams Received
\.NET CLR Networking 4.0.0.0\Datagrams Sent
\.NET CLR Networking 4.0.0.0\HttpWebRequests Created/Sec
\.NET CLR Networking 4.0.0.0\HttpWebRequests Average Lifetime
\.NET CLR Networking 4.0.0.0\HttpWebRequests Queued/Sec
\.NET CLR Networking 4.0.0.0\HttpWebRequests Average Queue Time
\.NET CLR Networking 4.0.0.0\HttpWebRequests Aborted/Sec
\.NET CLR Networking 4.0.0.0\HttpWebRequests Failed/Sec
\.NET Data Provider for Oracle\HardConnectsPerSecond
\.NET Data Provider for Oracle\HardDisconnectsPerSecond
\.NET Data Provider for Oracle\SoftConnectsPerSecond
\.NET Data Provider for Oracle\SoftDisconnectsPerSecond
\.NET Data Provider for Oracle\NumberOfNonPooledConnections
\.NET Data Provider for Oracle\NumberOfPooledConnections
\.NET Data Provider for Oracle\NumberOfActiveConnectionPoolGroups
\.NET Data Provider for Oracle\NumberOfInactiveConnectionPoolGroups
\.NET Data Provider for Oracle\NumberOfActiveConnectionPools
\.NET Data Provider for Oracle\NumberOfInactiveConnectionPools
\.NET Data Provider for Oracle\NumberOfActiveConnections
\.NET Data Provider for Oracle\NumberOfFreeConnections
\.NET Data Provider for Oracle\NumberOfStasisConnections
\.NET Data Provider for Oracle\NumberOfReclaimedConnections
\LogicalDisk(C:)\% Free Space
\LogicalDisk(D:)\% Free Space
\LogicalDisk(E:)\% Free Space
\LogicalDisk(H:)\% Free Space
\LogicalDisk(I:)\% Free Space
\LogicalDisk(J:)\% Free Space
\LogicalDisk(K:)\% Free Space
\LogicalDisk(_Total)\% Free Space
\LogicalDisk(C:)\Free Megabytes
\LogicalDisk(D:)\Free Megabytes
\LogicalDisk(E:)\Free Megabytes
\LogicalDisk(H:)\Free Megabytes
\LogicalDisk(I:)\Free Megabytes
\LogicalDisk(J:)\Free Megabytes
\LogicalDisk(K:)\Free Megabytes
\LogicalDisk(_Total)\Free Megabytes
\LogicalDisk(C:)\Current Disk Queue Length
\LogicalDisk(D:)\Current Disk Queue Length
\LogicalDisk(E:)\Current Disk Queue Length
\LogicalDisk(H:)\Current Disk Queue Length
\LogicalDisk(I:)\Current Disk Queue Length
\LogicalDisk(J:)\Current Disk Queue Length
\LogicalDisk(K:)\Current Disk Queue Length
\LogicalDisk(_Total)\Current Disk Queue Length
\LogicalDisk(C:)\% Disk Time
\LogicalDisk(D:)\% Disk Time
\LogicalDisk(E:)\% Disk Time
\LogicalDisk(H:)\% Disk Time
\LogicalDisk(I:)\% Disk Time
\LogicalDisk(J:)\% Disk Time
\LogicalDisk(K:)\% Disk Time
\LogicalDisk(_Total)\% Disk Time
\LogicalDisk(C:)\Avg. Disk Queue Length
\LogicalDisk(D:)\Avg. Disk Queue Length
\LogicalDisk(E:)\Avg. Disk Queue Length
\LogicalDisk(H:)\Avg. Disk Queue Length
\LogicalDisk(I:)\Avg. Disk Queue Length
\LogicalDisk(J:)\Avg. Disk Queue Length
\LogicalDisk(K:)\Avg. Disk Queue Length
\LogicalDisk(_Total)\Avg. Disk Queue Length
\LogicalDisk(C:)\% Disk Read Time
\LogicalDisk(D:)\% Disk Read Time
\LogicalDisk(E:)\% Disk Read Time
\LogicalDisk(H:)\% Disk Read Time
\LogicalDisk(I:)\% Disk Read Time
\LogicalDisk(J:)\% Disk Read Time
\LogicalDisk(K:)\% Disk Read Time
\LogicalDisk(_Total)\% Disk Read Time
\LogicalDisk(C:)\Avg. Disk Read Queue Length
\LogicalDisk(D:)\Avg. Disk Read Queue Length
\LogicalDisk(E:)\Avg. Disk Read Queue Length
\LogicalDisk(H:)\Avg. Disk Read Queue Length
\LogicalDisk(I:)\Avg. Disk Read Queue Length
\LogicalDisk(J:)\Avg. Disk Read Queue Length
\LogicalDisk(K:)\Avg. Disk Read Queue Length
\LogicalDisk(_Total)\Avg. Disk Read Queue Length
\LogicalDisk(C:)\% Disk Write Time
\LogicalDisk(D:)\% Disk Write Time
\LogicalDisk(E:)\% Disk Write Time
\LogicalDisk(H:)\% Disk Write Time
\LogicalDisk(I:)\% Disk Write Time
\LogicalDisk(J:)\% Disk Write Time
\LogicalDisk(K:)\% Disk Write Time
\LogicalDisk(_Total)\% Disk Write Time
\LogicalDisk(C:)\Avg. Disk Write Queue Length
\LogicalDisk(D:)\Avg. Disk Write Queue Length
\LogicalDisk(E:)\Avg. Disk Write Queue Length
\LogicalDisk(H:)\Avg. Disk Write Queue Length
\LogicalDisk(I:)\Avg. Disk Write Queue Length
\LogicalDisk(J:)\Avg. Disk Write Queue Length
\LogicalDisk(K:)\Avg. Disk Write Queue Length
\LogicalDisk(_Total)\Avg. Disk Write Queue Length
\LogicalDisk(C:)\Avg. Disk sec/Transfer
\LogicalDisk(D:)\Avg. Disk sec/Transfer
\LogicalDisk(E:)\Avg. Disk sec/Transfer
\LogicalDisk(H:)\Avg. Disk sec/Transfer
\LogicalDisk(I:)\Avg. Disk sec/Transfer
\LogicalDisk(J:)\Avg. Disk sec/Transfer
\LogicalDisk(K:)\Avg. Disk sec/Transfer
\LogicalDisk(_Total)\Avg. Disk sec/Transfer
\LogicalDisk(C:)\Avg. Disk sec/Read
\LogicalDisk(D:)\Avg. Disk sec/Read
\LogicalDisk(E:)\Avg. Disk sec/Read
\LogicalDisk(H:)\Avg. Disk sec/Read
\LogicalDisk(I:)\Avg. Disk sec/Read
\LogicalDisk(J:)\Avg. Disk sec/Read
\LogicalDisk(K:)\Avg. Disk sec/Read
\LogicalDisk(_Total)\Avg. Disk sec/Read
\LogicalDisk(C:)\Avg. Disk sec/Write
\LogicalDisk(D:)\Avg. Disk sec/Write
\LogicalDisk(E:)\Avg. Disk sec/Write
\LogicalDisk(H:)\Avg. Disk sec/Write
\LogicalDisk(I:)\Avg. Disk sec/Write
\LogicalDisk(J:)\Avg. Disk sec/Write
\LogicalDisk(K:)\Avg. Disk sec/Write
\LogicalDisk(_Total)\Avg. Disk sec/Write
\LogicalDisk(C:)\Disk Transfers/sec
\LogicalDisk(D:)\Disk Transfers/sec
\LogicalDisk(E:)\Disk Transfers/sec
\LogicalDisk(H:)\Disk Transfers/sec
\LogicalDisk(I:)\Disk Transfers/sec
\LogicalDisk(J:)\Disk Transfers/sec
\LogicalDisk(K:)\Disk Transfers/sec
\LogicalDisk(_Total)\Disk Transfers/sec
\LogicalDisk(C:)\Disk Reads/sec
\LogicalDisk(D:)\Disk Reads/sec
\LogicalDisk(E:)\Disk Reads/sec
\LogicalDisk(H:)\Disk Reads/sec
\LogicalDisk(I:)\Disk Reads/sec
\LogicalDisk(J:)\Disk Reads/sec
\LogicalDisk(K:)\Disk Reads/sec
\LogicalDisk(_Total)\Disk Reads/sec
\LogicalDisk(C:)\Disk Writes/sec
\LogicalDisk(D:)\Disk Writes/sec
\LogicalDisk(E:)\Disk Writes/sec
\LogicalDisk(H:)\Disk Writes/sec
\LogicalDisk(I:)\Disk Writes/sec
\LogicalDisk(J:)\Disk Writes/sec
\LogicalDisk(K:)\Disk Writes/sec
\LogicalDisk(_Total)\Disk Writes/sec
\LogicalDisk(C:)\Disk Bytes/sec
\LogicalDisk(D:)\Disk Bytes/sec
\LogicalDisk(E:)\Disk Bytes/sec
\LogicalDisk(H:)\Disk Bytes/sec
\LogicalDisk(I:)\Disk Bytes/sec
\LogicalDisk(J:)\Disk Bytes/sec
\LogicalDisk(K:)\Disk Bytes/sec
\LogicalDisk(_Total)\Disk Bytes/sec
\LogicalDisk(C:)\Disk Read Bytes/sec
\LogicalDisk(D:)\Disk Read Bytes/sec
\LogicalDisk(E:)\Disk Read Bytes/sec
\LogicalDisk(H:)\Disk Read Bytes/sec
\LogicalDisk(I:)\Disk Read Bytes/sec
\LogicalDisk(J:)\Disk Read Bytes/sec
\LogicalDisk(K:)\Disk Read Bytes/sec
\LogicalDisk(_Total)\Disk Read Bytes/sec
\LogicalDisk(C:)\Disk Write Bytes/sec
\LogicalDisk(D:)\Disk Write Bytes/sec
\LogicalDisk(E:)\Disk Write Bytes/sec
\LogicalDisk(H:)\Disk Write Bytes/sec
\LogicalDisk(I:)\Disk Write Bytes/sec
\LogicalDisk(J:)\Disk Write Bytes/sec
\LogicalDisk(K:)\Disk Write Bytes/sec
\LogicalDisk(_Total)\Disk Write Bytes/sec
\LogicalDisk(C:)\Avg. Disk Bytes/Transfer
\LogicalDisk(D:)\Avg. Disk Bytes/Transfer
\LogicalDisk(E:)\Avg. Disk Bytes/Transfer
\LogicalDisk(H:)\Avg. Disk Bytes/Transfer
\LogicalDisk(I:)\Avg. Disk Bytes/Transfer
\LogicalDisk(J:)\Avg. Disk Bytes/Transfer
\LogicalDisk(K:)\Avg. Disk Bytes/Transfer
\LogicalDisk(_Total)\Avg. Disk Bytes/Transfer
\LogicalDisk(C:)\Avg. Disk Bytes/Read
\LogicalDisk(D:)\Avg. Disk Bytes/Read
\LogicalDisk(E:)\Avg. Disk Bytes/Read
\LogicalDisk(H:)\Avg. Disk Bytes/Read
\LogicalDisk(I:)\Avg. Disk Bytes/Read
\LogicalDisk(J:)\Avg. Disk Bytes/Read
\LogicalDisk(K:)\Avg. Disk Bytes/Read
\LogicalDisk(_Total)\Avg. Disk Bytes/Read
\LogicalDisk(C:)\Avg. Disk Bytes/Write
\LogicalDisk(D:)\Avg. Disk Bytes/Write
\LogicalDisk(E:)\Avg. Disk Bytes/Write
\LogicalDisk(H:)\Avg. Disk Bytes/Write
\LogicalDisk(I:)\Avg. Disk Bytes/Write
\LogicalDisk(J:)\Avg. Disk Bytes/Write
\LogicalDisk(K:)\Avg. Disk Bytes/Write
\LogicalDisk(_Total)\Avg. Disk Bytes/Write
\LogicalDisk(C:)\% Idle Time
\LogicalDisk(D:)\% Idle Time
\LogicalDisk(E:)\% Idle Time
\LogicalDisk(H:)\% Idle Time
\LogicalDisk(I:)\% Idle Time
\LogicalDisk(J:)\% Idle Time
\LogicalDisk(K:)\% Idle Time
\LogicalDisk(_Total)\% Idle Time
\LogicalDisk(C:)\Split IO/Sec
\LogicalDisk(D:)\Split IO/Sec
\LogicalDisk(E:)\Split IO/Sec
\LogicalDisk(H:)\Split IO/Sec
\LogicalDisk(I:)\Split IO/Sec
\LogicalDisk(J:)\Split IO/Sec
\LogicalDisk(K:)\Split IO/Sec
\LogicalDisk(_Total)\Split IO/Sec
\PhysicalDisk(0 C: D: F: E:)\Current Disk Queue Length
\PhysicalDisk(1)\Current Disk Queue Length
\PhysicalDisk(2)\Current Disk Queue Length
\PhysicalDisk(3)\Current Disk Queue Length
\PhysicalDisk(4)\Current Disk Queue Length
\PhysicalDisk(5)\Current Disk Queue Length
\PhysicalDisk(6)\Current Disk Queue Length
\PhysicalDisk(7)\Current Disk Queue Length
\PhysicalDisk(8)\Current Disk Queue Length
\PhysicalDisk(9 H: I: J: K:)\Current Disk Queue Length
\PhysicalDisk(_Total)\Current Disk Queue Length
\PhysicalDisk(0 C: D: F: E:)\% Disk Time
\PhysicalDisk(1)\% Disk Time
\PhysicalDisk(2)\% Disk Time
\PhysicalDisk(3)\% Disk Time
\PhysicalDisk(4)\% Disk Time
\PhysicalDisk(5)\% Disk Time
\PhysicalDisk(6)\% Disk Time
\PhysicalDisk(7)\% Disk Time
\PhysicalDisk(8)\% Disk Time
\PhysicalDisk(9 H: I: J: K:)\% Disk Time
\PhysicalDisk(_Total)\% Disk Time
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Queue Length
\PhysicalDisk(1)\Avg. Disk Queue Length
\PhysicalDisk(2)\Avg. Disk Queue Length
\PhysicalDisk(3)\Avg. Disk Queue Length
\PhysicalDisk(4)\Avg. Disk Queue Length
\PhysicalDisk(5)\Avg. Disk Queue Length
\PhysicalDisk(6)\Avg. Disk Queue Length
\PhysicalDisk(7)\Avg. Disk Queue Length
\PhysicalDisk(8)\Avg. Disk Queue Length
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Queue Length
\PhysicalDisk(_Total)\Avg. Disk Queue Length
\PhysicalDisk(0 C: D: F: E:)\% Disk Read Time
\PhysicalDisk(1)\% Disk Read Time
\PhysicalDisk(2)\% Disk Read Time
\PhysicalDisk(3)\% Disk Read Time
\PhysicalDisk(4)\% Disk Read Time
\PhysicalDisk(5)\% Disk Read Time
\PhysicalDisk(6)\% Disk Read Time
\PhysicalDisk(7)\% Disk Read Time
\PhysicalDisk(8)\% Disk Read Time
\PhysicalDisk(9 H: I: J: K:)\% Disk Read Time
\PhysicalDisk(_Total)\% Disk Read Time
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Read Queue Length
\PhysicalDisk(1)\Avg. Disk Read Queue Length
\PhysicalDisk(2)\Avg. Disk Read Queue Length
\PhysicalDisk(3)\Avg. Disk Read Queue Length
\PhysicalDisk(4)\Avg. Disk Read Queue Length
\PhysicalDisk(5)\Avg. Disk Read Queue Length
\PhysicalDisk(6)\Avg. Disk Read Queue Length
\PhysicalDisk(7)\Avg. Disk Read Queue Length
\PhysicalDisk(8)\Avg. Disk Read Queue Length
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Read Queue Length
\PhysicalDisk(_Total)\Avg. Disk Read Queue Length
\PhysicalDisk(0 C: D: F: E:)\% Disk Write Time
\PhysicalDisk(1)\% Disk Write Time
\PhysicalDisk(2)\% Disk Write Time
\PhysicalDisk(3)\% Disk Write Time
\PhysicalDisk(4)\% Disk Write Time
\PhysicalDisk(5)\% Disk Write Time
\PhysicalDisk(6)\% Disk Write Time
\PhysicalDisk(7)\% Disk Write Time
\PhysicalDisk(8)\% Disk Write Time
\PhysicalDisk(9 H: I: J: K:)\% Disk Write Time
\PhysicalDisk(_Total)\% Disk Write Time
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Write Queue Length
\PhysicalDisk(1)\Avg. Disk Write Queue Length
\PhysicalDisk(2)\Avg. Disk Write Queue Length
\PhysicalDisk(3)\Avg. Disk Write Queue Length
\PhysicalDisk(4)\Avg. Disk Write Queue Length
\PhysicalDisk(5)\Avg. Disk Write Queue Length
\PhysicalDisk(6)\Avg. Disk Write Queue Length
\PhysicalDisk(7)\Avg. Disk Write Queue Length
\PhysicalDisk(8)\Avg. Disk Write Queue Length
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Write Queue Length
\PhysicalDisk(_Total)\Avg. Disk Write Queue Length
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk sec/Transfer
\PhysicalDisk(1)\Avg. Disk sec/Transfer
\PhysicalDisk(2)\Avg. Disk sec/Transfer
\PhysicalDisk(3)\Avg. Disk sec/Transfer
\PhysicalDisk(4)\Avg. Disk sec/Transfer
\PhysicalDisk(5)\Avg. Disk sec/Transfer
\PhysicalDisk(6)\Avg. Disk sec/Transfer
\PhysicalDisk(7)\Avg. Disk sec/Transfer
\PhysicalDisk(8)\Avg. Disk sec/Transfer
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk sec/Transfer
\PhysicalDisk(_Total)\Avg. Disk sec/Transfer
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk sec/Read
\PhysicalDisk(1)\Avg. Disk sec/Read
\PhysicalDisk(2)\Avg. Disk sec/Read
\PhysicalDisk(3)\Avg. Disk sec/Read
\PhysicalDisk(4)\Avg. Disk sec/Read
\PhysicalDisk(5)\Avg. Disk sec/Read
\PhysicalDisk(6)\Avg. Disk sec/Read
\PhysicalDisk(7)\Avg. Disk sec/Read
\PhysicalDisk(8)\Avg. Disk sec/Read
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk sec/Read
\PhysicalDisk(_Total)\Avg. Disk sec/Read
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk sec/Write
\PhysicalDisk(1)\Avg. Disk sec/Write
\PhysicalDisk(2)\Avg. Disk sec/Write
\PhysicalDisk(3)\Avg. Disk sec/Write
\PhysicalDisk(4)\Avg. Disk sec/Write
\PhysicalDisk(5)\Avg. Disk sec/Write
\PhysicalDisk(6)\Avg. Disk sec/Write
\PhysicalDisk(7)\Avg. Disk sec/Write
\PhysicalDisk(8)\Avg. Disk sec/Write
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk sec/Write
\PhysicalDisk(_Total)\Avg. Disk sec/Write
\PhysicalDisk(0 C: D: F: E:)\Disk Transfers/sec
\PhysicalDisk(1)\Disk Transfers/sec
\PhysicalDisk(2)\Disk Transfers/sec
\PhysicalDisk(3)\Disk Transfers/sec
\PhysicalDisk(4)\Disk Transfers/sec
\PhysicalDisk(5)\Disk Transfers/sec
\PhysicalDisk(6)\Disk Transfers/sec
\PhysicalDisk(7)\Disk Transfers/sec
\PhysicalDisk(8)\Disk Transfers/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Transfers/sec
\PhysicalDisk(_Total)\Disk Transfers/sec
\PhysicalDisk(0 C: D: F: E:)\Disk Reads/sec
\PhysicalDisk(1)\Disk Reads/sec
\PhysicalDisk(2)\Disk Reads/sec
\PhysicalDisk(3)\Disk Reads/sec
\PhysicalDisk(4)\Disk Reads/sec
\PhysicalDisk(5)\Disk Reads/sec
\PhysicalDisk(6)\Disk Reads/sec
\PhysicalDisk(7)\Disk Reads/sec
\PhysicalDisk(8)\Disk Reads/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Reads/sec
\PhysicalDisk(_Total)\Disk Reads/sec
\PhysicalDisk(0 C: D: F: E:)\Disk Writes/sec
\PhysicalDisk(1)\Disk Writes/sec
\PhysicalDisk(2)\Disk Writes/sec
\PhysicalDisk(3)\Disk Writes/sec
\PhysicalDisk(4)\Disk Writes/sec
\PhysicalDisk(5)\Disk Writes/sec
\PhysicalDisk(6)\Disk Writes/sec
\PhysicalDisk(7)\Disk Writes/sec
\PhysicalDisk(8)\Disk Writes/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Writes/sec
\PhysicalDisk(_Total)\Disk Writes/sec
\PhysicalDisk(0 C: D: F: E:)\Disk Bytes/sec
\PhysicalDisk(1)\Disk Bytes/sec
\PhysicalDisk(2)\Disk Bytes/sec
\PhysicalDisk(3)\Disk Bytes/sec
\PhysicalDisk(4)\Disk Bytes/sec
\PhysicalDisk(5)\Disk Bytes/sec
\PhysicalDisk(6)\Disk Bytes/sec
\PhysicalDisk(7)\Disk Bytes/sec
\PhysicalDisk(8)\Disk Bytes/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Bytes/sec
\PhysicalDisk(_Total)\Disk Bytes/sec
\PhysicalDisk(0 C: D: F: E:)\Disk Read Bytes/sec
\PhysicalDisk(1)\Disk Read Bytes/sec
\PhysicalDisk(2)\Disk Read Bytes/sec
\PhysicalDisk(3)\Disk Read Bytes/sec
\PhysicalDisk(4)\Disk Read Bytes/sec
\PhysicalDisk(5)\Disk Read Bytes/sec
\PhysicalDisk(6)\Disk Read Bytes/sec
\PhysicalDisk(7)\Disk Read Bytes/sec
\PhysicalDisk(8)\Disk Read Bytes/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Read Bytes/sec
\PhysicalDisk(_Total)\Disk Read Bytes/sec
\PhysicalDisk(0 C: D: F: E:)\Disk Write Bytes/sec
\PhysicalDisk(1)\Disk Write Bytes/sec
\PhysicalDisk(2)\Disk Write Bytes/sec
\PhysicalDisk(3)\Disk Write Bytes/sec
\PhysicalDisk(4)\Disk Write Bytes/sec
\PhysicalDisk(5)\Disk Write Bytes/sec
\PhysicalDisk(6)\Disk Write Bytes/sec
\PhysicalDisk(7)\Disk Write Bytes/sec
\PhysicalDisk(8)\Disk Write Bytes/sec
\PhysicalDisk(9 H: I: J: K:)\Disk Write Bytes/sec
\PhysicalDisk(_Total)\Disk Write Bytes/sec
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Bytes/Transfer
\PhysicalDisk(1)\Avg. Disk Bytes/Transfer
\PhysicalDisk(2)\Avg. Disk Bytes/Transfer
\PhysicalDisk(3)\Avg. Disk Bytes/Transfer
\PhysicalDisk(4)\Avg. Disk Bytes/Transfer
\PhysicalDisk(5)\Avg. Disk Bytes/Transfer
\PhysicalDisk(6)\Avg. Disk Bytes/Transfer
\PhysicalDisk(7)\Avg. Disk Bytes/Transfer
\PhysicalDisk(8)\Avg. Disk Bytes/Transfer
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Bytes/Transfer
\PhysicalDisk(_Total)\Avg. Disk Bytes/Transfer
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Bytes/Read
\PhysicalDisk(1)\Avg. Disk Bytes/Read
\PhysicalDisk(2)\Avg. Disk Bytes/Read
\PhysicalDisk(3)\Avg. Disk Bytes/Read
\PhysicalDisk(4)\Avg. Disk Bytes/Read
\PhysicalDisk(5)\Avg. Disk Bytes/Read
\PhysicalDisk(6)\Avg. Disk Bytes/Read
\PhysicalDisk(7)\Avg. Disk Bytes/Read
\PhysicalDisk(8)\Avg. Disk Bytes/Read
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Bytes/Read
\PhysicalDisk(_Total)\Avg. Disk Bytes/Read
\PhysicalDisk(0 C: D: F: E:)\Avg. Disk Bytes/Write
\PhysicalDisk(1)\Avg. Disk Bytes/Write
\PhysicalDisk(2)\Avg. Disk Bytes/Write
\PhysicalDisk(3)\Avg. Disk Bytes/Write
\PhysicalDisk(4)\Avg. Disk Bytes/Write
\PhysicalDisk(5)\Avg. Disk Bytes/Write
\PhysicalDisk(6)\Avg. Disk Bytes/Write
\PhysicalDisk(7)\Avg. Disk Bytes/Write
\PhysicalDisk(8)\Avg. Disk Bytes/Write
\PhysicalDisk(9 H: I: J: K:)\Avg. Disk Bytes/Write
\PhysicalDisk(_Total)\Avg. Disk Bytes/Write
\PhysicalDisk(0 C: D: F: E:)\% Idle Time
\PhysicalDisk(1)\% Idle Time
\PhysicalDisk(2)\% Idle Time
\PhysicalDisk(3)\% Idle Time
\PhysicalDisk(4)\% Idle Time
\PhysicalDisk(5)\% Idle Time
\PhysicalDisk(6)\% Idle Time
\PhysicalDisk(7)\% Idle Time
\PhysicalDisk(8)\% Idle Time
\PhysicalDisk(9 H: I: J: K:)\% Idle Time
\PhysicalDisk(_Total)\% Idle Time
\PhysicalDisk(0 C: D: F: E:)\Split IO/Sec
\PhysicalDisk(1)\Split IO/Sec
\PhysicalDisk(2)\Split IO/Sec
\PhysicalDisk(3)\Split IO/Sec
\PhysicalDisk(4)\Split IO/Sec
\PhysicalDisk(5)\Split IO/Sec
\PhysicalDisk(6)\Split IO/Sec
\PhysicalDisk(7)\Split IO/Sec
\PhysicalDisk(8)\Split IO/Sec
\PhysicalDisk(9 H: I: J: K:)\Split IO/Sec
\PhysicalDisk(_Total)\Split IO/Sec
\Server\Bytes Total/sec
\Server\Bytes Received/sec
\Server\Bytes Transmitted/sec
\Server\Sessions Timed Out
\Server\Sessions Errored Out
\Server\Sessions Logged Off
\Server\Sessions Forced Off
\Server\Errors Logon
\Server\Errors Access Permissions
\Server\Errors Granted Access
\Server\Errors System
\Server\Blocking Requests Rejected
\Server\Work Item Shortages
\Server\Files Opened Total
\Server\Files Open
\Server\Server Sessions
\Server\File Directory Searches
\Server\Pool Nonpaged Bytes
\Server\Pool Nonpaged Failures
\Server\Pool Nonpaged Peak
\Server\Pool Paged Bytes
\Server\Pool Paged Failures
\Server\Pool Paged Peak
\Server\Context Blocks Queued/sec
\Server\Logon/sec
\Server\Logon Total
\Server Work Queues(0)\Queue Length
\Server Work Queues(1)\Queue Length
\Server Work Queues(Blocking Queue)\Queue Length
\Server Work Queues(0)\Active Threads
\Server Work Queues(1)\Active Threads
\Server Work Queues(Blocking Queue)\Active Threads
\Server Work Queues(0)\Available Threads
\Server Work Queues(1)\Available Threads
\Server Work Queues(Blocking Queue)\Available Threads
\Server Work Queues(0)\Available Work Items
\Server Work Queues(1)\Available Work Items
\Server Work Queues(Blocking Queue)\Available Work Items
\Server Work Queues(0)\Borrowed Work Items
\Server Work Queues(1)\Borrowed Work Items
\Server Work Queues(Blocking Queue)\Borrowed Work Items
\Server Work Queues(0)\Work Item Shortages
\Server Work Queues(1)\Work Item Shortages
\Server Work Queues(Blocking Queue)\Work Item Shortages
\Server Work Queues(0)\Current Clients
\Server Work Queues(1)\Current Clients
\Server Work Queues(Blocking Queue)\Current Clients
\Server Work Queues(0)\Bytes Received/sec
\Server Work Queues(1)\Bytes Received/sec
\Server Work Queues(Blocking Queue)\Bytes Received/sec
\Server Work Queues(0)\Bytes Sent/sec
\Server Work Queues(1)\Bytes Sent/sec
\Server Work Queues(Blocking Queue)\Bytes Sent/sec
\Server Work Queues(0)\Bytes Transferred/sec
\Server Work Queues(1)\Bytes Transferred/sec
\Server Work Queues(Blocking Queue)\Bytes Transferred/sec
\Server Work Queues(0)\Read Operations/sec
\Server Work Queues(1)\Read Operations/sec
\Server Work Queues(Blocking Queue)\Read Operations/sec
\Server Work Queues(0)\Read Bytes/sec
\Server Work Queues(1)\Read Bytes/sec
\Server Work Queues(Blocking Queue)\Read Bytes/sec
\Server Work Queues(0)\Write Operations/sec
\Server Work Queues(1)\Write Operations/sec
\Server Work Queues(Blocking Queue)\Write Operations/sec
\Server Work Queues(0)\Write Bytes/sec
\Server Work Queues(1)\Write Bytes/sec
\Server Work Queues(Blocking Queue)\Write Bytes/sec
\Server Work Queues(0)\Total Bytes/sec
\Server Work Queues(1)\Total Bytes/sec
\Server Work Queues(Blocking Queue)\Total Bytes/sec
\Server Work Queues(0)\Total Operations/sec
\Server Work Queues(1)\Total Operations/sec
\Server Work Queues(Blocking Queue)\Total Operations/sec
\Server Work Queues(0)\Context Blocks Queued/sec
\Server Work Queues(1)\Context Blocks Queued/sec
\Server Work Queues(Blocking Queue)\Context Blocks Queued/sec
\Redirector\Bytes Total/sec
\Redirector\File Data Operations/sec
\Redirector\Packets/sec
\Redirector\Bytes Received/sec
\Redirector\Packets Received/sec
\Redirector\Read Bytes Paging/sec
\Redirector\Read Bytes Non-Paging/sec
\Redirector\Read Bytes Cache/sec
\Redirector\Read Bytes Network/sec
\Redirector\Bytes Transmitted/sec
\Redirector\Packets Transmitted/sec
\Redirector\Write Bytes Paging/sec
\Redirector\Write Bytes Non-Paging/sec
\Redirector\Write Bytes Cache/sec
\Redirector\Write Bytes Network/sec
\Redirector\File Read Operations/sec
\Redirector\Read Operations Random/sec
\Redirector\Read Packets/sec
\Redirector\Reads Large/sec
\Redirector\Read Packets Small/sec
\Redirector\File Write Operations/sec
\Redirector\Write Operations Random/sec
\Redirector\Write Packets/sec
\Redirector\Writes Large/sec
\Redirector\Write Packets Small/sec
\Redirector\Reads Denied/sec
\Redirector\Writes Denied/sec
\Redirector\Network Errors/sec
\Redirector\Server Sessions
\Redirector\Server Reconnects
\Redirector\Connects Core
\Redirector\Connects Lan Manager 2.0
\Redirector\Connects Lan Manager 2.1
\Redirector\Connects Windows NT
\Redirector\Server Disconnects
\Redirector\Server Sessions Hung
\Redirector\Current Commands
\Browser\Announcements Server/sec
\Browser\Announcements Domain/sec
\Browser\Announcements Total/sec
\Browser\Election Packets/sec
\Browser\Mailslot Writes/sec
\Browser\Server List Requests/sec
\Browser\Enumerations Server/sec
\Browser\Enumerations Domain/sec
\Browser\Enumerations Other/sec
\Browser\Enumerations Total/sec
\Browser\Missed Server Announcements
\Browser\Missed Mailslot Datagrams
\Browser\Missed Server List Requests
\Browser\Server Announce Allocations Failed/sec
\Browser\Mailslot Allocations Failed
\Browser\Mailslot Receives Failed
\Browser\Mailslot Writes Failed
\Browser\Mailslot Opens Failed/sec
\Browser\Duplicate Master Announcements
\Browser\Illegal Datagrams/sec
\Cache\Data Maps/sec
\Cache\Sync Data Maps/sec
\Cache\Async Data Maps/sec
\Cache\Data Map Hits %
\Cache\Data Map Pins/sec
\Cache\Pin Reads/sec
\Cache\Sync Pin Reads/sec
\Cache\Async Pin Reads/sec
\Cache\Pin Read Hits %
\Cache\Copy Reads/sec
\Cache\Sync Copy Reads/sec
\Cache\Async Copy Reads/sec
\Cache\Copy Read Hits %
\Cache\MDL Reads/sec
\Cache\Sync MDL Reads/sec
\Cache\Async MDL Reads/sec
\Cache\MDL Read Hits %
\Cache\Read Aheads/sec
\Cache\Fast Reads/sec
\Cache\Sync Fast Reads/sec
\Cache\Async Fast Reads/sec
\Cache\Fast Read Resource Misses/sec
\Cache\Fast Read Not Possibles/sec
\Cache\Lazy Write Flushes/sec
\Cache\Lazy Write Pages/sec
\Cache\Data Flushes/sec
\Cache\Data Flush Pages/sec
\Processor(0)\% Processor Time
\Processor(1)\% Processor Time
\Processor(_Total)\% Processor Time
\Processor(0)\% User Time ;cpu 占用率
\Processor(1)\% User Time ;
\Processor(_Total)\% User Time ;cpu占用率. 
\Processor(0)\% Privileged Time
\Processor(1)\% Privileged Time
\Processor(_Total)\% Privileged Time
\Processor(0)\Interrupts/sec
\Processor(1)\Interrupts/sec
\Processor(_Total)\Interrupts/sec
\Processor(0)\% DPC Time
\Processor(1)\% DPC Time
\Processor(_Total)\% DPC Time
\Processor(0)\% Interrupt Time
\Processor(1)\% Interrupt Time
\Processor(_Total)\% Interrupt Time
\Processor(0)\DPCs Queued/sec
\Processor(1)\DPCs Queued/sec
\Processor(_Total)\DPCs Queued/sec
\Processor(0)\DPC Rate
\Processor(1)\DPC Rate
\Processor(_Total)\DPC Rate
\Processor(0)\% Idle Time
\Processor(1)\% Idle Time
\Processor(_Total)\% Idle Time
\Processor(0)\% C1 Time
\Processor(1)\% C1 Time
\Processor(_Total)\% C1 Time
\Processor(0)\% C2 Time
\Processor(1)\% C2 Time
\Processor(_Total)\% C2 Time
\Processor(0)\% C3 Time
\Processor(1)\% C3 Time
\Processor(_Total)\% C3 Time
\Processor(0)\C1 Transitions/sec
\Processor(1)\C1 Transitions/sec
\Processor(_Total)\C1 Transitions/sec
\Processor(0)\C2 Transitions/sec
\Processor(1)\C2 Transitions/sec
\Processor(_Total)\C2 Transitions/sec
\Processor(0)\C3 Transitions/sec
\Processor(1)\C3 Transitions/sec
\Processor(_Total)\C3 Transitions/sec
\Memory\Page Faults/sec
\Memory\Available Bytes
\Memory\Committed Bytes
\Memory\Commit Limit
\Memory\Write Copies/sec
\Memory\Transition Faults/sec
\Memory\Cache Faults/sec
\Memory\Demand Zero Faults/sec
\Memory\Pages/sec
\Memory\Pages Input/sec
\Memory\Page Reads/sec
\Memory\Pages Output/sec
\Memory\Pool Paged Bytes
\Memory\Pool Nonpaged Bytes
\Memory\Page Writes/sec
\Memory\Pool Paged Allocs
\Memory\Pool Nonpaged Allocs
\Memory\Free System Page Table Entries
\Memory\Cache Bytes
\Memory\Cache Bytes Peak
\Memory\Pool Paged Resident Bytes
\Memory\System Code Total Bytes
\Memory\System Code Resident Bytes
\Memory\System Driver Total Bytes
\Memory\System Driver Resident Bytes
\Memory\System Cache Resident Bytes
\Memory\% Committed Bytes In Use
\Memory\Available KBytes
\Memory\Available MBytes
\Objects\Processes
\Objects\Threads
\Objects\Events
\Objects\Semaphores
\Objects\Mutexes
\Objects\Sections
\Paging File(\??\C:\pagefile.sys)\% Usage
\Paging File(_Total)\% Usage
\Paging File(\??\C:\pagefile.sys)\% Usage Peak
\Paging File(_Total)\% Usage Peak
\System\File Read Operations/sec
\System\File Write Operations/sec
\System\File Control Operations/sec
\System\File Read Bytes/sec
\System\File Write Bytes/sec
\System\File Control Bytes/sec
\System\Context Switches/sec
\System\System Calls/sec
\System\File Data Operations/sec
\System\System Up Time #uptime
\System\Processor Queue Length
\System\Processes
\System\Threads
\System\Alignment Fixups/sec
\System\Exception Dispatches/sec
\System\Floating Emulations/sec
\System\% Registry Quota In Use
\Process(Idle)\% Processor Time
\Process(System)\% Processor Time
\Process(smss)\% Processor Time
\Process(csrss)\% Processor Time
\Process(winlogon)\% Processor Time
\Process(services)\% Processor Time
\Process(lsass)\% Processor Time
\Process(svchost)\% Processor Time
\Process(svchost#1)\% Processor Time
\Process(svchost#2)\% Processor Time
\Process(svchost#3)\% Processor Time
\Process(svchost#4)\% Processor Time
\Process(kxedefend)\% Processor Time
\Process(kxescore)\% Processor Time
\Process(KSafeSvc)\% Processor Time
\Process(kxesapp)\% Processor Time
\Process(spoolsv)\% Processor Time
\Process(alg)\% Processor Time
\Process(AsistService)\% Processor Time
\Process(DSRSvc)\% Processor Time
\Process(FolderSizeSvc)\% Processor Time
\Process(GSGIOSRV)\% Processor Time
\Process(upsvc)\% Processor Time
\Process(mdm)\% Processor Time
\Process(rtiosrv)\% Processor Time
\Process(ManagerClient)\% Processor Time
\Process(sqlwriter)\% Processor Time
\Process(vmware-usbarbitrator)\% Processor Time
\Process(vmnat)\% Processor Time
\Process(vmnetdhcp)\% Processor Time
\Process(vmware-authd)\% Processor Time
\Process(explorer)\% Processor Time
\Process(TSVNCache)\% Processor Time
\Process(igfxtray)\% Processor Time
\Process(hkcmd)\% Processor Time
\Process(igfxpers)\% Processor Time
\Process(KSafeTray)\% Processor Time
\Process(kxetray)\% Processor Time
\Process(igfxsrvc)\% Processor Time
\Process(Ext2Mgr)\% Processor Time
\Process(RTHDCPL)\% Processor Time
\Process(OfficeIM)\% Processor Time
\Process(vmware-tray)\% Processor Time
\Process(msnmsgr)\% Processor Time
\Process(ctfmon)\% Processor Time
\Process(VVCap)\% Processor Time
\Process(wlcomm)\% Processor Time
\Process(WPFFontCache_v0400)\% Processor Time
\Process(KuGoo)\% Processor Time
\Process(firefox)\% Processor Time
\Process(vmware)\% Processor Time
\Process(taskmgr)\% Processor Time
\Process(SshClient)\% Processor Time
\Process(Thunder5)\% Processor Time
\Process(cmd)\% Processor Time
\Process(typeperf)\% Processor Time
\Process(_Total)\% Processor Time
\Process(Idle)\% User Time
\Process(System)\% User Time
\Process(smss)\% User Time
\Process(csrss)\% User Time
\Process(winlogon)\% User Time
\Process(services)\% User Time
\Process(lsass)\% User Time
\Process(svchost)\% User Time
\Process(svchost#1)\% User Time
\Process(svchost#2)\% User Time
\Process(svchost#3)\% User Time
\Process(svchost#4)\% User Time
\Process(kxedefend)\% User Time
\Process(kxescore)\% User Time
\Process(KSafeSvc)\% User Time
\Process(kxesapp)\% User Time
\Process(spoolsv)\% User Time
\Process(alg)\% User Time
\Process(AsistService)\% User Time
\Process(DSRSvc)\% User Time
\Process(FolderSizeSvc)\% User Time
\Process(GSGIOSRV)\% User Time
\Process(upsvc)\% User Time
\Process(mdm)\% User Time
\Process(rtiosrv)\% User Time
\Process(ManagerClient)\% User Time
\Process(sqlwriter)\% User Time
\Process(vmware-usbarbitrator)\% User Time
\Process(vmnat)\% User Time
\Process(vmnetdhcp)\% User Time
\Process(vmware-authd)\% User Time
\Process(explorer)\% User Time
\Process(TSVNCache)\% User Time
\Process(igfxtray)\% User Time
\Process(hkcmd)\% User Time
\Process(igfxpers)\% User Time
\Process(KSafeTray)\% User Time
\Process(kxetray)\% User Time
\Process(igfxsrvc)\% User Time
\Process(Ext2Mgr)\% User Time
\Process(RTHDCPL)\% User Time
\Process(OfficeIM)\% User Time
\Process(vmware-tray)\% User Time
\Process(msnmsgr)\% User Time
\Process(ctfmon)\% User Time
\Process(VVCap)\% User Time
\Process(wlcomm)\% User Time
\Process(WPFFontCache_v0400)\% User Time
\Process(KuGoo)\% User Time
\Process(firefox)\% User Time
\Process(vmware)\% User Time
\Process(taskmgr)\% User Time
\Process(SshClient)\% User Time
\Process(Thunder5)\% User Time
\Process(cmd)\% User Time
\Process(typeperf)\% User Time
\Process(_Total)\% User Time
\Process(Idle)\% Privileged Time
\Process(System)\% Privileged Time
\Process(smss)\% Privileged Time
\Process(csrss)\% Privileged Time
\Process(winlogon)\% Privileged Time
\Process(services)\% Privileged Time
\Process(lsass)\% Privileged Time
\Process(svchost)\% Privileged Time
\Process(svchost#1)\% Privileged Time
\Process(svchost#2)\% Privileged Time
\Process(svchost#3)\% Privileged Time
\Process(svchost#4)\% Privileged Time
\Process(kxedefend)\% Privileged Time
\Process(kxescore)\% Privileged Time
\Process(KSafeSvc)\% Privileged Time
\Process(kxesapp)\% Privileged Time
\Process(spoolsv)\% Privileged Time
\Process(alg)\% Privileged Time
\Process(AsistService)\% Privileged Time
\Process(DSRSvc)\% Privileged Time
\Process(FolderSizeSvc)\% Privileged Time
\Process(GSGIOSRV)\% Privileged Time
\Process(upsvc)\% Privileged Time
\Process(mdm)\% Privileged Time
\Process(rtiosrv)\% Privileged Time
\Process(ManagerClient)\% Privileged Time
\Process(sqlwriter)\% Privileged Time
\Process(vmware-usbarbitrator)\% Privileged Time
\Process(vmnat)\% Privileged Time
\Process(vmnetdhcp)\% Privileged Time
\Process(vmware-authd)\% Privileged Time
\Process(explorer)\% Privileged Time
\Process(TSVNCache)\% Privileged Time
\Process(igfxtray)\% Privileged Time
\Process(hkcmd)\% Privileged Time
\Process(igfxpers)\% Privileged Time
\Process(KSafeTray)\% Privileged Time
\Process(kxetray)\% Privileged Time
\Process(igfxsrvc)\% Privileged Time
\Process(Ext2Mgr)\% Privileged Time
\Process(RTHDCPL)\% Privileged Time
\Process(OfficeIM)\% Privileged Time
\Process(vmware-tray)\% Privileged Time
\Process(msnmsgr)\% Privileged Time
\Process(ctfmon)\% Privileged Time
\Process(VVCap)\% Privileged Time
\Process(wlcomm)\% Privileged Time
\Process(WPFFontCache_v0400)\% Privileged Time
\Process(KuGoo)\% Privileged Time
\Process(firefox)\% Privileged Time
\Process(vmware)\% Privileged Time
\Process(taskmgr)\% Privileged Time
\Process(SshClient)\% Privileged Time
\Process(Thunder5)\% Privileged Time
\Process(cmd)\% Privileged Time
\Process(typeperf)\% Privileged Time
\Process(_Total)\% Privileged Time
\Process(Idle)\Virtual Bytes Peak
\Process(System)\Virtual Bytes Peak
\Process(smss)\Virtual Bytes Peak
\Process(csrss)\Virtual Bytes Peak
\Process(winlogon)\Virtual Bytes Peak
\Process(services)\Virtual Bytes Peak
\Process(lsass)\Virtual Bytes Peak
\Process(svchost)\Virtual Bytes Peak
\Process(svchost#1)\Virtual Bytes Peak
\Process(svchost#2)\Virtual Bytes Peak
\Process(svchost#3)\Virtual Bytes Peak
\Process(svchost#4)\Virtual Bytes Peak
\Process(kxedefend)\Virtual Bytes Peak
\Process(kxescore)\Virtual Bytes Peak
\Process(KSafeSvc)\Virtual Bytes Peak
\Process(kxesapp)\Virtual Bytes Peak
\Process(spoolsv)\Virtual Bytes Peak
\Process(alg)\Virtual Bytes Peak
\Process(AsistService)\Virtual Bytes Peak
\Process(DSRSvc)\Virtual Bytes Peak
\Process(FolderSizeSvc)\Virtual Bytes Peak
\Process(GSGIOSRV)\Virtual Bytes Peak
\Process(upsvc)\Virtual Bytes Peak
\Process(mdm)\Virtual Bytes Peak
\Process(rtiosrv)\Virtual Bytes Peak
\Process(ManagerClient)\Virtual Bytes Peak
\Process(sqlwriter)\Virtual Bytes Peak
\Process(vmware-usbarbitrator)\Virtual Bytes Peak
\Process(vmnat)\Virtual Bytes Peak
\Process(vmnetdhcp)\Virtual Bytes Peak
\Process(vmware-authd)\Virtual Bytes Peak
\Process(explorer)\Virtual Bytes Peak
\Process(TSVNCache)\Virtual Bytes Peak
\Process(igfxtray)\Virtual Bytes Peak
\Process(hkcmd)\Virtual Bytes Peak
\Process(igfxpers)\Virtual Bytes Peak
\Process(KSafeTray)\Virtual Bytes Peak
\Process(kxetray)\Virtual Bytes Peak
\Process(igfxsrvc)\Virtual Bytes Peak
\Process(Ext2Mgr)\Virtual Bytes Peak
\Process(RTHDCPL)\Virtual Bytes Peak
\Process(OfficeIM)\Virtual Bytes Peak
\Process(vmware-tray)\Virtual Bytes Peak
\Process(msnmsgr)\Virtual Bytes Peak
\Process(ctfmon)\Virtual Bytes Peak
\Process(VVCap)\Virtual Bytes Peak
\Process(wlcomm)\Virtual Bytes Peak
\Process(WPFFontCache_v0400)\Virtual Bytes Peak
\Process(KuGoo)\Virtual Bytes Peak
\Process(firefox)\Virtual Bytes Peak
\Process(vmware)\Virtual Bytes Peak
\Process(taskmgr)\Virtual Bytes Peak
\Process(SshClient)\Virtual Bytes Peak
\Process(Thunder5)\Virtual Bytes Peak
\Process(cmd)\Virtual Bytes Peak
\Process(typeperf)\Virtual Bytes Peak
\Process(_Total)\Virtual Bytes Peak
\Process(Idle)\Virtual Bytes
\Process(System)\Virtual Bytes
\Process(smss)\Virtual Bytes
\Process(csrss)\Virtual Bytes
\Process(winlogon)\Virtual Bytes
\Process(services)\Virtual Bytes
\Process(lsass)\Virtual Bytes
\Process(svchost)\Virtual Bytes
\Process(svchost#1)\Virtual Bytes
\Process(svchost#2)\Virtual Bytes
\Process(svchost#3)\Virtual Bytes
\Process(svchost#4)\Virtual Bytes
\Process(kxedefend)\Virtual Bytes
\Process(kxescore)\Virtual Bytes
\Process(KSafeSvc)\Virtual Bytes
\Process(kxesapp)\Virtual Bytes
\Process(spoolsv)\Virtual Bytes
\Process(alg)\Virtual Bytes
\Process(AsistService)\Virtual Bytes
\Process(DSRSvc)\Virtual Bytes
\Process(FolderSizeSvc)\Virtual Bytes
\Process(GSGIOSRV)\Virtual Bytes
\Process(upsvc)\Virtual Bytes
\Process(mdm)\Virtual Bytes
\Process(rtiosrv)\Virtual Bytes
\Process(ManagerClient)\Virtual Bytes
\Process(sqlwriter)\Virtual Bytes
\Process(vmware-usbarbitrator)\Virtual Bytes
\Process(vmnat)\Virtual Bytes
\Process(vmnetdhcp)\Virtual Bytes
\Process(vmware-authd)\Virtual Bytes
\Process(explorer)\Virtual Bytes
\Process(TSVNCache)\Virtual Bytes
\Process(igfxtray)\Virtual Bytes
\Process(hkcmd)\Virtual Bytes
\Process(igfxpers)\Virtual Bytes
\Process(KSafeTray)\Virtual Bytes
\Process(kxetray)\Virtual Bytes
\Process(igfxsrvc)\Virtual Bytes
\Process(Ext2Mgr)\Virtual Bytes
\Process(RTHDCPL)\Virtual Bytes
\Process(OfficeIM)\Virtual Bytes
\Process(vmware-tray)\Virtual Bytes
\Process(msnmsgr)\Virtual Bytes
\Process(ctfmon)\Virtual Bytes
\Process(VVCap)\Virtual Bytes
\Process(wlcomm)\Virtual Bytes
\Process(WPFFontCache_v0400)\Virtual Bytes
\Process(KuGoo)\Virtual Bytes
\Process(firefox)\Virtual Bytes
\Process(vmware)\Virtual Bytes
\Process(taskmgr)\Virtual Bytes
\Process(SshClient)\Virtual Bytes
\Process(Thunder5)\Virtual Bytes
\Process(cmd)\Virtual Bytes
\Process(typeperf)\Virtual Bytes
\Process(_Total)\Virtual Bytes
\Process(Idle)\Page Faults/sec
\Process(System)\Page Faults/sec
\Process(smss)\Page Faults/sec
\Process(csrss)\Page Faults/sec
\Process(winlogon)\Page Faults/sec
\Process(services)\Page Faults/sec
\Process(lsass)\Page Faults/sec
\Process(svchost)\Page Faults/sec
\Process(svchost#1)\Page Faults/sec
\Process(svchost#2)\Page Faults/sec
\Process(svchost#3)\Page Faults/sec
\Process(svchost#4)\Page Faults/sec
\Process(kxedefend)\Page Faults/sec
\Process(kxescore)\Page Faults/sec
\Process(KSafeSvc)\Page Faults/sec
\Process(kxesapp)\Page Faults/sec
\Process(spoolsv)\Page Faults/sec
\Process(alg)\Page Faults/sec
\Process(AsistService)\Page Faults/sec
\Process(DSRSvc)\Page Faults/sec
\Process(FolderSizeSvc)\Page Faults/sec
\Process(GSGIOSRV)\Page Faults/sec
\Process(upsvc)\Page Faults/sec
\Process(mdm)\Page Faults/sec
\Process(rtiosrv)\Page Faults/sec
\Process(ManagerClient)\Page Faults/sec
\Process(sqlwriter)\Page Faults/sec
\Process(vmware-usbarbitrator)\Page Faults/sec
\Process(vmnat)\Page Faults/sec
\Process(vmnetdhcp)\Page Faults/sec
\Process(vmware-authd)\Page Faults/sec
\Process(explorer)\Page Faults/sec
\Process(TSVNCache)\Page Faults/sec
\Process(igfxtray)\Page Faults/sec
\Process(hkcmd)\Page Faults/sec
\Process(igfxpers)\Page Faults/sec
\Process(KSafeTray)\Page Faults/sec
\Process(kxetray)\Page Faults/sec
\Process(igfxsrvc)\Page Faults/sec
\Process(Ext2Mgr)\Page Faults/sec
\Process(RTHDCPL)\Page Faults/sec
\Process(OfficeIM)\Page Faults/sec
\Process(vmware-tray)\Page Faults/sec
\Process(msnmsgr)\Page Faults/sec
\Process(ctfmon)\Page Faults/sec
\Process(VVCap)\Page Faults/sec
\Process(wlcomm)\Page Faults/sec
\Process(WPFFontCache_v0400)\Page Faults/sec
\Process(KuGoo)\Page Faults/sec
\Process(firefox)\Page Faults/sec
\Process(vmware)\Page Faults/sec
\Process(taskmgr)\Page Faults/sec
\Process(SshClient)\Page Faults/sec
\Process(Thunder5)\Page Faults/sec
\Process(cmd)\Page Faults/sec
\Process(typeperf)\Page Faults/sec
\Process(_Total)\Page Faults/sec
\Process(Idle)\Working Set Peak
\Process(System)\Working Set Peak
\Process(smss)\Working Set Peak
\Process(csrss)\Working Set Peak
\Process(winlogon)\Working Set Peak
\Process(services)\Working Set Peak
\Process(lsass)\Working Set Peak
\Process(svchost)\Working Set Peak
\Process(svchost#1)\Working Set Peak
\Process(svchost#2)\Working Set Peak
\Process(svchost#3)\Working Set Peak
\Process(svchost#4)\Working Set Peak
\Process(kxedefend)\Working Set Peak
\Process(kxescore)\Working Set Peak
\Process(KSafeSvc)\Working Set Peak
\Process(kxesapp)\Working Set Peak
\Process(spoolsv)\Working Set Peak
\Process(alg)\Working Set Peak
\Process(AsistService)\Working Set Peak
\Process(DSRSvc)\Working Set Peak
\Process(FolderSizeSvc)\Working Set Peak
\Process(GSGIOSRV)\Working Set Peak
\Process(upsvc)\Working Set Peak
\Process(mdm)\Working Set Peak
\Process(rtiosrv)\Working Set Peak
\Process(ManagerClient)\Working Set Peak
\Process(sqlwriter)\Working Set Peak
\Process(vmware-usbarbitrator)\Working Set Peak
\Process(vmnat)\Working Set Peak
\Process(vmnetdhcp)\Working Set Peak
\Process(vmware-authd)\Working Set Peak
\Process(explorer)\Working Set Peak
\Process(TSVNCache)\Working Set Peak
\Process(igfxtray)\Working Set Peak
\Process(hkcmd)\Working Set Peak
\Process(igfxpers)\Working Set Peak
\Process(KSafeTray)\Working Set Peak
\Process(kxetray)\Working Set Peak
\Process(igfxsrvc)\Working Set Peak
\Process(Ext2Mgr)\Working Set Peak
\Process(RTHDCPL)\Working Set Peak
\Process(OfficeIM)\Working Set Peak
\Process(vmware-tray)\Working Set Peak
\Process(msnmsgr)\Working Set Peak
\Process(ctfmon)\Working Set Peak
\Process(VVCap)\Working Set Peak
\Process(wlcomm)\Working Set Peak
\Process(WPFFontCache_v0400)\Working Set Peak
\Process(KuGoo)\Working Set Peak
\Process(firefox)\Working Set Peak
\Process(vmware)\Working Set Peak
\Process(taskmgr)\Working Set Peak
\Process(SshClient)\Working Set Peak
\Process(Thunder5)\Working Set Peak
\Process(cmd)\Working Set Peak
\Process(typeperf)\Working Set Peak
\Process(_Total)\Working Set Peak
\Process(Idle)\Working Set
\Process(System)\Working Set
\Process(smss)\Working Set
\Process(csrss)\Working Set
\Process(winlogon)\Working Set
\Process(services)\Working Set
\Process(lsass)\Working Set
\Process(svchost)\Working Set
\Process(svchost#1)\Working Set
\Process(svchost#2)\Working Set
\Process(svchost#3)\Working Set
\Process(svchost#4)\Working Set
\Process(kxedefend)\Working Set
\Process(kxescore)\Working Set
\Process(KSafeSvc)\Working Set
\Process(kxesapp)\Working Set
\Process(spoolsv)\Working Set
\Process(alg)\Working Set
\Process(AsistService)\Working Set
\Process(DSRSvc)\Working Set
\Process(FolderSizeSvc)\Working Set
\Process(GSGIOSRV)\Working Set
\Process(upsvc)\Working Set
\Process(mdm)\Working Set
\Process(rtiosrv)\Working Set
\Process(ManagerClient)\Working Set
\Process(sqlwriter)\Working Set
\Process(vmware-usbarbitrator)\Working Set
\Process(vmnat)\Working Set
\Process(vmnetdhcp)\Working Set
\Process(vmware-authd)\Working Set
\Process(explorer)\Working Set
\Process(TSVNCache)\Working Set
\Process(igfxtray)\Working Set
\Process(hkcmd)\Working Set
\Process(igfxpers)\Working Set
\Process(KSafeTray)\Working Set
\Process(kxetray)\Working Set
\Process(igfxsrvc)\Working Set
\Process(Ext2Mgr)\Working Set
\Process(RTHDCPL)\Working Set
\Process(OfficeIM)\Working Set
\Process(vmware-tray)\Working Set
\Process(msnmsgr)\Working Set
\Process(ctfmon)\Working Set
\Process(VVCap)\Working Set
\Process(wlcomm)\Working Set
\Process(WPFFontCache_v0400)\Working Set
\Process(KuGoo)\Working Set
\Process(firefox)\Working Set
\Process(vmware)\Working Set
\Process(taskmgr)\Working Set
\Process(SshClient)\Working Set
\Process(Thunder5)\Working Set
\Process(cmd)\Working Set
\Process(typeperf)\Working Set
\Process(_Total)\Working Set
\Process(Idle)\Page File Bytes Peak
\Process(System)\Page File Bytes Peak
\Process(smss)\Page File Bytes Peak
\Process(csrss)\Page File Bytes Peak
\Process(winlogon)\Page File Bytes Peak
\Process(services)\Page File Bytes Peak
\Process(lsass)\Page File Bytes Peak
\Process(svchost)\Page File Bytes Peak
\Process(svchost#1)\Page File Bytes Peak
\Process(svchost#2)\Page File Bytes Peak
\Process(svchost#3)\Page File Bytes Peak
\Process(svchost#4)\Page File Bytes Peak
\Process(kxedefend)\Page File Bytes Peak
\Process(kxescore)\Page File Bytes Peak
\Process(KSafeSvc)\Page File Bytes Peak
\Process(kxesapp)\Page File Bytes Peak
\Process(spoolsv)\Page File Bytes Peak
\Process(alg)\Page File Bytes Peak
\Process(AsistService)\Page File Bytes Peak
\Process(DSRSvc)\Page File Bytes Peak
\Process(FolderSizeSvc)\Page File Bytes Peak
\Process(GSGIOSRV)\Page File Bytes Peak
\Process(upsvc)\Page File Bytes Peak
\Process(mdm)\Page File Bytes Peak
\Process(rtiosrv)\Page File Bytes Peak
\Process(ManagerClient)\Page File Bytes Peak
\Process(sqlwriter)\Page File Bytes Peak
\Process(vmware-usbarbitrator)\Page File Bytes Peak
\Process(vmnat)\Page File Bytes Peak
\Process(vmnetdhcp)\Page File Bytes Peak
\Process(vmware-authd)\Page File Bytes Peak
\Process(explorer)\Page File Bytes Peak
\Process(TSVNCache)\Page File Bytes Peak
\Process(igfxtray)\Page File Bytes Peak
\Process(hkcmd)\Page File Bytes Peak
\Process(igfxpers)\Page File Bytes Peak
\Process(KSafeTray)\Page File Bytes Peak
\Process(kxetray)\Page File Bytes Peak
\Process(igfxsrvc)\Page File Bytes Peak
\Process(Ext2Mgr)\Page File Bytes Peak
\Process(RTHDCPL)\Page File Bytes Peak
\Process(OfficeIM)\Page File Bytes Peak
\Process(vmware-tray)\Page File Bytes Peak
\Process(msnmsgr)\Page File Bytes Peak
\Process(ctfmon)\Page File Bytes Peak
\Process(VVCap)\Page File Bytes Peak
\Process(wlcomm)\Page File Bytes Peak
\Process(WPFFontCache_v0400)\Page File Bytes Peak
\Process(KuGoo)\Page File Bytes Peak
\Process(firefox)\Page File Bytes Peak
\Process(vmware)\Page File Bytes Peak
\Process(taskmgr)\Page File Bytes Peak
\Process(SshClient)\Page File Bytes Peak
\Process(Thunder5)\Page File Bytes Peak
\Process(cmd)\Page File Bytes Peak
\Process(typeperf)\Page File Bytes Peak
\Process(_Total)\Page File Bytes Peak
\Process(Idle)\Page File Bytes
\Process(System)\Page File Bytes
\Process(smss)\Page File Bytes
\Process(csrss)\Page File Bytes
\Process(winlogon)\Page File Bytes
\Process(services)\Page File Bytes
\Process(lsass)\Page File Bytes
\Process(svchost)\Page File Bytes
\Process(svchost#1)\Page File Bytes
\Process(svchost#2)\Page File Bytes
\Process(svchost#3)\Page File Bytes
\Process(svchost#4)\Page File Bytes
\Process(kxedefend)\Page File Bytes
\Process(kxescore)\Page File Bytes
\Process(KSafeSvc)\Page File Bytes
\Process(kxesapp)\Page File Bytes
\Process(spoolsv)\Page File Bytes
\Process(alg)\Page File Bytes
\Process(AsistService)\Page File Bytes
\Process(DSRSvc)\Page File Bytes
\Process(FolderSizeSvc)\Page File Bytes
\Process(GSGIOSRV)\Page File Bytes
\Process(upsvc)\Page File Bytes
\Process(mdm)\Page File Bytes
\Process(rtiosrv)\Page File Bytes
\Process(ManagerClient)\Page File Bytes
\Process(sqlwriter)\Page File Bytes
\Process(vmware-usbarbitrator)\Page File Bytes
\Process(vmnat)\Page File Bytes
\Process(vmnetdhcp)\Page File Bytes
\Process(vmware-authd)\Page File Bytes
\Process(explorer)\Page File Bytes
\Process(TSVNCache)\Page File Bytes
\Process(igfxtray)\Page File Bytes
\Process(hkcmd)\Page File Bytes
\Process(igfxpers)\Page File Bytes
\Process(KSafeTray)\Page File Bytes
\Process(kxetray)\Page File Bytes
\Process(igfxsrvc)\Page File Bytes
\Process(Ext2Mgr)\Page File Bytes
\Process(RTHDCPL)\Page File Bytes
\Process(OfficeIM)\Page File Bytes
\Process(vmware-tray)\Page File Bytes
\Process(msnmsgr)\Page File Bytes
\Process(ctfmon)\Page File Bytes
\Process(VVCap)\Page File Bytes
\Process(wlcomm)\Page File Bytes
\Process(WPFFontCache_v0400)\Page File Bytes
\Process(KuGoo)\Page File Bytes
\Process(firefox)\Page File Bytes
\Process(vmware)\Page File Bytes
\Process(taskmgr)\Page File Bytes
\Process(SshClient)\Page File Bytes
\Process(Thunder5)\Page File Bytes
\Process(cmd)\Page File Bytes
\Process(typeperf)\Page File Bytes
\Process(_Total)\Page File Bytes
\Process(Idle)\Private Bytes
\Process(System)\Private Bytes
\Process(smss)\Private Bytes
\Process(csrss)\Private Bytes
\Process(winlogon)\Private Bytes
\Process(services)\Private Bytes
\Process(lsass)\Private Bytes
\Process(svchost)\Private Bytes
\Process(svchost#1)\Private Bytes
\Process(svchost#2)\Private Bytes
\Process(svchost#3)\Private Bytes
\Process(svchost#4)\Private Bytes
\Process(kxedefend)\Private Bytes
\Process(kxescore)\Private Bytes
\Process(KSafeSvc)\Private Bytes
\Process(kxesapp)\Private Bytes
\Process(spoolsv)\Private Bytes
\Process(alg)\Private Bytes
\Process(AsistService)\Private Bytes
\Process(DSRSvc)\Private Bytes
\Process(FolderSizeSvc)\Private Bytes
\Process(GSGIOSRV)\Private Bytes
\Process(upsvc)\Private Bytes
\Process(mdm)\Private Bytes
\Process(rtiosrv)\Private Bytes
\Process(ManagerClient)\Private Bytes
\Process(sqlwriter)\Private Bytes
\Process(vmware-usbarbitrator)\Private Bytes
\Process(vmnat)\Private Bytes
\Process(vmnetdhcp)\Private Bytes
\Process(vmware-authd)\Private Bytes
\Process(explorer)\Private Bytes
\Process(TSVNCache)\Private Bytes
\Process(igfxtray)\Private Bytes
\Process(hkcmd)\Private Bytes
\Process(igfxpers)\Private Bytes
\Process(KSafeTray)\Private Bytes
\Process(kxetray)\Private Bytes
\Process(igfxsrvc)\Private Bytes
\Process(Ext2Mgr)\Private Bytes
\Process(RTHDCPL)\Private Bytes
\Process(OfficeIM)\Private Bytes
\Process(vmware-tray)\Private Bytes
\Process(msnmsgr)\Private Bytes
\Process(ctfmon)\Private Bytes
\Process(VVCap)\Private Bytes
\Process(wlcomm)\Private Bytes
\Process(WPFFontCache_v0400)\Private Bytes
\Process(KuGoo)\Private Bytes
\Process(firefox)\Private Bytes
\Process(vmware)\Private Bytes
\Process(taskmgr)\Private Bytes
\Process(SshClient)\Private Bytes
\Process(Thunder5)\Private Bytes
\Process(cmd)\Private Bytes
\Process(typeperf)\Private Bytes
\Process(_Total)\Private Bytes
\Process(Idle)\Thread Count
\Process(System)\Thread Count
\Process(smss)\Thread Count
\Process(csrss)\Thread Count
\Process(winlogon)\Thread Count
\Process(services)\Thread Count
\Process(lsass)\Thread Count
\Process(svchost)\Thread Count
\Process(svchost#1)\Thread Count
\Process(svchost#2)\Thread Count
\Process(svchost#3)\Thread Count
\Process(svchost#4)\Thread Count
\Process(kxedefend)\Thread Count
\Process(kxescore)\Thread Count
\Process(KSafeSvc)\Thread Count
\Process(kxesapp)\Thread Count
\Process(spoolsv)\Thread Count
\Process(alg)\Thread Count
\Process(AsistService)\Thread Count
\Process(DSRSvc)\Thread Count
\Process(FolderSizeSvc)\Thread Count
\Process(GSGIOSRV)\Thread Count
\Process(upsvc)\Thread Count
\Process(mdm)\Thread Count
\Process(rtiosrv)\Thread Count
\Process(ManagerClient)\Thread Count
\Process(sqlwriter)\Thread Count
\Process(vmware-usbarbitrator)\Thread Count
\Process(vmnat)\Thread Count
\Process(vmnetdhcp)\Thread Count
\Process(vmware-authd)\Thread Count
\Process(explorer)\Thread Count
\Process(TSVNCache)\Thread Count
\Process(igfxtray)\Thread Count
\Process(hkcmd)\Thread Count
\Process(igfxpers)\Thread Count
\Process(KSafeTray)\Thread Count
\Process(kxetray)\Thread Count
\Process(igfxsrvc)\Thread Count
\Process(Ext2Mgr)\Thread Count
\Process(RTHDCPL)\Thread Count
\Process(OfficeIM)\Thread Count
\Process(vmware-tray)\Thread Count
\Process(msnmsgr)\Thread Count
\Process(ctfmon)\Thread Count
\Process(VVCap)\Thread Count
\Process(wlcomm)\Thread Count
\Process(WPFFontCache_v0400)\Thread Count
\Process(KuGoo)\Thread Count
\Process(firefox)\Thread Count
\Process(vmware)\Thread Count
\Process(taskmgr)\Thread Count
\Process(SshClient)\Thread Count
\Process(Thunder5)\Thread Count
\Process(cmd)\Thread Count
\Process(typeperf)\Thread Count
\Process(_Total)\Thread Count
\Process(Idle)\Priority Base
\Process(System)\Priority Base
\Process(smss)\Priority Base
\Process(csrss)\Priority Base
\Process(winlogon)\Priority Base
\Process(services)\Priority Base
\Process(lsass)\Priority Base
\Process(svchost)\Priority Base
\Process(svchost#1)\Priority Base
\Process(svchost#2)\Priority Base
\Process(svchost#3)\Priority Base
\Process(svchost#4)\Priority Base
\Process(kxedefend)\Priority Base
\Process(kxescore)\Priority Base
\Process(KSafeSvc)\Priority Base
\Process(kxesapp)\Priority Base
\Process(spoolsv)\Priority Base
\Process(alg)\Priority Base
\Process(AsistService)\Priority Base
\Process(DSRSvc)\Priority Base
\Process(FolderSizeSvc)\Priority Base
\Process(GSGIOSRV)\Priority Base
\Process(upsvc)\Priority Base
\Process(mdm)\Priority Base
\Process(rtiosrv)\Priority Base
\Process(ManagerClient)\Priority Base
\Process(sqlwriter)\Priority Base
\Process(vmware-usbarbitrator)\Priority Base
\Process(vmnat)\Priority Base
\Process(vmnetdhcp)\Priority Base
\Process(vmware-authd)\Priority Base
\Process(explorer)\Priority Base
\Process(TSVNCache)\Priority Base
\Process(igfxtray)\Priority Base
\Process(hkcmd)\Priority Base
\Process(igfxpers)\Priority Base
\Process(KSafeTray)\Priority Base
\Process(kxetray)\Priority Base
\Process(igfxsrvc)\Priority Base
\Process(Ext2Mgr)\Priority Base
\Process(RTHDCPL)\Priority Base
\Process(OfficeIM)\Priority Base
\Process(vmware-tray)\Priority Base
\Process(msnmsgr)\Priority Base
\Process(ctfmon)\Priority Base
\Process(VVCap)\Priority Base
\Process(wlcomm)\Priority Base
\Process(WPFFontCache_v0400)\Priority Base
\Process(KuGoo)\Priority Base
\Process(firefox)\Priority Base
\Process(vmware)\Priority Base
\Process(taskmgr)\Priority Base
\Process(SshClient)\Priority Base
\Process(Thunder5)\Priority Base
\Process(cmd)\Priority Base
\Process(typeperf)\Priority Base
\Process(_Total)\Priority Base
\Process(Idle)\Elapsed Time
\Process(System)\Elapsed Time
\Process(smss)\Elapsed Time
\Process(csrss)\Elapsed Time
\Process(winlogon)\Elapsed Time
\Process(services)\Elapsed Time
\Process(lsass)\Elapsed Time
\Process(svchost)\Elapsed Time
\Process(svchost#1)\Elapsed Time
\Process(svchost#2)\Elapsed Time
\Process(svchost#3)\Elapsed Time
\Process(svchost#4)\Elapsed Time
\Process(kxedefend)\Elapsed Time
\Process(kxescore)\Elapsed Time
\Process(KSafeSvc)\Elapsed Time
\Process(kxesapp)\Elapsed Time
\Process(spoolsv)\Elapsed Time
\Process(alg)\Elapsed Time
\Process(AsistService)\Elapsed Time
\Process(DSRSvc)\Elapsed Time
\Process(FolderSizeSvc)\Elapsed Time
\Process(GSGIOSRV)\Elapsed Time
\Process(upsvc)\Elapsed Time
\Process(mdm)\Elapsed Time
\Process(rtiosrv)\Elapsed Time
\Process(ManagerClient)\Elapsed Time
\Process(sqlwriter)\Elapsed Time
\Process(vmware-usbarbitrator)\Elapsed Time
\Process(vmnat)\Elapsed Time
\Process(vmnetdhcp)\Elapsed Time
\Process(vmware-authd)\Elapsed Time
\Process(explorer)\Elapsed Time
\Process(TSVNCache)\Elapsed Time
\Process(igfxtray)\Elapsed Time
\Process(hkcmd)\Elapsed Time
\Process(igfxpers)\Elapsed Time
\Process(KSafeTray)\Elapsed Time
\Process(kxetray)\Elapsed Time
\Process(igfxsrvc)\Elapsed Time
\Process(Ext2Mgr)\Elapsed Time
\Process(RTHDCPL)\Elapsed Time
\Process(OfficeIM)\Elapsed Time
\Process(vmware-tray)\Elapsed Time
\Process(msnmsgr)\Elapsed Time
\Process(ctfmon)\Elapsed Time
\Process(VVCap)\Elapsed Time
\Process(wlcomm)\Elapsed Time
\Process(WPFFontCache_v0400)\Elapsed Time
\Process(KuGoo)\Elapsed Time
\Process(firefox)\Elapsed Time
\Process(vmware)\Elapsed Time
\Process(taskmgr)\Elapsed Time
\Process(SshClient)\Elapsed Time
\Process(Thunder5)\Elapsed Time
\Process(cmd)\Elapsed Time
\Process(typeperf)\Elapsed Time
\Process(_Total)\Elapsed Time
\Process(Idle)\ID Process
\Process(System)\ID Process
\Process(smss)\ID Process
\Process(csrss)\ID Process
\Process(winlogon)\ID Process
\Process(services)\ID Process
\Process(lsass)\ID Process
\Process(svchost)\ID Process
\Process(svchost#1)\ID Process
\Process(svchost#2)\ID Process
\Process(svchost#3)\ID Process
\Process(svchost#4)\ID Process
\Process(kxedefend)\ID Process
\Process(kxescore)\ID Process
\Process(KSafeSvc)\ID Process
\Process(kxesapp)\ID Process
\Process(spoolsv)\ID Process
\Process(alg)\ID Process
\Process(AsistService)\ID Process
\Process(DSRSvc)\ID Process
\Process(FolderSizeSvc)\ID Process
\Process(GSGIOSRV)\ID Process
\Process(upsvc)\ID Process
\Process(mdm)\ID Process
\Process(rtiosrv)\ID Process
\Process(ManagerClient)\ID Process
\Process(sqlwriter)\ID Process
\Process(vmware-usbarbitrator)\ID Process
\Process(vmnat)\ID Process
\Process(vmnetdhcp)\ID Process
\Process(vmware-authd)\ID Process
\Process(explorer)\ID Process
\Process(TSVNCache)\ID Process
\Process(igfxtray)\ID Process
\Process(hkcmd)\ID Process
\Process(igfxpers)\ID Process
\Process(KSafeTray)\ID Process
\Process(kxetray)\ID Process
\Process(igfxsrvc)\ID Process
\Process(Ext2Mgr)\ID Process
\Process(RTHDCPL)\ID Process
\Process(OfficeIM)\ID Process
\Process(vmware-tray)\ID Process
\Process(msnmsgr)\ID Process
\Process(ctfmon)\ID Process
\Process(VVCap)\ID Process
\Process(wlcomm)\ID Process
\Process(WPFFontCache_v0400)\ID Process
\Process(KuGoo)\ID Process
\Process(firefox)\ID Process
\Process(vmware)\ID Process
\Process(taskmgr)\ID Process
\Process(SshClient)\ID Process
\Process(Thunder5)\ID Process
\Process(cmd)\ID Process
\Process(typeperf)\ID Process
\Process(_Total)\ID Process
\Process(Idle)\Creating Process ID
\Process(System)\Creating Process ID
\Process(smss)\Creating Process ID
\Process(csrss)\Creating Process ID
\Process(winlogon)\Creating Process ID
\Process(services)\Creating Process ID
\Process(lsass)\Creating Process ID
\Process(svchost)\Creating Process ID
\Process(svchost#1)\Creating Process ID
\Process(svchost#2)\Creating Process ID
\Process(svchost#3)\Creating Process ID
\Process(svchost#4)\Creating Process ID
\Process(kxedefend)\Creating Process ID
\Process(kxescore)\Creating Process ID
\Process(KSafeSvc)\Creating Process ID
\Process(kxesapp)\Creating Process ID
\Process(spoolsv)\Creating Process ID
\Process(alg)\Creating Process ID
\Process(AsistService)\Creating Process ID
\Process(DSRSvc)\Creating Process ID
\Process(FolderSizeSvc)\Creating Process ID
\Process(GSGIOSRV)\Creating Process ID
\Process(upsvc)\Creating Process ID
\Process(mdm)\Creating Process ID
\Process(rtiosrv)\Creating Process ID
\Process(ManagerClient)\Creating Process ID
\Process(sqlwriter)\Creating Process ID
\Process(vmware-usbarbitrator)\Creating Process ID
\Process(vmnat)\Creating Process ID
\Process(vmnetdhcp)\Creating Process ID
\Process(vmware-authd)\Creating Process ID
\Process(explorer)\Creating Process ID
\Process(TSVNCache)\Creating Process ID
\Process(igfxtray)\Creating Process ID
\Process(hkcmd)\Creating Process ID
\Process(igfxpers)\Creating Process ID
\Process(KSafeTray)\Creating Process ID
\Process(kxetray)\Creating Process ID
\Process(igfxsrvc)\Creating Process ID
\Process(Ext2Mgr)\Creating Process ID
\Process(RTHDCPL)\Creating Process ID
\Process(OfficeIM)\Creating Process ID
\Process(vmware-tray)\Creating Process ID
\Process(msnmsgr)\Creating Process ID
\Process(ctfmon)\Creating Process ID
\Process(VVCap)\Creating Process ID
\Process(wlcomm)\Creating Process ID
\Process(WPFFontCache_v0400)\Creating Process ID
\Process(KuGoo)\Creating Process ID
\Process(firefox)\Creating Process ID
\Process(vmware)\Creating Process ID
\Process(taskmgr)\Creating Process ID
\Process(SshClient)\Creating Process ID
\Process(Thunder5)\Creating Process ID
\Process(cmd)\Creating Process ID
\Process(typeperf)\Creating Process ID
\Process(_Total)\Creating Process ID
\Process(Idle)\Pool Paged Bytes
\Process(System)\Pool Paged Bytes
\Process(smss)\Pool Paged Bytes
\Process(csrss)\Pool Paged Bytes
\Process(winlogon)\Pool Paged Bytes
\Process(services)\Pool Paged Bytes
\Process(lsass)\Pool Paged Bytes
\Process(svchost)\Pool Paged Bytes
\Process(svchost#1)\Pool Paged Bytes
\Process(svchost#2)\Pool Paged Bytes
\Process(svchost#3)\Pool Paged Bytes
\Process(svchost#4)\Pool Paged Bytes
\Process(kxedefend)\Pool Paged Bytes
\Process(kxescore)\Pool Paged Bytes
\Process(KSafeSvc)\Pool Paged Bytes
\Process(kxesapp)\Pool Paged Bytes
\Process(spoolsv)\Pool Paged Bytes
\Process(alg)\Pool Paged Bytes
\Process(AsistService)\Pool Paged Bytes
\Process(DSRSvc)\Pool Paged Bytes
\Process(FolderSizeSvc)\Pool Paged Bytes
\Process(GSGIOSRV)\Pool Paged Bytes
\Process(upsvc)\Pool Paged Bytes
\Process(mdm)\Pool Paged Bytes
\Process(rtiosrv)\Pool Paged Bytes
\Process(ManagerClient)\Pool Paged Bytes
\Process(sqlwriter)\Pool Paged Bytes
\Process(vmware-usbarbitrator)\Pool Paged Bytes
\Process(vmnat)\Pool Paged Bytes
\Process(vmnetdhcp)\Pool Paged Bytes
\Process(vmware-authd)\Pool Paged Bytes
\Process(explorer)\Pool Paged Bytes
\Process(TSVNCache)\Pool Paged Bytes
\Process(igfxtray)\Pool Paged Bytes
\Process(hkcmd)\Pool Paged Bytes
\Process(igfxpers)\Pool Paged Bytes
\Process(KSafeTray)\Pool Paged Bytes
\Process(kxetray)\Pool Paged Bytes
\Process(igfxsrvc)\Pool Paged Bytes
\Process(Ext2Mgr)\Pool Paged Bytes
\Process(RTHDCPL)\Pool Paged Bytes
\Process(OfficeIM)\Pool Paged Bytes
\Process(vmware-tray)\Pool Paged Bytes
\Process(msnmsgr)\Pool Paged Bytes
\Process(ctfmon)\Pool Paged Bytes
\Process(VVCap)\Pool Paged Bytes
\Process(wlcomm)\Pool Paged Bytes
\Process(WPFFontCache_v0400)\Pool Paged Bytes
\Process(KuGoo)\Pool Paged Bytes
\Process(firefox)\Pool Paged Bytes
\Process(vmware)\Pool Paged Bytes
\Process(taskmgr)\Pool Paged Bytes
\Process(SshClient)\Pool Paged Bytes
\Process(Thunder5)\Pool Paged Bytes
\Process(cmd)\Pool Paged Bytes
\Process(typeperf)\Pool Paged Bytes
\Process(_Total)\Pool Paged Bytes
\Process(Idle)\Pool Nonpaged Bytes
\Process(System)\Pool Nonpaged Bytes
\Process(smss)\Pool Nonpaged Bytes
\Process(csrss)\Pool Nonpaged Bytes
\Process(winlogon)\Pool Nonpaged Bytes
\Process(services)\Pool Nonpaged Bytes
\Process(lsass)\Pool Nonpaged Bytes
\Process(svchost)\Pool Nonpaged Bytes
\Process(svchost#1)\Pool Nonpaged Bytes
\Process(svchost#2)\Pool Nonpaged Bytes
\Process(svchost#3)\Pool Nonpaged Bytes
\Process(svchost#4)\Pool Nonpaged Bytes
\Process(kxedefend)\Pool Nonpaged Bytes
\Process(kxescore)\Pool Nonpaged Bytes
\Process(KSafeSvc)\Pool Nonpaged Bytes
\Process(kxesapp)\Pool Nonpaged Bytes
\Process(spoolsv)\Pool Nonpaged Bytes
\Process(alg)\Pool Nonpaged Bytes
\Process(AsistService)\Pool Nonpaged Bytes
\Process(DSRSvc)\Pool Nonpaged Bytes
\Process(FolderSizeSvc)\Pool Nonpaged Bytes
\Process(GSGIOSRV)\Pool Nonpaged Bytes
\Process(upsvc)\Pool Nonpaged Bytes
\Process(mdm)\Pool Nonpaged Bytes
\Process(rtiosrv)\Pool Nonpaged Bytes
\Process(ManagerClient)\Pool Nonpaged Bytes
\Process(sqlwriter)\Pool Nonpaged Bytes
\Process(vmware-usbarbitrator)\Pool Nonpaged Bytes
\Process(vmnat)\Pool Nonpaged Bytes
\Process(vmnetdhcp)\Pool Nonpaged Bytes
\Process(vmware-authd)\Pool Nonpaged Bytes
\Process(explorer)\Pool Nonpaged Bytes
\Process(TSVNCache)\Pool Nonpaged Bytes
\Process(igfxtray)\Pool Nonpaged Bytes
\Process(hkcmd)\Pool Nonpaged Bytes
\Process(igfxpers)\Pool Nonpaged Bytes
\Process(KSafeTray)\Pool Nonpaged Bytes
\Process(kxetray)\Pool Nonpaged Bytes
\Process(igfxsrvc)\Pool Nonpaged Bytes
\Process(Ext2Mgr)\Pool Nonpaged Bytes
\Process(RTHDCPL)\Pool Nonpaged Bytes
\Process(OfficeIM)\Pool Nonpaged Bytes
\Process(vmware-tray)\Pool Nonpaged Bytes
\Process(msnmsgr)\Pool Nonpaged Bytes
\Process(ctfmon)\Pool Nonpaged Bytes
\Process(VVCap)\Pool Nonpaged Bytes
\Process(wlcomm)\Pool Nonpaged Bytes
\Process(WPFFontCache_v0400)\Pool Nonpaged Bytes
\Process(KuGoo)\Pool Nonpaged Bytes
\Process(firefox)\Pool Nonpaged Bytes
\Process(vmware)\Pool Nonpaged Bytes
\Process(taskmgr)\Pool Nonpaged Bytes
\Process(SshClient)\Pool Nonpaged Bytes
\Process(Thunder5)\Pool Nonpaged Bytes
\Process(cmd)\Pool Nonpaged Bytes
\Process(typeperf)\Pool Nonpaged Bytes
\Process(_Total)\Pool Nonpaged Bytes
\Process(Idle)\Handle Count
\Process(System)\Handle Count
\Process(smss)\Handle Count
\Process(csrss)\Handle Count
\Process(winlogon)\Handle Count
\Process(services)\Handle Count
\Process(lsass)\Handle Count
\Process(svchost)\Handle Count
\Process(svchost#1)\Handle Count
\Process(svchost#2)\Handle Count
\Process(svchost#3)\Handle Count
\Process(svchost#4)\Handle Count
\Process(kxedefend)\Handle Count
\Process(kxescore)\Handle Count
\Process(KSafeSvc)\Handle Count
\Process(kxesapp)\Handle Count
\Process(spoolsv)\Handle Count
\Process(alg)\Handle Count
\Process(AsistService)\Handle Count
\Process(DSRSvc)\Handle Count
\Process(FolderSizeSvc)\Handle Count
\Process(GSGIOSRV)\Handle Count
\Process(upsvc)\Handle Count
\Process(mdm)\Handle Count
\Process(rtiosrv)\Handle Count
\Process(ManagerClient)\Handle Count
\Process(sqlwriter)\Handle Count
\Process(vmware-usbarbitrator)\Handle Count
\Process(vmnat)\Handle Count
\Process(vmnetdhcp)\Handle Count
\Process(vmware-authd)\Handle Count
\Process(explorer)\Handle Count
\Process(TSVNCache)\Handle Count
\Process(igfxtray)\Handle Count
\Process(hkcmd)\Handle Count
\Process(igfxpers)\Handle Count
\Process(KSafeTray)\Handle Count
\Process(kxetray)\Handle Count
\Process(igfxsrvc)\Handle Count
\Process(Ext2Mgr)\Handle Count
\Process(RTHDCPL)\Handle Count
\Process(OfficeIM)\Handle Count
\Process(vmware-tray)\Handle Count
\Process(msnmsgr)\Handle Count
\Process(ctfmon)\Handle Count
\Process(VVCap)\Handle Count
\Process(wlcomm)\Handle Count
\Process(WPFFontCache_v0400)\Handle Count
\Process(KuGoo)\Handle Count
\Process(firefox)\Handle Count
\Process(vmware)\Handle Count
\Process(taskmgr)\Handle Count
\Process(SshClient)\Handle Count
\Process(Thunder5)\Handle Count
\Process(cmd)\Handle Count
\Process(typeperf)\Handle Count
\Process(_Total)\Handle Count
\Process(Idle)\IO Read Operations/sec
\Process(System)\IO Read Operations/sec
\Process(smss)\IO Read Operations/sec
\Process(csrss)\IO Read Operations/sec
\Process(winlogon)\IO Read Operations/sec
\Process(services)\IO Read Operations/sec
\Process(lsass)\IO Read Operations/sec
\Process(svchost)\IO Read Operations/sec
\Process(svchost#1)\IO Read Operations/sec
\Process(svchost#2)\IO Read Operations/sec
\Process(svchost#3)\IO Read Operations/sec
\Process(svchost#4)\IO Read Operations/sec
\Process(kxedefend)\IO Read Operations/sec
\Process(kxescore)\IO Read Operations/sec
\Process(KSafeSvc)\IO Read Operations/sec
\Process(kxesapp)\IO Read Operations/sec
\Process(spoolsv)\IO Read Operations/sec
\Process(alg)\IO Read Operations/sec
\Process(AsistService)\IO Read Operations/sec
\Process(DSRSvc)\IO Read Operations/sec
\Process(FolderSizeSvc)\IO Read Operations/sec
\Process(GSGIOSRV)\IO Read Operations/sec
\Process(upsvc)\IO Read Operations/sec
\Process(mdm)\IO Read Operations/sec
\Process(rtiosrv)\IO Read Operations/sec
\Process(ManagerClient)\IO Read Operations/sec
\Process(sqlwriter)\IO Read Operations/sec
\Process(vmware-usbarbitrator)\IO Read Operations/sec
\Process(vmnat)\IO Read Operations/sec
\Process(vmnetdhcp)\IO Read Operations/sec
\Process(vmware-authd)\IO Read Operations/sec
\Process(explorer)\IO Read Operations/sec
\Process(TSVNCache)\IO Read Operations/sec
\Process(igfxtray)\IO Read Operations/sec
\Process(hkcmd)\IO Read Operations/sec
\Process(igfxpers)\IO Read Operations/sec
\Process(KSafeTray)\IO Read Operations/sec
\Process(kxetray)\IO Read Operations/sec
\Process(igfxsrvc)\IO Read Operations/sec
\Process(Ext2Mgr)\IO Read Operations/sec
\Process(RTHDCPL)\IO Read Operations/sec
\Process(OfficeIM)\IO Read Operations/sec
\Process(vmware-tray)\IO Read Operations/sec
\Process(msnmsgr)\IO Read Operations/sec
\Process(ctfmon)\IO Read Operations/sec
\Process(VVCap)\IO Read Operations/sec
\Process(wlcomm)\IO Read Operations/sec
\Process(WPFFontCache_v0400)\IO Read Operations/sec
\Process(KuGoo)\IO Read Operations/sec
\Process(firefox)\IO Read Operations/sec
\Process(vmware)\IO Read Operations/sec
\Process(taskmgr)\IO Read Operations/sec
\Process(SshClient)\IO Read Operations/sec
\Process(Thunder5)\IO Read Operations/sec
\Process(cmd)\IO Read Operations/sec
\Process(typeperf)\IO Read Operations/sec
\Process(_Total)\IO Read Operations/sec
\Process(Idle)\IO Write Operations/sec
\Process(System)\IO Write Operations/sec
\Process(smss)\IO Write Operations/sec
\Process(csrss)\IO Write Operations/sec
\Process(winlogon)\IO Write Operations/sec
\Process(services)\IO Write Operations/sec
\Process(lsass)\IO Write Operations/sec
\Process(svchost)\IO Write Operations/sec
\Process(svchost#1)\IO Write Operations/sec
\Process(svchost#2)\IO Write Operations/sec
\Process(svchost#3)\IO Write Operations/sec
\Process(svchost#4)\IO Write Operations/sec
\Process(kxedefend)\IO Write Operations/sec
\Process(kxescore)\IO Write Operations/sec
\Process(KSafeSvc)\IO Write Operations/sec
\Process(kxesapp)\IO Write Operations/sec
\Process(spoolsv)\IO Write Operations/sec
\Process(alg)\IO Write Operations/sec
\Process(AsistService)\IO Write Operations/sec
\Process(DSRSvc)\IO Write Operations/sec
\Process(FolderSizeSvc)\IO Write Operations/sec
\Process(GSGIOSRV)\IO Write Operations/sec
\Process(upsvc)\IO Write Operations/sec
\Process(mdm)\IO Write Operations/sec
\Process(rtiosrv)\IO Write Operations/sec
\Process(ManagerClient)\IO Write Operations/sec
\Process(sqlwriter)\IO Write Operations/sec
\Process(vmware-usbarbitrator)\IO Write Operations/sec
\Process(vmnat)\IO Write Operations/sec
\Process(vmnetdhcp)\IO Write Operations/sec
\Process(vmware-authd)\IO Write Operations/sec
\Process(explorer)\IO Write Operations/sec
\Process(TSVNCache)\IO Write Operations/sec
\Process(igfxtray)\IO Write Operations/sec
\Process(hkcmd)\IO Write Operations/sec
\Process(igfxpers)\IO Write Operations/sec
\Process(KSafeTray)\IO Write Operations/sec
\Process(kxetray)\IO Write Operations/sec
\Process(igfxsrvc)\IO Write Operations/sec
\Process(Ext2Mgr)\IO Write Operations/sec
\Process(RTHDCPL)\IO Write Operations/sec
\Process(OfficeIM)\IO Write Operations/sec
\Process(vmware-tray)\IO Write Operations/sec
\Process(msnmsgr)\IO Write Operations/sec
\Process(ctfmon)\IO Write Operations/sec
\Process(VVCap)\IO Write Operations/sec
\Process(wlcomm)\IO Write Operations/sec
\Process(WPFFontCache_v0400)\IO Write Operations/sec
\Process(KuGoo)\IO Write Operations/sec
\Process(firefox)\IO Write Operations/sec
\Process(vmware)\IO Write Operations/sec
\Process(taskmgr)\IO Write Operations/sec
\Process(SshClient)\IO Write Operations/sec
\Process(Thunder5)\IO Write Operations/sec
\Process(cmd)\IO Write Operations/sec
\Process(typeperf)\IO Write Operations/sec
\Process(_Total)\IO Write Operations/sec
\Process(Idle)\IO Data Operations/sec
\Process(System)\IO Data Operations/sec
\Process(smss)\IO Data Operations/sec
\Process(csrss)\IO Data Operations/sec
\Process(winlogon)\IO Data Operations/sec
\Process(services)\IO Data Operations/sec
\Process(lsass)\IO Data Operations/sec
\Process(svchost)\IO Data Operations/sec
\Process(svchost#1)\IO Data Operations/sec
\Process(svchost#2)\IO Data Operations/sec
\Process(svchost#3)\IO Data Operations/sec
\Process(svchost#4)\IO Data Operations/sec
\Process(kxedefend)\IO Data Operations/sec
\Process(kxescore)\IO Data Operations/sec
\Process(KSafeSvc)\IO Data Operations/sec
\Process(kxesapp)\IO Data Operations/sec
\Process(spoolsv)\IO Data Operations/sec
\Process(alg)\IO Data Operations/sec
\Process(AsistService)\IO Data Operations/sec
\Process(DSRSvc)\IO Data Operations/sec
\Process(FolderSizeSvc)\IO Data Operations/sec
\Process(GSGIOSRV)\IO Data Operations/sec
\Process(upsvc)\IO Data Operations/sec
\Process(mdm)\IO Data Operations/sec
\Process(rtiosrv)\IO Data Operations/sec
\Process(ManagerClient)\IO Data Operations/sec
\Process(sqlwriter)\IO Data Operations/sec
\Process(vmware-usbarbitrator)\IO Data Operations/sec
\Process(vmnat)\IO Data Operations/sec
\Process(vmnetdhcp)\IO Data Operations/sec
\Process(vmware-authd)\IO Data Operations/sec
\Process(explorer)\IO Data Operations/sec
\Process(TSVNCache)\IO Data Operations/sec
\Process(igfxtray)\IO Data Operations/sec
\Process(hkcmd)\IO Data Operations/sec
\Process(igfxpers)\IO Data Operations/sec
\Process(KSafeTray)\IO Data Operations/sec
\Process(kxetray)\IO Data Operations/sec
\Process(igfxsrvc)\IO Data Operations/sec
\Process(Ext2Mgr)\IO Data Operations/sec
\Process(RTHDCPL)\IO Data Operations/sec
\Process(OfficeIM)\IO Data Operations/sec
\Process(vmware-tray)\IO Data Operations/sec
\Process(msnmsgr)\IO Data Operations/sec
\Process(ctfmon)\IO Data Operations/sec
\Process(VVCap)\IO Data Operations/sec
\Process(wlcomm)\IO Data Operations/sec
\Process(WPFFontCache_v0400)\IO Data Operations/sec
\Process(KuGoo)\IO Data Operations/sec
\Process(firefox)\IO Data Operations/sec
\Process(vmware)\IO Data Operations/sec
\Process(taskmgr)\IO Data Operations/sec
\Process(SshClient)\IO Data Operations/sec
\Process(Thunder5)\IO Data Operations/sec
\Process(cmd)\IO Data Operations/sec
\Process(typeperf)\IO Data Operations/sec
\Process(_Total)\IO Data Operations/sec
\Process(Idle)\IO Other Operations/sec
\Process(System)\IO Other Operations/sec
\Process(smss)\IO Other Operations/sec
\Process(csrss)\IO Other Operations/sec
\Process(winlogon)\IO Other Operations/sec
\Process(services)\IO Other Operations/sec
\Process(lsass)\IO Other Operations/sec
\Process(svchost)\IO Other Operations/sec
\Process(svchost#1)\IO Other Operations/sec
\Process(svchost#2)\IO Other Operations/sec
\Process(svchost#3)\IO Other Operations/sec
\Process(svchost#4)\IO Other Operations/sec
\Process(kxedefend)\IO Other Operations/sec
\Process(kxescore)\IO Other Operations/sec
\Process(KSafeSvc)\IO Other Operations/sec
\Process(kxesapp)\IO Other Operations/sec
\Process(spoolsv)\IO Other Operations/sec
\Process(alg)\IO Other Operations/sec
\Process(AsistService)\IO Other Operations/sec
\Process(DSRSvc)\IO Other Operations/sec
\Process(FolderSizeSvc)\IO Other Operations/sec
\Process(GSGIOSRV)\IO Other Operations/sec
\Process(upsvc)\IO Other Operations/sec
\Process(mdm)\IO Other Operations/sec
\Process(rtiosrv)\IO Other Operations/sec
\Process(ManagerClient)\IO Other Operations/sec
\Process(sqlwriter)\IO Other Operations/sec
\Process(vmware-usbarbitrator)\IO Other Operations/sec
\Process(vmnat)\IO Other Operations/sec
\Process(vmnetdhcp)\IO Other Operations/sec
\Process(vmware-authd)\IO Other Operations/sec
\Process(explorer)\IO Other Operations/sec
\Process(TSVNCache)\IO Other Operations/sec
\Process(igfxtray)\IO Other Operations/sec
\Process(hkcmd)\IO Other Operations/sec
\Process(igfxpers)\IO Other Operations/sec
\Process(KSafeTray)\IO Other Operations/sec
\Process(kxetray)\IO Other Operations/sec
\Process(igfxsrvc)\IO Other Operations/sec
\Process(Ext2Mgr)\IO Other Operations/sec
\Process(RTHDCPL)\IO Other Operations/sec
\Process(OfficeIM)\IO Other Operations/sec
\Process(vmware-tray)\IO Other Operations/sec
\Process(msnmsgr)\IO Other Operations/sec
\Process(ctfmon)\IO Other Operations/sec
\Process(VVCap)\IO Other Operations/sec
\Process(wlcomm)\IO Other Operations/sec
\Process(WPFFontCache_v0400)\IO Other Operations/sec
\Process(KuGoo)\IO Other Operations/sec
\Process(firefox)\IO Other Operations/sec
\Process(vmware)\IO Other Operations/sec
\Process(taskmgr)\IO Other Operations/sec
\Process(SshClient)\IO Other Operations/sec
\Process(Thunder5)\IO Other Operations/sec
\Process(cmd)\IO Other Operations/sec
\Process(typeperf)\IO Other Operations/sec
\Process(_Total)\IO Other Operations/sec
\Process(Idle)\IO Read Bytes/sec
\Process(System)\IO Read Bytes/sec
\Process(smss)\IO Read Bytes/sec
\Process(csrss)\IO Read Bytes/sec
\Process(winlogon)\IO Read Bytes/sec
\Process(services)\IO Read Bytes/sec
\Process(lsass)\IO Read Bytes/sec
\Process(svchost)\IO Read Bytes/sec
\Process(svchost#1)\IO Read Bytes/sec
\Process(svchost#2)\IO Read Bytes/sec
\Process(svchost#3)\IO Read Bytes/sec
\Process(svchost#4)\IO Read Bytes/sec
\Process(kxedefend)\IO Read Bytes/sec
\Process(kxescore)\IO Read Bytes/sec
\Process(KSafeSvc)\IO Read Bytes/sec
\Process(kxesapp)\IO Read Bytes/sec
\Process(spoolsv)\IO Read Bytes/sec
\Process(alg)\IO Read Bytes/sec
\Process(AsistService)\IO Read Bytes/sec
\Process(DSRSvc)\IO Read Bytes/sec
\Process(FolderSizeSvc)\IO Read Bytes/sec
\Process(GSGIOSRV)\IO Read Bytes/sec
\Process(upsvc)\IO Read Bytes/sec
\Process(mdm)\IO Read Bytes/sec
\Process(rtiosrv)\IO Read Bytes/sec
\Process(ManagerClient)\IO Read Bytes/sec
\Process(sqlwriter)\IO Read Bytes/sec
\Process(vmware-usbarbitrator)\IO Read Bytes/sec
\Process(vmnat)\IO Read Bytes/sec
\Process(vmnetdhcp)\IO Read Bytes/sec
\Process(vmware-authd)\IO Read Bytes/sec
\Process(explorer)\IO Read Bytes/sec
\Process(TSVNCache)\IO Read Bytes/sec
\Process(igfxtray)\IO Read Bytes/sec
\Process(hkcmd)\IO Read Bytes/sec
\Process(igfxpers)\IO Read Bytes/sec
\Process(KSafeTray)\IO Read Bytes/sec
\Process(kxetray)\IO Read Bytes/sec
\Process(igfxsrvc)\IO Read Bytes/sec
\Process(Ext2Mgr)\IO Read Bytes/sec
\Process(RTHDCPL)\IO Read Bytes/sec
\Process(OfficeIM)\IO Read Bytes/sec
\Process(vmware-tray)\IO Read Bytes/sec
\Process(msnmsgr)\IO Read Bytes/sec
\Process(ctfmon)\IO Read Bytes/sec
\Process(VVCap)\IO Read Bytes/sec
\Process(wlcomm)\IO Read Bytes/sec
\Process(WPFFontCache_v0400)\IO Read Bytes/sec
\Process(KuGoo)\IO Read Bytes/sec
\Process(firefox)\IO Read Bytes/sec
\Process(vmware)\IO Read Bytes/sec
\Process(taskmgr)\IO Read Bytes/sec
\Process(SshClient)\IO Read Bytes/sec
\Process(Thunder5)\IO Read Bytes/sec
\Process(cmd)\IO Read Bytes/sec
\Process(typeperf)\IO Read Bytes/sec
\Process(_Total)\IO Read Bytes/sec
\Process(Idle)\IO Write Bytes/sec
\Process(System)\IO Write Bytes/sec
\Process(smss)\IO Write Bytes/sec
\Process(csrss)\IO Write Bytes/sec
\Process(winlogon)\IO Write Bytes/sec
\Process(services)\IO Write Bytes/sec
\Process(lsass)\IO Write Bytes/sec
\Process(svchost)\IO Write Bytes/sec
\Process(svchost#1)\IO Write Bytes/sec
\Process(svchost#2)\IO Write Bytes/sec
\Process(svchost#3)\IO Write Bytes/sec
\Process(svchost#4)\IO Write Bytes/sec
\Process(kxedefend)\IO Write Bytes/sec
\Process(kxescore)\IO Write Bytes/sec
\Process(KSafeSvc)\IO Write Bytes/sec
\Process(kxesapp)\IO Write Bytes/sec
\Process(spoolsv)\IO Write Bytes/sec
\Process(alg)\IO Write Bytes/sec
\Process(AsistService)\IO Write Bytes/sec
\Process(DSRSvc)\IO Write Bytes/sec
\Process(FolderSizeSvc)\IO Write Bytes/sec
\Process(GSGIOSRV)\IO Write Bytes/sec
\Process(upsvc)\IO Write Bytes/sec
\Process(mdm)\IO Write Bytes/sec
\Process(rtiosrv)\IO Write Bytes/sec
\Process(ManagerClient)\IO Write Bytes/sec
\Process(sqlwriter)\IO Write Bytes/sec
\Process(vmware-usbarbitrator)\IO Write Bytes/sec
\Process(vmnat)\IO Write Bytes/sec
\Process(vmnetdhcp)\IO Write Bytes/sec
\Process(vmware-authd)\IO Write Bytes/sec
\Process(explorer)\IO Write Bytes/sec
\Process(TSVNCache)\IO Write Bytes/sec
\Process(igfxtray)\IO Write Bytes/sec
\Process(hkcmd)\IO Write Bytes/sec
\Process(igfxpers)\IO Write Bytes/sec
\Process(KSafeTray)\IO Write Bytes/sec
\Process(kxetray)\IO Write Bytes/sec
\Process(igfxsrvc)\IO Write Bytes/sec
\Process(Ext2Mgr)\IO Write Bytes/sec
\Process(RTHDCPL)\IO Write Bytes/sec
\Process(OfficeIM)\IO Write Bytes/sec
\Process(vmware-tray)\IO Write Bytes/sec
\Process(msnmsgr)\IO Write Bytes/sec
\Process(ctfmon)\IO Write Bytes/sec
\Process(VVCap)\IO Write Bytes/sec
\Process(wlcomm)\IO Write Bytes/sec
\Process(WPFFontCache_v0400)\IO Write Bytes/sec
\Process(KuGoo)\IO Write Bytes/sec
\Process(firefox)\IO Write Bytes/sec
\Process(vmware)\IO Write Bytes/sec
\Process(taskmgr)\IO Write Bytes/sec
\Process(SshClient)\IO Write Bytes/sec
\Process(Thunder5)\IO Write Bytes/sec
\Process(cmd)\IO Write Bytes/sec
\Process(typeperf)\IO Write Bytes/sec
\Process(_Total)\IO Write Bytes/sec
\Process(Idle)\IO Data Bytes/sec
\Process(System)\IO Data Bytes/sec
\Process(smss)\IO Data Bytes/sec
\Process(csrss)\IO Data Bytes/sec
\Process(winlogon)\IO Data Bytes/sec
\Process(services)\IO Data Bytes/sec
\Process(lsass)\IO Data Bytes/sec
\Process(svchost)\IO Data Bytes/sec
\Process(svchost#1)\IO Data Bytes/sec
\Process(svchost#2)\IO Data Bytes/sec
\Process(svchost#3)\IO Data Bytes/sec
\Process(svchost#4)\IO Data Bytes/sec
\Process(kxedefend)\IO Data Bytes/sec
\Process(kxescore)\IO Data Bytes/sec
\Process(KSafeSvc)\IO Data Bytes/sec
\Process(kxesapp)\IO Data Bytes/sec
\Process(spoolsv)\IO Data Bytes/sec
\Process(alg)\IO Data Bytes/sec
\Process(AsistService)\IO Data Bytes/sec
\Process(DSRSvc)\IO Data Bytes/sec
\Process(FolderSizeSvc)\IO Data Bytes/sec
\Process(GSGIOSRV)\IO Data Bytes/sec
\Process(upsvc)\IO Data Bytes/sec
\Process(mdm)\IO Data Bytes/sec
\Process(rtiosrv)\IO Data Bytes/sec
\Process(ManagerClient)\IO Data Bytes/sec
\Process(sqlwriter)\IO Data Bytes/sec
\Process(vmware-usbarbitrator)\IO Data Bytes/sec
\Process(vmnat)\IO Data Bytes/sec
\Process(vmnetdhcp)\IO Data Bytes/sec
\Process(vmware-authd)\IO Data Bytes/sec
\Process(explorer)\IO Data Bytes/sec
\Process(TSVNCache)\IO Data Bytes/sec
\Process(igfxtray)\IO Data Bytes/sec
\Process(hkcmd)\IO Data Bytes/sec
\Process(igfxpers)\IO Data Bytes/sec
\Process(KSafeTray)\IO Data Bytes/sec
\Process(kxetray)\IO Data Bytes/sec
\Process(igfxsrvc)\IO Data Bytes/sec
\Process(Ext2Mgr)\IO Data Bytes/sec
\Process(RTHDCPL)\IO Data Bytes/sec
\Process(OfficeIM)\IO Data Bytes/sec
\Process(vmware-tray)\IO Data Bytes/sec
\Process(msnmsgr)\IO Data Bytes/sec
\Process(ctfmon)\IO Data Bytes/sec
\Process(VVCap)\IO Data Bytes/sec
\Process(wlcomm)\IO Data Bytes/sec
\Process(WPFFontCache_v0400)\IO Data Bytes/sec
\Process(KuGoo)\IO Data Bytes/sec
\Process(firefox)\IO Data Bytes/sec
\Process(vmware)\IO Data Bytes/sec
\Process(taskmgr)\IO Data Bytes/sec
\Process(SshClient)\IO Data Bytes/sec
\Process(Thunder5)\IO Data Bytes/sec
\Process(cmd)\IO Data Bytes/sec
\Process(typeperf)\IO Data Bytes/sec
\Process(_Total)\IO Data Bytes/sec
\Process(Idle)\IO Other Bytes/sec
\Process(System)\IO Other Bytes/sec
\Process(smss)\IO Other Bytes/sec
\Process(csrss)\IO Other Bytes/sec
\Process(winlogon)\IO Other Bytes/sec
\Process(services)\IO Other Bytes/sec
\Process(lsass)\IO Other Bytes/sec
\Process(svchost)\IO Other Bytes/sec
\Process(svchost#1)\IO Other Bytes/sec
\Process(svchost#2)\IO Other Bytes/sec
\Process(svchost#3)\IO Other Bytes/sec
\Process(svchost#4)\IO Other Bytes/sec
\Process(kxedefend)\IO Other Bytes/sec
\Process(kxescore)\IO Other Bytes/sec
\Process(KSafeSvc)\IO Other Bytes/sec
\Process(kxesapp)\IO Other Bytes/sec
\Process(spoolsv)\IO Other Bytes/sec
\Process(alg)\IO Other Bytes/sec
\Process(AsistService)\IO Other Bytes/sec
\Process(DSRSvc)\IO Other Bytes/sec
\Process(FolderSizeSvc)\IO Other Bytes/sec
\Process(GSGIOSRV)\IO Other Bytes/sec
\Process(upsvc)\IO Other Bytes/sec
\Process(mdm)\IO Other Bytes/sec
\Process(rtiosrv)\IO Other Bytes/sec
\Process(ManagerClient)\IO Other Bytes/sec
\Process(sqlwriter)\IO Other Bytes/sec
\Process(vmware-usbarbitrator)\IO Other Bytes/sec
\Process(vmnat)\IO Other Bytes/sec
\Process(vmnetdhcp)\IO Other Bytes/sec
\Process(vmware-authd)\IO Other Bytes/sec
\Process(explorer)\IO Other Bytes/sec
\Process(TSVNCache)\IO Other Bytes/sec
\Process(igfxtray)\IO Other Bytes/sec
\Process(hkcmd)\IO Other Bytes/sec
\Process(igfxpers)\IO Other Bytes/sec
\Process(KSafeTray)\IO Other Bytes/sec
\Process(kxetray)\IO Other Bytes/sec
\Process(igfxsrvc)\IO Other Bytes/sec
\Process(Ext2Mgr)\IO Other Bytes/sec
\Process(RTHDCPL)\IO Other Bytes/sec
\Process(OfficeIM)\IO Other Bytes/sec
\Process(vmware-tray)\IO Other Bytes/sec
\Process(msnmsgr)\IO Other Bytes/sec
\Process(ctfmon)\IO Other Bytes/sec
\Process(VVCap)\IO Other Bytes/sec
\Process(wlcomm)\IO Other Bytes/sec
\Process(WPFFontCache_v0400)\IO Other Bytes/sec
\Process(KuGoo)\IO Other Bytes/sec
\Process(firefox)\IO Other Bytes/sec
\Process(vmware)\IO Other Bytes/sec
\Process(taskmgr)\IO Other Bytes/sec
\Process(SshClient)\IO Other Bytes/sec
\Process(Thunder5)\IO Other Bytes/sec
\Process(cmd)\IO Other Bytes/sec
\Process(typeperf)\IO Other Bytes/sec
\Process(_Total)\IO Other Bytes/sec
\Thread(Idle/0)\% Processor Time
\Thread(Idle/1)\% Processor Time
\Thread(System/0)\% Processor Time
\Thread(System/1)\% Processor Time
\Thread(System/2)\% Processor Time
\Thread(System/3)\% Processor Time
\Thread(System/4)\% Processor Time
\Thread(System/5)\% Processor Time
\Thread(System/6)\% Processor Time
\Thread(System/7)\% Processor Time
\Thread(System/8)\% Processor Time
\Thread(System/9)\% Processor Time
\Thread(System/10)\% Processor Time
\Thread(System/11)\% Processor Time
\Thread(System/12)\% Processor Time
\Thread(System/13)\% Processor Time
\Thread(System/14)\% Processor Time
\Thread(System/15)\% Processor Time
\Thread(System/16)\% Processor Time
\Thread(System/17)\% Processor Time
\Thread(System/18)\% Processor Time
\Thread(System/19)\% Processor Time
\Thread(System/20)\% Processor Time
\Thread(System/21)\% Processor Time
\Thread(System/22)\% Processor Time
\Thread(System/23)\% Processor Time
\Thread(System/24)\% Processor Time
\Thread(System/25)\% Processor Time
\Thread(System/26)\% Processor Time
\Thread(System/27)\% Processor Time
\Thread(System/28)\% Processor Time
\Thread(System/29)\% Processor Time
\Thread(System/30)\% Processor Time
\Thread(System/31)\% Processor Time
\Thread(System/32)\% Processor Time
\Thread(System/33)\% Processor Time
\Thread(System/34)\% Processor Time
\Thread(System/35)\% Processor Time
\Thread(System/36)\% Processor Time
\Thread(System/37)\% Processor Time
\Thread(System/38)\% Processor Time
\Thread(System/39)\% Processor Time
\Thread(System/40)\% Processor Time
\Thread(System/41)\% Processor Time
\Thread(System/42)\% Processor Time
\Thread(System/43)\% Processor Time
\Thread(System/44)\% Processor Time
\Thread(System/45)\% Processor Time
\Thread(System/46)\% Processor Time
\Thread(System/47)\% Processor Time
\Thread(System/48)\% Processor Time
\Thread(System/49)\% Processor Time
\Thread(System/50)\% Processor Time
\Thread(System/51)\% Processor Time
\Thread(System/52)\% Processor Time
\Thread(System/53)\% Processor Time
\Thread(System/54)\% Processor Time
\Thread(System/55)\% Processor Time
\Thread(System/56)\% Processor Time
\Thread(System/57)\% Processor Time
\Thread(System/58)\% Processor Time
\Thread(System/59)\% Processor Time
\Thread(System/60)\% Processor Time
\Thread(System/61)\% Processor Time
\Thread(System/62)\% Processor Time
\Thread(System/63)\% Processor Time
\Thread(System/64)\% Processor Time
\Thread(System/65)\% Processor Time
\Thread(System/66)\% Processor Time
\Thread(System/67)\% Processor Time
\Thread(System/68)\% Processor Time
\Thread(System/69)\% Processor Time
\Thread(System/70)\% Processor Time
\Thread(System/71)\% Processor Time
\Thread(System/72)\% Processor Time
\Thread(System/73)\% Processor Time
\Thread(System/74)\% Processor Time
\Thread(System/75)\% Processor Time
\Thread(System/76)\% Processor Time
\Thread(System/77)\% Processor Time
\Thread(System/78)\% Processor Time
\Thread(System/79)\% Processor Time
\Thread(System/80)\% Processor Time
\Thread(System/81)\% Processor Time
\Thread(System/82)\% Processor Time
\Thread(System/83)\% Processor Time
\Thread(System/84)\% Processor Time
\Thread(System/85)\% Processor Time
\Thread(System/86)\% Processor Time
\Thread(System/87)\% Processor Time
\Thread(System/88)\% Processor Time
\Thread(System/89)\% Processor Time
\Thread(System/90)\% Processor Time
\Thread(System/91)\% Processor Time
\Thread(System/92)\% Processor Time
\Thread(System/93)\% Processor Time
\Thread(System/94)\% Processor Time
\Thread(System/95)\% Processor Time
\Thread(System/96)\% Processor Time
\Thread(System/97)\% Processor Time
\Thread(smss/0)\% Processor Time
\Thread(smss/1)\% Processor Time
\Thread(smss/2)\% Processor Time
\Thread(csrss/0)\% Processor Time
\Thread(csrss/1)\% Processor Time
\Thread(csrss/2)\% Processor Time
\Thread(csrss/3)\% Processor Time
\Thread(csrss/4)\% Processor Time
\Thread(csrss/5)\% Processor Time
\Thread(csrss/6)\% Processor Time
\Thread(csrss/7)\% Processor Time
\Thread(csrss/8)\% Processor Time
\Thread(csrss/9)\% Processor Time
\Thread(csrss/10)\% Processor Time
\Thread(csrss/11)\% Processor Time
\Thread(winlogon/0)\% Processor Time
\Thread(winlogon/1)\% Processor Time
\Thread(winlogon/2)\% Processor Time
\Thread(winlogon/3)\% Processor Time
\Thread(winlogon/4)\% Processor Time
\Thread(winlogon/5)\% Processor Time
\Thread(winlogon/6)\% Processor Time
\Thread(winlogon/7)\% Processor Time
\Thread(winlogon/8)\% Processor Time
\Thread(winlogon/9)\% Processor Time
\Thread(winlogon/10)\% Processor Time
\Thread(winlogon/11)\% Processor Time
\Thread(winlogon/12)\% Processor Time
\Thread(winlogon/13)\% Processor Time
\Thread(winlogon/14)\% Processor Time
\Thread(winlogon/15)\% Processor Time
\Thread(winlogon/16)\% Processor Time
\Thread(winlogon/17)\% Processor Time
\Thread(winlogon/18)\% Processor Time
\Thread(winlogon/19)\% Processor Time
\Thread(winlogon/20)\% Processor Time
\Thread(winlogon/21)\% Processor Time
\Thread(services/0)\% Processor Time
\Thread(services/1)\% Processor Time
\Thread(services/2)\% Processor Time
\Thread(services/3)\% Processor Time
\Thread(services/4)\% Processor Time
\Thread(services/5)\% Processor Time
\Thread(services/6)\% Processor Time
\Thread(services/7)\% Processor Time
\Thread(services/8)\% Processor Time
\Thread(services/9)\% Processor Time
\Thread(services/10)\% Processor Time
\Thread(services/11)\% Processor Time
\Thread(services/12)\% Processor Time
\Thread(services/13)\% Processor Time
\Thread(services/14)\% Processor Time
\Thread(services/15)\% Processor Time
\Thread(lsass/0)\% Processor Time
\Thread(lsass/1)\% Processor Time
\Thread(lsass/2)\% Processor Time
\Thread(lsass/3)\% Processor Time
\Thread(lsass/4)\% Processor Time
\Thread(lsass/5)\% Processor Time
\Thread(lsass/6)\% Processor Time
\Thread(lsass/7)\% Processor Time
\Thread(lsass/8)\% Processor Time
\Thread(lsass/9)\% Processor Time
\Thread(lsass/10)\% Processor Time
\Thread(lsass/11)\% Processor Time
\Thread(lsass/12)\% Processor Time
\Thread(lsass/13)\% Processor Time
\Thread(lsass/14)\% Processor Time
\Thread(lsass/15)\% Processor Time
\Thread(lsass/16)\% Processor Time
\Thread(lsass/17)\% Processor Time
\Thread(lsass/18)\% Processor Time
\Thread(lsass/19)\% Processor Time
\Thread(lsass/20)\% Processor Time
\Thread(lsass/21)\% Processor Time
\Thread(svchost/0)\% Processor Time
\Thread(svchost/1)\% Processor Time
\Thread(svchost/2)\% Processor Time
\Thread(svchost/3)\% Processor Time
\Thread(svchost/4)\% Processor Time
\Thread(svchost/5)\% Processor Time
\Thread(svchost/6)\% Processor Time
\Thread(svchost/7)\% Processor Time
\Thread(svchost/0)\% Processor Time
\Thread(svchost/1)\% Processor Time
\Thread(svchost/2)\% Processor Time
\Thread(svchost/3)\% Processor Time
\Thread(svchost/4)\% Processor Time
\Thread(svchost/5)\% Processor Time
\Thread(svchost/6)\% Processor Time
\Thread(svchost/7)\% Processor Time
\Thread(svchost/8)\% Processor Time
\Thread(svchost/9)\% Processor Time
\Thread(svchost/10)\% Processor Time
\Thread(svchost/11)\% Processor Time
\Thread(svchost/12)\% Processor Time
\Thread(svchost/13)\% Processor Time
\Thread(svchost/14)\% Processor Time
\Thread(svchost/15)\% Processor Time
\Thread(svchost/16)\% Processor Time
\Thread(svchost/17)\% Processor Time
\Thread(svchost/18)\% Processor Time
\Thread(svchost/19)\% Processor Time
\Thread(svchost/20)\% Processor Time
\Thread(svchost/21)\% Processor Time
\Thread(svchost/22)\% Processor Time
\Thread(svchost/23)\% Processor Time
\Thread(svchost/24)\% Processor Time
\Thread(svchost/25)\% Processor Time
\Thread(svchost/26)\% Processor Time
\Thread(svchost/27)\% Processor Time
\Thread(svchost/28)\% Processor Time
\Thread(svchost/29)\% Processor Time
\Thread(svchost/30)\% Processor Time
\Thread(svchost/31)\% Processor Time
\Thread(svchost/32)\% Processor Time
\Thread(svchost/33)\% Processor Time
\Thread(svchost/34)\% Processor Time
\Thread(svchost/35)\% Processor Time
\Thread(svchost/36)\% Processor Time
\Thread(svchost/37)\% Processor Time
\Thread(svchost/38)\% Processor Time
\Thread(svchost/39)\% Processor Time
\Thread(svchost/40)\% Processor Time
\Thread(svchost/41)\% Processor Time
\Thread(svchost/42)\% Processor Time
\Thread(svchost/43)\% Processor Time
\Thread(svchost/44)\% Processor Time
\Thread(svchost/45)\% Processor Time
\Thread(svchost/46)\% Processor Time
\Thread(svchost/47)\% Processor Time
\Thread(svchost/48)\% Processor Time
\Thread(svchost/49)\% Processor Time
\Thread(svchost/50)\% Processor Time
\Thread(svchost/51)\% Processor Time
\Thread(svchost/52)\% Processor Time
\Thread(svchost/53)\% Processor Time
\Thread(svchost/54)\% Processor Time
\Thread(svchost/55)\% Processor Time
\Thread(svchost/56)\% Processor Time
\Thread(svchost/57)\% Processor Time
\Thread(svchost/58)\% Processor Time
\Thread(svchost/59)\% Processor Time
\Thread(svchost/60)\% Processor Time
\Thread(svchost/61)\% Processor Time
\Thread(svchost/62)\% Processor Time
\Thread(svchost/63)\% Processor Time
\Thread(svchost/64)\% Processor Time
\Thread(svchost/65)\% Processor Time
\Thread(svchost/66)\% Processor Time
\Thread(svchost/67)\% Processor Time
\Thread(svchost/68)\% Processor Time
\Thread(svchost/69)\% Processor Time
\Thread(svchost/70)\% Processor Time
\Thread(svchost/0)\% Processor Time
\Thread(svchost/1)\% Processor Time
\Thread(svchost/2)\% Processor Time
\Thread(svchost/3)\% Processor Time
\Thread(svchost/4)\% Processor Time
\Thread(svchost/5)\% Processor Time
\Thread(svchost/0)\% Processor Time
\Thread(svchost/1)\% Processor Time
\Thread(svchost/2)\% Processor Time
\Thread(svchost/3)\% Processor Time
\Thread(svchost/4)\% Processor Time
\Thread(svchost/5)\% Processor Time
\Thread(svchost/6)\% Processor Time
\Thread(svchost/7)\% Processor Time
\Thread(svchost/8)\% Processor Time
\Thread(svchost/9)\% Processor Time
\Thread(svchost/10)\% Processor Time
\Thread(svchost/11)\% Processor Time
\Thread(svchost/12)\% Processor Time
\Thread(svchost/13)\% Processor Time
\Thread(svchost/14)\% Processor Time
\Thread(svchost/0)\% Processor Time
\Thread(svchost/1)\% Processor Time
\Thread(svchost/2)\% Processor Time
\Thread(svchost/3)\% Processor Time
\Thread(svchost/4)\% Processor Time
\Thread(kxedefend/0)\% Processor Time
\Thread(kxedefend/1)\% Processor Time
\Thread(kxedefend/2)\% Processor Time
\Thread(kxedefend/3)\% Processor Time
\Thread(kxedefend/4)\% Processor Time
\Thread(kxedefend/5)\% Processor Time
\Thread(kxedefend/6)\% Processor Time
\Thread(kxedefend/7)\% Processor Time
\Thread(kxedefend/8)\% Processor Time
\Thread(kxedefend/9)\% Processor Time
\Thread(kxedefend/10)\% Processor Time
\Thread(kxedefend/11)\% Processor Time
\Thread(kxedefend/12)\% Processor Time
\Thread(kxedefend/13)\% Processor Time
\Thread(kxedefend/14)\% Processor Time
\Thread(kxedefend/15)\% Processor Time
\Thread(kxedefend/16)\% Processor Time
\Thread(kxedefend/17)\% Processor Time
\Thread(kxedefend/18)\% Processor Time
\Thread(kxedefend/19)\% Processor Time
\Thread(kxedefend/20)\% Processor Time
\Thread(kxedefend/21)\% Processor Time
\Thread(kxedefend/22)\% Processor Time
\Thread(kxedefend/23)\% Processor Time
\Thread(kxedefend/24)\% Processor Time
\Thread(kxedefend/25)\% Processor Time
\Thread(kxedefend/26)\% Processor Time
\Thread(kxedefend/27)\% Processor Time
\Thread(kxescore/0)\% Processor Time
\Thread(kxescore/1)\% Processor Time
\Thread(kxescore/2)\% Processor Time
\Thread(kxescore/3)\% Processor Time
\Thread(kxescore/4)\% Processor Time
\Thread(kxescore/5)\% Processor Time
\Thread(kxescore/6)\% Processor Time
\Thread(kxescore/7)\% Processor Time
\Thread(kxescore/8)\% Processor Time
\Thread(kxescore/9)\% Processor Time
\Thread(kxescore/10)\% Processor Time
\Thread(kxescore/11)\% Processor Time
\Thread(kxescore/12)\% Processor Time
\Thread(kxescore/13)\% Processor Time
\Thread(kxescore/14)\% Processor Time
\Thread(kxescore/15)\% Processor Time
\Thread(kxescore/16)\% Processor Time
\Thread(kxescore/17)\% Processor Time
\Thread(kxescore/18)\% Processor Time
\Thread(kxescore/19)\% Processor Time
\Thread(kxescore/20)\% Processor Time
\Thread(kxescore/21)\% Processor Time
\Thread(kxescore/22)\% Processor Time
\Thread(kxescore/23)\% Processor Time
\Thread(kxescore/24)\% Processor Time
\Thread(kxescore/25)\% Processor Time
\Thread(kxescore/26)\% Processor Time
\Thread(kxescore/27)\% Processor Time
\Thread(kxescore/28)\% Processor Time
\Thread(kxescore/29)\% Processor Time
\Thread(kxescore/30)\% Processor Time
\Thread(kxescore/31)\% Processor Time
\Thread(kxescore/32)\% Processor Time
\Thread(kxescore/33)\% Processor Time
\Thread(kxescore/34)\% Processor Time
\Thread(kxescore/35)\% Processor Time
\Thread(kxescore/36)\% Processor Time
\Thread(kxescore/37)\% Processor Time
\Thread(kxescore/38)\% Processor Time
\Thread(kxescore/39)\% Processor Time
\Thread(kxescore/40)\% Processor Time
\Thread(kxescore/41)\% Processor Time
\Thread(kxescore/42)\% Processor Time
\Thread(kxescore/43)\% Processor Time
\Thread(kxescore/44)\% Processor Time
\Thread(kxescore/45)\% Processor Time
\Thread(kxescore/46)\% Processor Time
\Thread(kxescore/47)\% Processor Time
\Thread(kxescore/48)\% Processor Time
\Thread(kxescore/49)\% Processor Time
\Thread(kxescore/50)\% Processor Time
\Thread(kxescore/51)\% Processor Time
\Thread(kxescore/52)\% Processor Time
\Thread(kxescore/53)\% Processor Time
\Thread(kxescore/54)\% Processor Time
\Thread(kxescore/55)\% Processor Time
\Thread(kxescore/56)\% Processor Time
\Thread(kxescore/57)\% Processor Time
\Thread(kxescore/58)\% Processor Time
\Thread(kxescore/59)\% Processor Time
\Thread(kxescore/60)\% Processor Time
\Thread(KSafeSvc/0)\% Processor Time
\Thread(KSafeSvc/1)\% Processor Time
\Thread(KSafeSvc/2)\% Processor Time
\Thread(KSafeSvc/3)\% Processor Time
\Thread(KSafeSvc/4)\% Processor Time
\Thread(KSafeSvc/5)\% Processor Time
\Thread(KSafeSvc/6)\% Processor Time
\Thread(KSafeSvc/7)\% Processor Time
\Thread(KSafeSvc/8)\% Processor Time
\Thread(KSafeSvc/9)\% Processor Time
\Thread(KSafeSvc/10)\% Processor Time
\Thread(KSafeSvc/11)\% Processor Time
\Thread(KSafeSvc/12)\% Processor Time
\Thread(KSafeSvc/13)\% Processor Time
\Thread(KSafeSvc/14)\% Processor Time
\Thread(KSafeSvc/15)\% Processor Time
\Thread(KSafeSvc/16)\% Processor Time
\Thread(KSafeSvc/17)\% Processor Time
\Thread(KSafeSvc/18)\% Processor Time
\Thread(KSafeSvc/19)\% Processor Time
\Thread(KSafeSvc/20)\% Processor Time
\Thread(KSafeSvc/21)\% Processor Time
\Thread(KSafeSvc/22)\% Processor Time
\Thread(KSafeSvc/23)\% Processor Time
\Thread(KSafeSvc/24)\% Processor Time
\Thread(KSafeSvc/25)\% Processor Time
\Thread(KSafeSvc/26)\% Processor Time
\Thread(KSafeSvc/27)\% Processor Time
\Thread(KSafeSvc/28)\% Processor Time
\Thread(KSafeSvc/29)\% Processor Time
\Thread(KSafeSvc/30)\% Processor Time
\Thread(KSafeSvc/31)\% Processor Time
\Thread(KSafeSvc/32)\% Processor Time
\Thread(KSafeSvc/33)\% Processor Time
\Thread(KSafeSvc/34)\% Processor Time
\Thread(KSafeSvc/35)\% Processor Time
\Thread(KSafeSvc/36)\% Processor Time
\Thread(KSafeSvc/37)\% Processor Time
\Thread(KSafeSvc/38)\% Processor Time
\Thread(KSafeSvc/39)\% Processor Time
\Thread(KSafeSvc/40)\% Processor Time
\Thread(KSafeSvc/41)\% Processor Time
\Thread(KSafeSvc/42)\% Processor Time
\Thread(KSafeSvc/43)\% Processor Time
\Thread(KSafeSvc/44)\% Processor Time
\Thread(KSafeSvc/45)\% Processor Time
\Thread(KSafeSvc/46)\% Processor Time
\Thread(KSafeSvc/47)\% Processor Time
\Thread(KSafeSvc/48)\% Processor Time
\Thread(KSafeSvc/49)\% Processor Time
\Thread(KSafeSvc/50)\% Processor Time
\Thread(KSafeSvc/51)\% Processor Time
\Thread(KSafeSvc/52)\% Processor Time
\Thread(KSafeSvc/53)\% Processor Time
\Thread(kxesapp/0)\% Processor Time
\Thread(kxesapp/1)\% Processor Time
\Thread(kxesapp/2)\% Processor Time
\Thread(kxesapp/3)\% Processor Time
\Thread(kxesapp/4)\% Processor Time
\Thread(kxesapp/5)\% Processor Time
\Thread(kxesapp/6)\% Processor Time
\Thread(kxesapp/7)\% Processor Time
\Thread(kxesapp/8)\% Processor Time
\Thread(kxesapp/9)\% Processor Time
\Thread(kxesapp/10)\% Processor Time
\Thread(kxesapp/11)\% Processor Time
\Thread(kxesapp/12)\% Processor Time
\Thread(kxesapp/13)\% Processor Time
\Thread(kxesapp/14)\% Processor Time
\Thread(kxesapp/15)\% Processor Time
\Thread(kxesapp/16)\% Processor Time
\Thread(kxesapp/17)\% Processor Time
\Thread(kxesapp/18)\% Processor Time
\Thread(kxesapp/19)\% Processor Time
\Thread(kxesapp/20)\% Processor Time
\Thread(kxesapp/21)\% Processor Time
\Thread(kxesapp/22)\% Processor Time
\Thread(spoolsv/0)\% Processor Time
\Thread(spoolsv/1)\% Processor Time
\Thread(spoolsv/2)\% Processor Time
\Thread(spoolsv/3)\% Processor Time
\Thread(spoolsv/4)\% Processor Time
\Thread(spoolsv/5)\% Processor Time
\Thread(spoolsv/6)\% Processor Time
\Thread(spoolsv/7)\% Processor Time
\Thread(spoolsv/8)\% Processor Time
\Thread(spoolsv/9)\% Processor Time
\Thread(spoolsv/10)\% Processor Time
\Thread(spoolsv/11)\% Processor Time
\Thread(spoolsv/12)\% Processor Time
\Thread(spoolsv/13)\% Processor Time
\Thread(alg/0)\% Processor Time
\Thread(alg/1)\% Processor Time
\Thread(alg/2)\% Processor Time
\Thread(alg/3)\% Processor Time
\Thread(alg/4)\% Processor Time
\Thread(AsistService/0)\% Processor Time
\Thread(AsistService/1)\% Processor Time
\Thread(AsistService/2)\% Processor Time
\Thread(DSRSvc/0)\% Processor Time
\Thread(DSRSvc/1)\% Processor Time
\Thread(DSRSvc/2)\% Processor Time
\Thread(DSRSvc/3)\% Processor Time
\Thread(DSRSvc/4)\% Processor Time
\Thread(DSRSvc/5)\% Processor Time
\Thread(DSRSvc/6)\% Processor Time
\Thread(DSRSvc/7)\% Processor Time
\Thread(DSRSvc/8)\% Processor Time
\Thread(DSRSvc/9)\% Processor Time
\Thread(DSRSvc/10)\% Processor Time
\Thread(DSRSvc/11)\% Processor Time
\Thread(DSRSvc/12)\% Processor Time
\Thread(FolderSizeSvc/0)\% Processor Time
\Thread(FolderSizeSvc/1)\% Processor Time
\Thread(FolderSizeSvc/2)\% Processor Time
\Thread(FolderSizeSvc/3)\% Processor Time
\Thread(FolderSizeSvc/4)\% Processor Time
\Thread(FolderSizeSvc/5)\% Processor Time
\Thread(FolderSizeSvc/6)\% Processor Time
\Thread(FolderSizeSvc/7)\% Processor Time
\Thread(FolderSizeSvc/8)\% Processor Time
\Thread(FolderSizeSvc/9)\% Processor Time
\Thread(FolderSizeSvc/10)\% Processor Time
\Thread(FolderSizeSvc/11)\% Processor Time
\Thread(FolderSizeSvc/12)\% Processor Time
\Thread(FolderSizeSvc/13)\% Processor Time
\Thread(FolderSizeSvc/14)\% Processor Time
\Thread(FolderSizeSvc/15)\% Processor Time
\Thread(FolderSizeSvc/16)\% Processor Time
\Thread(FolderSizeSvc/17)\% Processor Time
\Thread(FolderSizeSvc/18)\% Processor Time
\Thread(FolderSizeSvc/19)\% Processor Time
\Thread(FolderSizeSvc/20)\% Processor Time
\Thread(FolderSizeSvc/21)\% Processor Time
\Thread(FolderSizeSvc/22)\% Processor Time
\Thread(FolderSizeSvc/23)\% Processor Time
\Thread(FolderSizeSvc/24)\% Processor Time
\Thread(FolderSizeSvc/25)\% Processor Time
\Thread(FolderSizeSvc/26)\% Processor Time
\Thread(FolderSizeSvc/27)\% Processor Time
\Thread(FolderSizeSvc/28)\% Processor Time
\Thread(FolderSizeSvc/29)\% Processor Time
\Thread(FolderSizeSvc/30)\% Processor Time
\Thread(FolderSizeSvc/31)\% Processor Time
\Thread(FolderSizeSvc/32)\% Processor Time
\Thread(FolderSizeSvc/33)\% Processor Time
\Thread(FolderSizeSvc/34)\% Processor Time
\Thread(FolderSizeSvc/35)\% Processor Time
\Thread(FolderSizeSvc/36)\% Processor Time
\Thread(FolderSizeSvc/37)\% Processor Time
\Thread(FolderSizeSvc/38)\% Processor Time
\Thread(FolderSizeSvc/39)\% Processor Time
\Thread(FolderSizeSvc/40)\% Processor Time
\Thread(FolderSizeSvc/41)\% Processor Time
\Thread(FolderSizeSvc/42)\% Processor Time
\Thread(FolderSizeSvc/43)\% Processor Time
\Thread(FolderSizeSvc/44)\% Processor Time
\Thread(FolderSizeSvc/45)\% Processor Time
\Thread(FolderSizeSvc/46)\% Processor Time
\Thread(GSGIOSRV/0)\% Processor Time
\Thread(GSGIOSRV/1)\% Processor Time
\Thread(GSGIOSRV/2)\% Processor Time
\Thread(upsvc/0)\% Processor Time
\Thread(upsvc/1)\% Processor Time
\Thread(upsvc/2)\% Processor Time
\Thread(upsvc/3)\% Processor Time
\Thread(upsvc/4)\% Processor Time
\Thread(mdm/0)\% Processor Time
\Thread(mdm/1)\% Processor Time
\Thread(mdm/2)\% Processor Time
\Thread(mdm/3)\% Processor Time
\Thread(mdm/4)\% Processor Time
\Thread(rtiosrv/0)\% Processor Time
\Thread(rtiosrv/1)\% Processor Time
\Thread(rtiosrv/2)\% Processor Time
\Thread(rtiosrv/3)\% Processor Time
\Thread(ManagerClient/0)\% Processor Time
\Thread(ManagerClient/1)\% Processor Time
\Thread(sqlwriter/0)\% Processor Time
\Thread(sqlwriter/1)\% Processor Time
\Thread(sqlwriter/2)\% Processor Time
\Thread(vmware-usbarbitrator/0)\% Processor Time
\Thread(vmware-usbarbitrator/1)\% Processor Time
\Thread(vmnat/0)\% Processor Time
\Thread(vmnat/1)\% Processor Time
\Thread(vmnat/2)\% Processor Time
\Thread(vmnetdhcp/0)\% Processor Time
\Thread(vmnetdhcp/1)\% Processor Time
\Thread(vmware-authd/0)\% Processor Time
\Thread(vmware-authd/1)\% Processor Time
\Thread(vmware-authd/2)\% Processor Time
\Thread(vmware-authd/3)\% Processor Time
\Thread(vmware-authd/4)\% Processor Time
\Thread(vmware-authd/5)\% Processor Time
\Thread(vmware-authd/6)\% Processor Time
\Thread(explorer/0)\% Processor Time
\Thread(explorer/1)\% Processor Time
\Thread(explorer/2)\% Processor Time
\Thread(explorer/3)\% Processor Time
\Thread(explorer/4)\% Processor Time
\Thread(explorer/5)\% Processor Time
\Thread(explorer/6)\% Processor Time
\Thread(explorer/7)\% Processor Time
\Thread(explorer/8)\% Processor Time
\Thread(explorer/9)\% Processor Time
\Thread(explorer/10)\% Processor Time
\Thread(explorer/11)\% Processor Time
\Thread(explorer/12)\% Processor Time
\Thread(explorer/13)\% Processor Time
\Thread(explorer/14)\% Processor Time
\Thread(explorer/15)\% Processor Time
\Thread(explorer/16)\% Processor Time
\Thread(explorer/17)\% Processor Time
\Thread(explorer/18)\% Processor Time
\Thread(explorer/19)\% Processor Time
\Thread(explorer/20)\% Processor Time
\Thread(explorer/21)\% Processor Time
\Thread(explorer/22)\% Processor Time
\Thread(TSVNCache/0)\% Processor Time
\Thread(TSVNCache/1)\% Processor Time
\Thread(TSVNCache/2)\% Processor Time
\Thread(TSVNCache/3)\% Processor Time
\Thread(TSVNCache/4)\% Processor Time
\Thread(TSVNCache/5)\% Processor Time
\Thread(TSVNCache/6)\% Processor Time
\Thread(TSVNCache/7)\% Processor Time
\Thread(TSVNCache/8)\% Processor Time
\Thread(TSVNCache/9)\% Processor Time
\Thread(TSVNCache/10)\% Processor Time
\Thread(igfxtray/0)\% Processor Time
\Thread(igfxtray/1)\% Processor Time
\Thread(hkcmd/0)\% Processor Time
\Thread(hkcmd/1)\% Processor Time
\Thread(hkcmd/2)\% Processor Time
\Thread(igfxpers/0)\% Processor Time
\Thread(igfxpers/1)\% Processor Time
\Thread(KSafeTray/0)\% Processor Time
\Thread(KSafeTray/1)\% Processor Time
\Thread(KSafeTray/2)\% Processor Time
\Thread(KSafeTray/3)\% Processor Time
\Thread(KSafeTray/4)\% Processor Time
\Thread(KSafeTray/5)\% Processor Time
\Thread(KSafeTray/6)\% Processor Time
\Thread(KSafeTray/7)\% Processor Time
\Thread(KSafeTray/8)\% Processor Time
\Thread(KSafeTray/9)\% Processor Time
\Thread(KSafeTray/10)\% Processor Time
\Thread(KSafeTray/11)\% Processor Time
\Thread(KSafeTray/12)\% Processor Time
\Thread(KSafeTray/13)\% Processor Time
\Thread(KSafeTray/14)\% Processor Time
\Thread(KSafeTray/15)\% Processor Time
\Thread(KSafeTray/16)\% Processor Time
\Thread(KSafeTray/17)\% Processor Time
\Thread(KSafeTray/18)\% Processor Time
\Thread(KSafeTray/19)\% Processor Time
\Thread(KSafeTray/20)\% Processor Time
\Thread(KSafeTray/21)\% Processor Time
\Thread(KSafeTray/22)\% Processor Time
\Thread(KSafeTray/23)\% Processor Time
\Thread(kxetray/0)\% Processor Time
\Thread(kxetray/1)\% Processor Time
\Thread(kxetray/2)\% Processor Time
\Thread(kxetray/3)\% Processor Time
\Thread(kxetray/4)\% Processor Time
\Thread(kxetray/5)\% Processor Time
\Thread(kxetray/6)\% Processor Time
\Thread(kxetray/7)\% Processor Time
\Thread(kxetray/8)\% Processor Time
\Thread(kxetray/9)\% Processor Time
\Thread(kxetray/10)\% Processor Time
\Thread(kxetray/11)\% Processor Time
\Thread(kxetray/12)\% Processor Time
\Thread(kxetray/13)\% Processor Time
\Thread(kxetray/14)\% Processor Time
\Thread(kxetray/15)\% Processor Time
\Thread(kxetray/16)\% Processor Time
\Thread(kxetray/17)\% Processor Time
\Thread(kxetray/18)\% Processor Time
\Thread(kxetray/19)\% Processor Time
\Thread(kxetray/20)\% Processor Time
\Thread(kxetray/21)\% Processor Time
\Thread(kxetray/22)\% Processor Time
\Thread(kxetray/23)\% Processor Time
\Thread(igfxsrvc/0)\% Processor Time
\Thread(igfxsrvc/1)\% Processor Time
\Thread(igfxsrvc/2)\% Processor Time
\Thread(igfxsrvc/3)\% Processor Time
\Thread(Ext2Mgr/0)\% Processor Time
\Thread(RTHDCPL/0)\% Processor Time
\Thread(RTHDCPL/1)\% Processor Time
\Thread(RTHDCPL/2)\% Processor Time
\Thread(RTHDCPL/3)\% Processor Time
\Thread(OfficeIM/0)\% Processor Time
\Thread(OfficeIM/1)\% Processor Time
\Thread(OfficeIM/2)\% Processor Time
\Thread(OfficeIM/3)\% Processor Time
\Thread(OfficeIM/4)\% Processor Time
\Thread(OfficeIM/5)\% Processor Time
\Thread(OfficeIM/6)\% Processor Time
\Thread(OfficeIM/7)\% Processor Time
\Thread(OfficeIM/8)\% Processor Time
\Thread(OfficeIM/9)\% Processor Time
\Thread(OfficeIM/10)\% Processor Time
\Thread(OfficeIM/11)\% Processor Time
\Thread(OfficeIM/12)\% Processor Time
\Thread(OfficeIM/13)\% Processor Time
\Thread(OfficeIM/14)\% Processor Time
\Thread(vmware-tray/0)\% Processor Time
\Thread(vmware-tray/1)\% Processor Time
\Thread(vmware-tray/2)\% Processor Time
\Thread(msnmsgr/0)\% Processor Time
\Thread(msnmsgr/1)\% Processor Time
\Thread(msnmsgr/2)\% Processor Time
\Thread(msnmsgr/3)\% Processor Time
\Thread(msnmsgr/4)\% Processor Time
\Thread(msnmsgr/5)\% Processor Time
\Thread(msnmsgr/6)\% Processor Time
\Thread(msnmsgr/7)\% Processor Time
\Thread(msnmsgr/8)\% Processor Time
\Thread(msnmsgr/9)\% Processor Time
\Thread(msnmsgr/10)\% Processor Time
\Thread(msnmsgr/11)\% Processor Time
\Thread(msnmsgr/12)\% Processor Time
\Thread(msnmsgr/13)\% Processor Time
\Thread(msnmsgr/14)\% Processor Time
\Thread(msnmsgr/15)\% Processor Time
\Thread(msnmsgr/16)\% Processor Time
\Thread(msnmsgr/17)\% Processor Time
\Thread(msnmsgr/18)\% Processor Time
\Thread(msnmsgr/19)\% Processor Time
\Thread(msnmsgr/20)\% Processor Time
\Thread(msnmsgr/21)\% Processor Time
\Thread(msnmsgr/22)\% Processor Time
\Thread(msnmsgr/23)\% Processor Time
\Thread(msnmsgr/24)\% Processor Time
\Thread(msnmsgr/25)\% Processor Time
\Thread(msnmsgr/26)\% Processor Time
\Thread(msnmsgr/27)\% Processor Time
\Thread(msnmsgr/28)\% Processor Time
\Thread(msnmsgr/29)\% Processor Time
\Thread(msnmsgr/30)\% Processor Time
\Thread(msnmsgr/31)\% Processor Time
\Thread(msnmsgr/32)\% Processor Time
\Thread(msnmsgr/33)\% Processor Time
\Thread(msnmsgr/34)\% Processor Time
\Thread(msnmsgr/35)\% Processor Time
\Thread(msnmsgr/36)\% Processor Time
\Thread(msnmsgr/37)\% Processor Time
\Thread(msnmsgr/38)\% Processor Time
\Thread(msnmsgr/39)\% Processor Time
\Thread(ctfmon/0)\% Processor Time
\Thread(VVCap/0)\% Processor Time
\Thread(VVCap/1)\% Processor Time
\Thread(wlcomm/0)\% Processor Time
\Thread(wlcomm/1)\% Processor Time
\Thread(wlcomm/2)\% Processor Time
\Thread(wlcomm/3)\% Processor Time
\Thread(wlcomm/4)\% Processor Time
\Thread(wlcomm/5)\% Processor Time
\Thread(wlcomm/6)\% Processor Time
\Thread(wlcomm/7)\% Processor Time
\Thread(wlcomm/8)\% Processor Time
\Thread(wlcomm/9)\% Processor Time
\Thread(wlcomm/10)\% Processor Time
\Thread(wlcomm/11)\% Processor Time
\Thread(wlcomm/12)\% Processor Time
\Thread(wlcomm/13)\% Processor Time
\Thread(wlcomm/14)\% Processor Time
\Thread(WPFFontCache_v0400/0)\% Processor Time
\Thread(WPFFontCache_v0400/1)\% Processor Time
\Thread(WPFFontCache_v0400/2)\% Processor Time
\Thread(WPFFontCache_v0400/3)\% Processor Time
\Thread(WPFFontCache_v0400/4)\% Processor Time
\Thread(WPFFontCache_v0400/5)\% Processor Time
\Thread(WPFFontCache_v0400/6)\% Processor Time
\Thread(KuGoo/0)\% Processor Time
\Thread(KuGoo/1)\% Processor Time
\Thread(KuGoo/2)\% Processor Time
\Thread(KuGoo/3)\% Processor Time
\Thread(KuGoo/4)\% Processor Time
\Thread(KuGoo/5)\% Processor Time
\Thread(KuGoo/6)\% Processor Time
\Thread(KuGoo/7)\% Processor Time
\Thread(KuGoo/8)\% Processor Time
\Thread(KuGoo/9)\% Processor Time
\Thread(KuGoo/10)\% Processor Time
\Thread(KuGoo/11)\% Processor Time
\Thread(KuGoo/12)\% Processor Time
\Thread(KuGoo/13)\% Processor Time
\Thread(KuGoo/14)\% Processor Time
\Thread(KuGoo/15)\% Processor Time
\Thread(KuGoo/16)\% Processor Time
\Thread(KuGoo/17)\% Processor Time
\Thread(KuGoo/18)\% Processor Time
\Thread(KuGoo/19)\% Processor Time
\Thread(KuGoo/20)\% Processor Time
\Thread(KuGoo/21)\% Processor Time
\Thread(KuGoo/22)\% Processor Time
\Thread(KuGoo/23)\% Processor Time
\Thread(KuGoo/24)\% Processor Time
\Thread(KuGoo/25)\% Processor Time
\Thread(KuGoo/26)\% Processor Time
\Thread(KuGoo/27)\% Processor Time
\Thread(KuGoo/28)\% Processor Time
\Thread(KuGoo/29)\% Processor Time
\Thread(KuGoo/30)\% Processor Time
\Thread(KuGoo/31)\% Processor Time
\Thread(KuGoo/32)\% Processor Time
\Thread(KuGoo/33)\% Processor Time
\Thread(KuGoo/34)\% Processor Time
\Thread(KuGoo/35)\% Processor Time
\Thread(KuGoo/36)\% Processor Time
\Thread(KuGoo/37)\% Processor Time
\Thread(KuGoo/38)\% Processor Time
\Thread(KuGoo/39)\% Processor Time
\Thread(KuGoo/40)\% Processor Time
\Thread(KuGoo/41)\% Processor Time
\Thread(KuGoo/42)\% Processor Time
\Thread(KuGoo/43)\% Processor Time
\Thread(KuGoo/44)\% Processor Time
\Thread(KuGoo/45)\% Processor Time
\Thread(KuGoo/46)\% Processor Time
\Thread(KuGoo/47)\% Processor Time
\Thread(KuGoo/48)\% Processor Time
\Thread(KuGoo/49)\% Processor Time
\Thread(KuGoo/50)\% Processor Time
\Thread(KuGoo/51)\% Processor Time
\Thread(KuGoo/52)\% Processor Time
\Thread(KuGoo/53)\% Processor Time
\Thread(KuGoo/54)\% Processor Time
\Thread(KuGoo/55)\% Processor Time
\Thread(KuGoo/56)\% Processor Time
\Thread(KuGoo/57)\% Processor Time
\Thread(KuGoo/58)\% Processor Time
\Thread(KuGoo/59)\% Processor Time
\Thread(firefox/0)\% Processor Time
\Thread(firefox/1)\% Processor Time
\Thread(firefox/2)\% Processor Time
\Thread(firefox/3)\% Processor Time
\Thread(firefox/4)\% Processor Time
\Thread(firefox/5)\% Processor Time
\Thread(firefox/6)\% Processor Time
\Thread(firefox/7)\% Processor Time
\Thread(firefox/8)\% Processor Time
\Thread(firefox/9)\% Processor Time
\Thread(firefox/10)\% Processor Time
\Thread(firefox/11)\% Processor Time
\Thread(firefox/12)\% Processor Time
\Thread(firefox/13)\% Processor Time
\Thread(firefox/14)\% Processor Time
\Thread(firefox/15)\% Processor Time
\Thread(firefox/16)\% Processor Time
\Thread(firefox/17)\% Processor Time
\Thread(firefox/18)\% Processor Time
\Thread(firefox/19)\% Processor Time
\Thread(firefox/20)\% Processor Time
\Thread(firefox/21)\% Processor Time
\Thread(firefox/22)\% Processor Time
\Thread(firefox/23)\% Processor Time
\Thread(firefox/24)\% Processor Time
\Thread(vmware/0)\% Processor Time
\Thread(vmware/1)\% Processor Time
\Thread(vmware/2)\% Processor Time
\Thread(vmware/3)\% Processor Time
\Thread(vmware/4)\% Processor Time
\Thread(vmware/5)\% Processor Time
\Thread(vmware/6)\% Processor Time
\Thread(vmware/7)\% Processor Time
\Thread(taskmgr/0)\% Processor Time
\Thread(taskmgr/1)\% Processor Time
\Thread(taskmgr/2)\% Processor Time
\Thread(SshClient/0)\% Processor Time
\Thread(SshClient/1)\% Processor Time
\Thread(SshClient/2)\% Processor Time
\Thread(SshClient/3)\% Processor Time
\Thread(SshClient/4)\% Processor Time
\Thread(SshClient/5)\% Processor Time
\Thread(SshClient/6)\% Processor Time
\Thread(Thunder5/0)\% Processor Time
\Thread(Thunder5/1)\% Processor Time
\Thread(Thunder5/2)\% Processor Time
\Thread(Thunder5/3)\% Processor Time
\Thread(Thunder5/4)\% Processor Time
\Thread(Thunder5/5)\% Processor Time
\Thread(Thunder5/6)\% Processor Time
\Thread(Thunder5/7)\% Processor Time
\Thread(Thunder5/8)\% Processor Time
\Thread(Thunder5/9)\% Processor Time
\Thread(Thunder5/10)\% Processor Time
\Thread(Thunder5/11)\% Processor Time
\Thread(Thunder5/12)\% Processor Time
\Thread(Thunder5/13)\% Processor Time
\Thread(Thunder5/14)\% Processor Time
\Thread(Thunder5/15)\% Processor Time
\Thread(Thunder5/16)\% Processor Time
\Thread(Thunder5/17)\% Processor Time
\Thread(Thunder5/18)\% Processor Time
\Thread(Thunder5/19)\% Processor Time
\Thread(Thunder5/20)\% Processor Time
\Thread(Thunder5/21)\% Processor Time
\Thread(Thunder5/22)\% Processor Time
\Thread(Thunder5/23)\% Processor Time
\Thread(Thunder5/24)\% Processor Time
\Thread(Thunder5/25)\% Processor Time
\Thread(Thunder5/26)\% Processor Time
\Thread(Thunder5/27)\% Processor Time
\Thread(Thunder5/28)\% Processor Time
\Thread(Thunder5/29)\% Processor Time
\Thread(Thunder5/30)\% Processor Time
\Thread(Thunder5/31)\% Processor Time
\Thread(Thunder5/32)\% Processor Time
\Thread(Thunder5/33)\% Processor Time
\Thread(Thunder5/34)\% Processor Time
\Thread(Thunder5/35)\% Processor Time
\Thread(Thunder5/36)\% Processor Time
\Thread(Thunder5/37)\% Processor Time
\Thread(Thunder5/38)\% Processor Time
\Thread(Thunder5/39)\% Processor Time
\Thread(Thunder5/40)\% Processor Time
\Thread(Thunder5/41)\% Processor Time
\Thread(Thunder5/42)\% Processor Time
\Thread(Thunder5/43)\% Processor Time
\Thread(Thunder5/44)\% Processor Time
\Thread(Thunder5/45)\% Processor Time
\Thread(Thunder5/46)\% Processor Time
\Thread(cmd/0)\% Processor Time
\Thread(typeperf/0)\% Processor Time
\Thread(typeperf/1)\% Processor Time
\Thread(typeperf/2)\% Processor Time
\Thread(typeperf/3)\% Processor Time
\Thread(typeperf/4)\% Processor Time
\Thread(typeperf/5)\% Processor Time
\Thread(typeperf/6)\% Processor Time
\Thread(typeperf/7)\% Processor Time
\Thread(typeperf/8)\% Processor Time
\Thread(typeperf/9)\% Processor Time
\Thread(typeperf/10)\% Processor Time
\Thread(_Total/_Total)\% Processor Time
\Thread(Idle/0)\% User Time
\Thread(Idle/1)\% User Time
\Thread(System/0)\% User Time
\Thread(System/1)\% User Time
\Thread(System/2)\% User Time
\Thread(System/3)\% User Time
\Thread(System/4)\% User Time
\Thread(System/5)\% User Time
\Thread(System/6)\% User Time
\Thread(System/7)\% User Time
\Thread(System/8)\% User Time
\Thread(System/9)\% User Time
\Thread(System/10)\% User Time
\Thread(System/11)\% User Time
\Thread(System/12)\% User Time
\Thread(System/13)\% User Time
\Thread(System/14)\% User Time
\Thread(System/15)\% User Time
\Thread(System/16)\% User Time
\Thread(System/17)\% User Time
\Thread(System/18)\% User Time
\Thread(System/19)\% User Time
\Thread(System/20)\% User Time
\Thread(System/21)\% User Time
\Thread(System/22)\% User Time
\Thread(System/23)\% User Time
\Thread(System/24)\% User Time
\Thread(System/25)\% User Time
\Thread(System/26)\% User Time
\Thread(System/27)\% User Time
\Thread(System/28)\% User Time
\Thread(System/29)\% User Time
\Thread(System/30)\% User Time
\Thread(System/31)\% User Time
\Thread(System/32)\% User Time
\Thread(System/33)\% User Time
\Thread(System/34)\% User Time
\Thread(System/35)\% User Time
\Thread(System/36)\% User Time
\Thread(System/37)\% User Time
\Thread(System/38)\% User Time
\Thread(System/39)\% User Time
\Thread(System/40)\% User Time
\Thread(System/41)\% User Time
\Thread(System/42)\% User Time
\Thread(System/43)\% User Time
\Thread(System/44)\% User Time
\Thread(System/45)\% User Time
\Thread(System/46)\% User Time
\Thread(System/47)\% User Time
\Thread(System/48)\% User Time
\Thread(System/49)\% User Time
\Thread(System/50)\% User Time
\Thread(System/51)\% User Time
\Thread(System/52)\% User Time
\Thread(System/53)\% User Time
\Thread(System/54)\% User Time
\Thread(System/55)\% User Time
\Thread(System/56)\% User Time
\Thread(System/57)\% User Time
\Thread(System/58)\% User Time
\Thread(System/59)\% User Time
\Thread(System/60)\% User Time
\Thread(System/61)\% User Time
\Thread(System/62)\% User Time
\Thread(System/63)\% User Time
\Thread(System/64)\% User Time
\Thread(System/65)\% User Time
\Thread(System/66)\% User Time
\Thread(System/67)\% User Time
\Thread(System/68)\% User Time
\Thread(System/69)\% User Time
\Thread(System/70)\% User Time
\Thread(System/71)\% User Time
\Thread(System/72)\% User Time
\Thread(System/73)\% User Time
\Thread(System/74)\% User Time
\Thread(System/75)\% User Time
\Thread(System/76)\% User Time
\Thread(System/77)\% User Time
\Thread(System/78)\% User Time
\Thread(System/79)\% User Time
\Thread(System/80)\% User Time
\Thread(System/81)\% User Time
\Thread(System/82)\% User Time
\Thread(System/83)\% User Time
\Thread(System/84)\% User Time
\Thread(System/85)\% User Time
\Thread(System/86)\% User Time
\Thread(System/87)\% User Time
\Thread(System/88)\% User Time
\Thread(System/89)\% User Time
\Thread(System/90)\% User Time
\Thread(System/91)\% User Time
\Thread(System/92)\% User Time
\Thread(System/93)\% User Time
\Thread(System/94)\% User Time
\Thread(System/95)\% User Time
\Thread(System/96)\% User Time
\Thread(System/97)\% User Time
\Thread(smss/0)\% User Time
\Thread(smss/1)\% User Time
\Thread(smss/2)\% User Time
\Thread(csrss/0)\% User Time
\Thread(csrss/1)\% User Time
\Thread(csrss/2)\% User Time
\Thread(csrss/3)\% User Time
\Thread(csrss/4)\% User Time
\Thread(csrss/5)\% User Time
\Thread(csrss/6)\% User Time
\Thread(csrss/7)\% User Time
\Thread(csrss/8)\% User Time
\Thread(csrss/9)\% User Time
\Thread(csrss/10)\% User Time
\Thread(csrss/11)\% User Time
\Thread(winlogon/0)\% User Time
\Thread(winlogon/1)\% User Time
\Thread(winlogon/2)\% User Time
\Thread(winlogon/3)\% User Time
\Thread(winlogon/4)\% User Time
\Thread(winlogon/5)\% User Time
\Thread(winlogon/6)\% User Time
\Thread(winlogon/7)\% User Time
\Thread(winlogon/8)\% User Time
\Thread(winlogon/9)\% User Time
\Thread(winlogon/10)\% User Time
\Thread(winlogon/11)\% User Time
\Thread(winlogon/12)\% User Time
\Thread(winlogon/13)\% User Time
\Thread(winlogon/14)\% User Time
\Thread(winlogon/15)\% User Time
\Thread(winlogon/16)\% User Time
\Thread(winlogon/17)\% User Time
\Thread(winlogon/18)\% User Time
\Thread(winlogon/19)\% User Time
\Thread(winlogon/20)\% User Time
\Thread(winlogon/21)\% User Time
\Thread(services/0)\% User Time
\Thread(services/1)\% User Time
\Thread(services/2)\% User Time
\Thread(services/3)\% User Time
\Thread(services/4)\% User Time
\Thread(services/5)\% User Time
\Thread(services/6)\% User Time
\Thread(services/7)\% User Time
\Thread(services/8)\% User Time
\Thread(services/9)\% User Time
\Thread(services/10)\% User Time
\Thread(services/11)\% User Time
\Thread(services/12)\% User Time
\Thread(services/13)\% User Time
\Thread(services/14)\% User Time
\Thread(services/15)\% User Time
\Thread(lsass/0)\% User Time
\Thread(lsass/1)\% User Time
\Thread(lsass/2)\% User Time
\Thread(lsass/3)\% User Time
\Thread(lsass/4)\% User Time
\Thread(lsass/5)\% User Time
\Thread(lsass/6)\% User Time
\Thread(lsass/7)\% User Time
\Thread(lsass/8)\% User Time
\Thread(lsass/9)\% User Time
\Thread(lsass/10)\% User Time
\Thread(lsass/11)\% User Time
\Thread(lsass/12)\% User Time
\Thread(lsass/13)\% User Time
\Thread(lsass/14)\% User Time
\Thread(lsass/15)\% User Time
\Thread(lsass/16)\% User Time
\Thread(lsass/17)\% User Time
\Thread(lsass/18)\% User Time
\Thread(lsass/19)\% User Time
\Thread(lsass/20)\% User Time
\Thread(lsass/21)\% User Time
\Thread(svchost/0)\% User Time
\Thread(svchost/1)\% User Time
\Thread(svchost/2)\% User Time
\Thread(svchost/3)\% User Time
\Thread(svchost/4)\% User Time
\Thread(svchost/5)\% User Time
\Thread(svchost/6)\% User Time
\Thread(svchost/7)\% User Time
\Thread(svchost/0)\% User Time
\Thread(svchost/1)\% User Time
\Thread(svchost/2)\% User Time
\Thread(svchost/3)\% User Time
\Thread(svchost/4)\% User Time
\Thread(svchost/5)\% User Time
\Thread(svchost/6)\% User Time
\Thread(svchost/7)\% User Time
\Thread(svchost/8)\% User Time
\Thread(svchost/9)\% User Time
\Thread(svchost/10)\% User Time
\Thread(svchost/11)\% User Time
\Thread(svchost/12)\% User Time
\Thread(svchost/13)\% User Time
\Thread(svchost/14)\% User Time
\Thread(svchost/15)\% User Time
\Thread(svchost/16)\% User Time
\Thread(svchost/17)\% User Time
\Thread(svchost/18)\% User Time
\Thread(svchost/19)\% User Time
\Thread(svchost/20)\% User Time
\Thread(svchost/21)\% User Time
\Thread(svchost/22)\% User Time
\Thread(svchost/23)\% User Time
\Thread(svchost/24)\% User Time
\Thread(svchost/25)\% User Time
\Thread(svchost/26)\% User Time
\Thread(svchost/27)\% User Time
\Thread(svchost/28)\% User Time
\Thread(svchost/29)\% User Time
\Thread(svchost/30)\% User Time
\Thread(svchost/31)\% User Time
\Thread(svchost/32)\% User Time
\Thread(svchost/33)\% User Time
\Thread(svchost/34)\% User Time
\Thread(svchost/35)\% User Time
\Thread(svchost/36)\% User Time
\Thread(svchost/37)\% User Time
\Thread(svchost/38)\% User Time
\Thread(svchost/39)\% User Time
\Thread(svchost/40)\% User Time
\Thread(svchost/41)\% User Time
\Thread(svchost/42)\% User Time
\Thread(svchost/43)\% User Time
\Thread(svchost/44)\% User Time
\Thread(svchost/45)\% User Time
\Thread(svchost/46)\% User Time
\Thread(svchost/47)\% User Time
\Thread(svchost/48)\% User Time
\Thread(svchost/49)\% User Time
\Thread(svchost/50)\% User Time
\Thread(svchost/51)\% User Time
\Thread(svchost/52)\% User Time
\Thread(svchost/53)\% User Time
\Thread(svchost/54)\% User Time
\Thread(svchost/55)\% User Time
\Thread(svchost/56)\% User Time
\Thread(svchost/57)\% User Time
\Thread(svchost/58)\% User Time
\Thread(svchost/59)\% User Time
\Thread(svchost/60)\% User Time
\Thread(svchost/61)\% User Time
\Thread(svchost/62)\% User Time
\Thread(svchost/63)\% User Time
\Thread(svchost/64)\% User Time
\Thread(svchost/65)\% User Time
\Thread(svchost/66)\% User Time
\Thread(svchost/67)\% User Time
\Thread(svchost/68)\% User Time
\Thread(svchost/69)\% User Time
\Thread(svchost/70)\% User Time
\Thread(svchost/0)\% User Time
\Thread(svchost/1)\% User Time
\Thread(svchost/2)\% User Time
\Thread(svchost/3)\% User Time
\Thread(svchost/4)\% User Time
\Thread(svchost/5)\% User Time
\Thread(svchost/0)\% User Time
\Thread(svchost/1)\% User Time
\Thread(svchost/2)\% User Time
\Thread(svchost/3)\% User Time
\Thread(svchost/4)\% User Time
\Thread(svchost/5)\% User Time
\Thread(svchost/6)\% User Time
\Thread(svchost/7)\% User Time
\Thread(svchost/8)\% User Time
\Thread(svchost/9)\% User Time
\Thread(svchost/10)\% User Time
\Thread(svchost/11)\% User Time
\Thread(svchost/12)\% User Time
\Thread(svchost/13)\% User Time
\Thread(svchost/14)\% User Time
\Thread(svchost/0)\% User Time
\Thread(svchost/1)\% User Time
\Thread(svchost/2)\% User Time
\Thread(svchost/3)\% User Time
\Thread(svchost/4)\% User Time
\Thread(kxedefend/0)\% User Time
\Thread(kxedefend/1)\% User Time
\Thread(kxedefend/2)\% User Time
\Thread(kxedefend/3)\% User Time
\Thread(kxedefend/4)\% User Time
\Thread(kxedefend/5)\% User Time
\Thread(kxedefend/6)\% User Time
\Thread(kxedefend/7)\% User Time
\Thread(kxedefend/8)\% User Time
\Thread(kxedefend/9)\% User Time
\Thread(kxedefend/10)\% User Time
\Thread(kxedefend/11)\% User Time
\Thread(kxedefend/12)\% User Time
\Thread(kxedefend/13)\% User Time
\Thread(kxedefend/14)\% User Time
\Thread(kxedefend/15)\% User Time
\Thread(kxedefend/16)\% User Time
\Thread(kxedefend/17)\% User Time
\Thread(kxedefend/18)\% User Time
\Thread(kxedefend/19)\% User Time
\Thread(kxedefend/20)\% User Time
\Thread(kxedefend/21)\% User Time
\Thread(kxedefend/22)\% User Time
\Thread(kxedefend/23)\% User Time
\Thread(kxedefend/24)\% User Time
\Thread(kxedefend/25)\% User Time
\Thread(kxedefend/26)\% User Time
\Thread(kxedefend/27)\% User Time
\Thread(kxescore/0)\% User Time
\Thread(kxescore/1)\% User Time
\Thread(kxescore/2)\% User Time
\Thread(kxescore/3)\% User Time
\Thread(kxescore/4)\% User Time
\Thread(kxescore/5)\% User Time
\Thread(kxescore/6)\% User Time
\Thread(kxescore/7)\% User Time
\Thread(kxescore/8)\% User Time
\Thread(kxescore/9)\% User Time
\Thread(kxescore/10)\% User Time
\Thread(kxescore/11)\% User Time
\Thread(kxescore/12)\% User Time
\Thread(kxescore/13)\% User Time
\Thread(kxescore/14)\% User Time
\Thread(kxescore/15)\% User Time
\Thread(kxescore/16)\% User Time
\Thread(kxescore/17)\% User Time
\Thread(kxescore/18)\% User Time
\Thread(kxescore/19)\% User Time
\Thread(kxescore/20)\% User Time
\Thread(kxescore/21)\% User Time
\Thread(kxescore/22)\% User Time
\Thread(kxescore/23)\% User Time
\Thread(kxescore/24)\% User Time
\Thread(kxescore/25)\% User Time
\Thread(kxescore/26)\% User Time
\Thread(kxescore/27)\% User Time
\Thread(kxescore/28)\% User Time
\Thread(kxescore/29)\% User Time
\Thread(kxescore/30)\% User Time
\Thread(kxescore/31)\% User Time
\Thread(kxescore/32)\% User Time
\Thread(kxescore/33)\% User Time
\Thread(kxescore/34)\% User Time
\Thread(kxescore/35)\% User Time
\Thread(kxescore/36)\% User Time
\Thread(kxescore/37)\% User Time
\Thread(kxescore/38)\% User Time
\Thread(kxescore/39)\% User Time
\Thread(kxescore/40)\% User Time
\Thread(kxescore/41)\% User Time
\Thread(kxescore/42)\% User Time
\Thread(kxescore/43)\% User Time
\Thread(kxescore/44)\% User Time
\Thread(kxescore/45)\% User Time
\Thread(kxescore/46)\% User Time
\Thread(kxescore/47)\% User Time
\Thread(kxescore/48)\% User Time
\Thread(kxescore/49)\% User Time
\Thread(kxescore/50)\% User Time
\Thread(kxescore/51)\% User Time
\Thread(kxescore/52)\% User Time
\Thread(kxescore/53)\% User Time
\Thread(kxescore/54)\% User Time
\Thread(kxescore/55)\% User Time
\Thread(kxescore/56)\% User Time
\Thread(kxescore/57)\% User Time
\Thread(kxescore/58)\% User Time
\Thread(kxescore/59)\% User Time
\Thread(kxescore/60)\% User Time
\Thread(KSafeSvc/0)\% User Time
\Thread(KSafeSvc/1)\% User Time
\Thread(KSafeSvc/2)\% User Time
\Thread(KSafeSvc/3)\% User Time
\Thread(KSafeSvc/4)\% User Time
\Thread(KSafeSvc/5)\% User Time
\Thread(KSafeSvc/6)\% User Time
\Thread(KSafeSvc/7)\% User Time
\Thread(KSafeSvc/8)\% User Time
\Thread(KSafeSvc/9)\% User Time
\Thread(KSafeSvc/10)\% User Time
\Thread(KSafeSvc/11)\% User Time
\Thread(KSafeSvc/12)\% User Time
\Thread(KSafeSvc/13)\% User Time
\Thread(KSafeSvc/14)\% User Time
\Thread(KSafeSvc/15)\% User Time
\Thread(KSafeSvc/16)\% User Time
\Thread(KSafeSvc/17)\% User Time
\Thread(KSafeSvc/18)\% User Time
\Thread(KSafeSvc/19)\% User Time
\Thread(KSafeSvc/20)\% User Time
\Thread(KSafeSvc/21)\% User Time
\Thread(KSafeSvc/22)\% User Time
\Thread(KSafeSvc/23)\% User Time
\Thread(KSafeSvc/24)\% User Time
\Thread(KSafeSvc/25)\% User Time
\Thread(KSafeSvc/26)\% User Time
\Thread(KSafeSvc/27)\% User Time
\Thread(KSafeSvc/28)\% User Time
\Thread(KSafeSvc/29)\% User Time
\Thread(KSafeSvc/30)\% User Time
\Thread(KSafeSvc/31)\% User Time
\Thread(KSafeSvc/32)\% User Time
\Thread(KSafeSvc/33)\% User Time
\Thread(KSafeSvc/34)\% User Time
\Thread(KSafeSvc/35)\% User Time
\Thread(KSafeSvc/36)\% User Time
\Thread(KSafeSvc/37)\% User Time
\Thread(KSafeSvc/38)\% User Time
\Thread(KSafeSvc/39)\% User Time
\Thread(KSafeSvc/40)\% User Time
\Thread(KSafeSvc/41)\% User Time
\Thread(KSafeSvc/42)\% User Time
\Thread(KSafeSvc/43)\% User Time
\Thread(KSafeSvc/44)\% User Time
\Thread(KSafeSvc/45)\% User Time
\Thread(KSafeSvc/46)\% User Time
\Thread(KSafeSvc/47)\% User Time
\Thread(KSafeSvc/48)\% User Time
\Thread(KSafeSvc/49)\% User Time
\Thread(KSafeSvc/50)\% User Time
\Thread(KSafeSvc/51)\% User Time
\Thread(KSafeSvc/52)\% User Time
\Thread(KSafeSvc/53)\% User Time
\Thread(kxesapp/0)\% User Time
\Thread(kxesapp/1)\% User Time
\Thread(kxesapp/2)\% User Time
\Thread(kxesapp/3)\% User Time
\Thread(kxesapp/4)\% User Time
\Thread(kxesapp/5)\% User Time
\Thread(kxesapp/6)\% User Time
\Thread(kxesapp/7)\% User Time
\Thread(kxesapp/8)\% User Time
\Thread(kxesapp/9)\% User Time
\Thread(kxesapp/10)\% User Time
\Thread(kxesapp/11)\% User Time
\Thread(kxesapp/12)\% User Time
\Thread(kxesapp/13)\% User Time
\Thread(kxesapp/14)\% User Time
\Thread(kxesapp/15)\% User Time
\Thread(kxesapp/16)\% User Time
\Thread(kxesapp/17)\% User Time
\Thread(kxesapp/18)\% User Time
\Thread(kxesapp/19)\% User Time
\Thread(kxesapp/20)\% User Time
\Thread(kxesapp/21)\% User Time
\Thread(kxesapp/22)\% User Time
\Thread(spoolsv/0)\% User Time
\Thread(spoolsv/1)\% User Time
\Thread(spoolsv/2)\% User Time
\Thread(spoolsv/3)\% User Time
\Thread(spoolsv/4)\% User Time
\Thread(spoolsv/5)\% User Time
\Thread(spoolsv/6)\% User Time
\Thread(spoolsv/7)\% User Time
\Thread(spoolsv/8)\% User Time
\Thread(spoolsv/9)\% User Time
\Thread(spoolsv/10)\% User Time
\Thread(spoolsv/11)\% User Time
\Thread(spoolsv/12)\% User Time
\Thread(spoolsv/13)\% User Time
\Thread(alg/0)\% User Time
\Thread(alg/1)\% User Time
\Thread(alg/2)\% User Time
\Thread(alg/3)\% User Time
\Thread(alg/4)\% User Time
\Thread(AsistService/0)\% User Time
\Thread(AsistService/1)\% User Time
\Thread(AsistService/2)\% User Time
\Thread(DSRSvc/0)\% User Time
\Thread(DSRSvc/1)\% User Time
\Thread(DSRSvc/2)\% User Time
\Thread(DSRSvc/3)\% User Time
\Thread(DSRSvc/4)\% User Time
\Thread(DSRSvc/5)\% User Time
\Thread(DSRSvc/6)\% User Time
\Thread(DSRSvc/7)\% User Time
\Thread(DSRSvc/8)\% User Time
\Thread(DSRSvc/9)\% User Time
\Thread(DSRSvc/10)\% User Time
\Thread(DSRSvc/11)\% User Time
\Thread(DSRSvc/12)\% User Time
\Thread(FolderSizeSvc/0)\% User Time
\Thread(FolderSizeSvc/1)\% User Time
\Thread(FolderSizeSvc/2)\% User Time
\Thread(FolderSizeSvc/3)\% User Time
\Thread(FolderSizeSvc/4)\% User Time
\Thread(FolderSizeSvc/5)\% User Time
\Thread(FolderSizeSvc/6)\% User Time
\Thread(FolderSizeSvc/7)\% User Time
\Thread(FolderSizeSvc/8)\% User Time
\Thread(FolderSizeSvc/9)\% User Time
\Thread(FolderSizeSvc/10)\% User Time
\Thread(FolderSizeSvc/11)\% User Time
\Thread(FolderSizeSvc/12)\% User Time
\Thread(FolderSizeSvc/13)\% User Time
\Thread(FolderSizeSvc/14)\% User Time
\Thread(FolderSizeSvc/15)\% User Time
\Thread(FolderSizeSvc/16)\% User Time
\Thread(FolderSizeSvc/17)\% User Time
\Thread(FolderSizeSvc/18)\% User Time
\Thread(FolderSizeSvc/19)\% User Time
\Thread(FolderSizeSvc/20)\% User Time
\Thread(FolderSizeSvc/21)\% User Time
\Thread(FolderSizeSvc/22)\% User Time
\Thread(FolderSizeSvc/23)\% User Time
\Thread(FolderSizeSvc/24)\% User Time
\Thread(FolderSizeSvc/25)\% User Time
\Thread(FolderSizeSvc/26)\% User Time
\Thread(FolderSizeSvc/27)\% User Time
\Thread(FolderSizeSvc/28)\% User Time
\Thread(FolderSizeSvc/29)\% User Time
\Thread(FolderSizeSvc/30)\% User Time
\Thread(FolderSizeSvc/31)\% User Time
\Thread(FolderSizeSvc/32)\% User Time
\Thread(FolderSizeSvc/33)\% User Time
\Thread(FolderSizeSvc/34)\% User Time
\Thread(FolderSizeSvc/35)\% User Time
\Thread(FolderSizeSvc/36)\% User Time
\Thread(FolderSizeSvc/37)\% User Time
\Thread(FolderSizeSvc/38)\% User Time
\Thread(FolderSizeSvc/39)\% User Time
\Thread(FolderSizeSvc/40)\% User Time
\Thread(FolderSizeSvc/41)\% User Time
\Thread(FolderSizeSvc/42)\% User Time
\Thread(FolderSizeSvc/43)\% User Time
\Thread(FolderSizeSvc/44)\% User Time
\Thread(FolderSizeSvc/45)\% User Time
\Thread(FolderSizeSvc/46)\% User Time
\Thread(GSGIOSRV/0)\% User Time
\Thread(GSGIOSRV/1)\% User Time
\Thread(GSGIOSRV/2)\% User Time
\Thread(upsvc/0)\% User Time
\Thread(upsvc/1)\% User Time
\Thread(upsvc/2)\% User Time
\Thread(upsvc/3)\% User Time
\Thread(upsvc/4)\% User Time
\Thread(mdm/0)\% User Time
\Thread(mdm/1)\% User Time
\Thread(mdm/2)\% User Time
\Thread(mdm/3)\% User Time
\Thread(mdm/4)\% User Time
\Thread(rtiosrv/0)\% User Time
\Thread(rtiosrv/1)\% User Time
\Thread(rtiosrv/2)\% User Time
\Thread(rtiosrv/3)\% User Time
\Thread(ManagerClient/0)\% User Time
\Thread(ManagerClient/1)\% User Time
\Thread(sqlwriter/0)\% User Time
\Thread(sqlwriter/1)\% User Time
\Thread(sqlwriter/2)\% User Time
\Thread(vmware-usbarbitrator/0)\% User Time
\Thread(vmware-usbarbitrator/1)\% User Time
\Thread(vmnat/0)\% User Time
\Thread(vmnat/1)\% User Time
\Thread(vmnat/2)\% User Time
\Thread(vmnetdhcp/0)\% User Time
\Thread(vmnetdhcp/1)\% User Time
\Thread(vmware-authd/0)\% User Time
\Thread(vmware-authd/1)\% User Time
\Thread(vmware-authd/2)\% User Time
\Thread(vmware-authd/3)\% User Time
\Thread(vmware-authd/4)\% User Time
\Thread(vmware-authd/5)\% User Time
\Thread(vmware-authd/6)\% User Time
\Thread(explorer/0)\% User Time
\Thread(explorer/1)\% User Time
\Thread(explorer/2)\% User Time
\Thread(explorer/3)\% User Time
\Thread(explorer/4)\% User Time
\Thread(explorer/5)\% User Time
\Thread(explorer/6)\% User Time
\Thread(explorer/7)\% User Time
\Thread(explorer/8)\% User Time
\Thread(explorer/9)\% User Time
\Thread(explorer/10)\% User Time
\Thread(explorer/11)\% User Time
\Thread(explorer/12)\% User Time
\Thread(explorer/13)\% User Time
\Thread(explorer/14)\% User Time
\Thread(explorer/15)\% User Time
\Thread(explorer/16)\% User Time
\Thread(explorer/17)\% User Time
\Thread(explorer/18)\% User Time
\Thread(explorer/19)\% User Time
\Thread(explorer/20)\% User Time
\Thread(explorer/21)\% User Time
\Thread(explorer/22)\% User Time
\Thread(TSVNCache/0)\% User Time
\Thread(TSVNCache/1)\% User Time
\Thread(TSVNCache/2)\% User Time
\Thread(TSVNCache/3)\% User Time
\Thread(TSVNCache/4)\% User Time
\Thread(TSVNCache/5)\% User Time
\Thread(TSVNCache/6)\% User Time
\Thread(TSVNCache/7)\% User Time
\Thread(TSVNCache/8)\% User Time
\Thread(TSVNCache/9)\% User Time
\Thread(TSVNCache/10)\% User Time
\Thread(igfxtray/0)\% User Time
\Thread(igfxtray/1)\% User Time
\Thread(hkcmd/0)\% User Time
\Thread(hkcmd/1)\% User Time
\Thread(hkcmd/2)\% User Time
\Thread(igfxpers/0)\% User Time
\Thread(igfxpers/1)\% User Time
\Thread(KSafeTray/0)\% User Time
\Thread(KSafeTray/1)\% User Time
\Thread(KSafeTray/2)\% User Time
\Thread(KSafeTray/3)\% User Time
\Thread(KSafeTray/4)\% User Time
\Thread(KSafeTray/5)\% User Time
\Thread(KSafeTray/6)\% User Time
\Thread(KSafeTray/7)\% User Time
\Thread(KSafeTray/8)\% User Time
\Thread(KSafeTray/9)\% User Time
\Thread(KSafeTray/10)\% User Time
\Thread(KSafeTray/11)\% User Time
\Thread(KSafeTray/12)\% User Time
\Thread(KSafeTray/13)\% User Time
\Thread(KSafeTray/14)\% User Time
\Thread(KSafeTray/15)\% User Time
\Thread(KSafeTray/16)\% User Time
\Thread(KSafeTray/17)\% User Time
\Thread(KSafeTray/18)\% User Time
\Thread(KSafeTray/19)\% User Time
\Thread(KSafeTray/20)\% User Time
\Thread(KSafeTray/21)\% User Time
\Thread(KSafeTray/22)\% User Time
\Thread(KSafeTray/23)\% User Time
\Thread(kxetray/0)\% User Time
\Thread(kxetray/1)\% User Time
\Thread(kxetray/2)\% User Time
\Thread(kxetray/3)\% User Time
\Thread(kxetray/4)\% User Time
\Thread(kxetray/5)\% User Time
\Thread(kxetray/6)\% User Time
\Thread(kxetray/7)\% User Time
\Thread(kxetray/8)\% User Time
\Thread(kxetray/9)\% User Time
\Thread(kxetray/10)\% User Time
\Thread(kxetray/11)\% User Time
\Thread(kxetray/12)\% User Time
\Thread(kxetray/13)\% User Time
\Thread(kxetray/14)\% User Time
\Thread(kxetray/15)\% User Time
\Thread(kxetray/16)\% User Time
\Thread(kxetray/17)\% User Time
\Thread(kxetray/18)\% User Time
\Thread(kxetray/19)\% User Time
\Thread(kxetray/20)\% User Time
\Thread(kxetray/21)\% User Time
\Thread(kxetray/22)\% User Time
\Thread(kxetray/23)\% User Time
\Thread(igfxsrvc/0)\% User Time
\Thread(igfxsrvc/1)\% User Time
\Thread(igfxsrvc/2)\% User Time
\Thread(igfxsrvc/3)\% User Time
\Thread(Ext2Mgr/0)\% User Time
\Thread(RTHDCPL/0)\% User Time
\Thread(RTHDCPL/1)\% User Time
\Thread(RTHDCPL/2)\% User Time
\Thread(RTHDCPL/3)\% User Time
\Thread(OfficeIM/0)\% User Time
\Thread(OfficeIM/1)\% User Time
\Thread(OfficeIM/2)\% User Time
\Thread(OfficeIM/3)\% User Time
\Thread(OfficeIM/4)\% User Time
\Thread(OfficeIM/5)\% User Time
\Thread(OfficeIM/6)\% User Time
\Thread(OfficeIM/7)\% User Time
\Thread(OfficeIM/8)\% User Time
\Thread(OfficeIM/9)\% User Time
\Thread(OfficeIM/10)\% User Time
\Thread(OfficeIM/11)\% User Time
\Thread(OfficeIM/12)\% User Time
\Thread(OfficeIM/13)\% User Time
\Thread(OfficeIM/14)\% User Time
\Thread(vmware-tray/0)\% User Time
\Thread(vmware-tray/1)\% User Time
\Thread(vmware-tray/2)\% User Time
\Thread(msnmsgr/0)\% User Time
\Thread(msnmsgr/1)\% User Time
\Thread(msnmsgr/2)\% User Time
\Thread(msnmsgr/3)\% User Time
\Thread(msnmsgr/4)\% User Time
\Thread(msnmsgr/5)\% User Time
\Thread(msnmsgr/6)\% User Time
\Thread(msnmsgr/7)\% User Time
\Thread(msnmsgr/8)\% User Time
\Thread(msnmsgr/9)\% User Time
\Thread(msnmsgr/10)\% User Time
\Thread(msnmsgr/11)\% User Time
\Thread(msnmsgr/12)\% User Time
\Thread(msnmsgr/13)\% User Time
\Thread(msnmsgr/14)\% User Time
\Thread(msnmsgr/15)\% User Time
\Thread(msnmsgr/16)\% User Time
\Thread(msnmsgr/17)\% User Time
\Thread(msnmsgr/18)\% User Time
\Thread(msnmsgr/19)\% User Time
\Thread(msnmsgr/20)\% User Time
\Thread(msnmsgr/21)\% User Time
\Thread(msnmsgr/22)\% User Time
\Thread(msnmsgr/23)\% User Time
\Thread(msnmsgr/24)\% User Time
\Thread(msnmsgr/25)\% User Time
\Thread(msnmsgr/26)\% User Time
\Thread(msnmsgr/27)\% User Time
\Thread(msnmsgr/28)\% User Time
\Thread(msnmsgr/29)\% User Time
\Thread(msnmsgr/30)\% User Time
\Thread(msnmsgr/31)\% User Time
\Thread(msnmsgr/32)\% User Time
\Thread(msnmsgr/33)\% User Time
\Thread(msnmsgr/34)\% User Time
\Thread(msnmsgr/35)\% User Time
\Thread(msnmsgr/36)\% User Time
\Thread(msnmsgr/37)\% User Time
\Thread(msnmsgr/38)\% User Time
\Thread(msnmsgr/39)\% User Time
\Thread(ctfmon/0)\% User Time
\Thread(VVCap/0)\% User Time
\Thread(VVCap/1)\% User Time
\Thread(wlcomm/0)\% User Time
\Thread(wlcomm/1)\% User Time
\Thread(wlcomm/2)\% User Time
\Thread(wlcomm/3)\% User Time
\Thread(wlcomm/4)\% User Time
\Thread(wlcomm/5)\% User Time
\Thread(wlcomm/6)\% User Time
\Thread(wlcomm/7)\% User Time
\Thread(wlcomm/8)\% User Time
\Thread(wlcomm/9)\% User Time
\Thread(wlcomm/10)\% User Time
\Thread(wlcomm/11)\% User Time
\Thread(wlcomm/12)\% User Time
\Thread(wlcomm/13)\% User Time
\Thread(wlcomm/14)\% User Time
\Thread(WPFFontCache_v0400/0)\% User Time
\Thread(WPFFontCache_v0400/1)\% User Time
\Thread(WPFFontCache_v0400/2)\% User Time
\Thread(WPFFontCache_v0400/3)\% User Time
\Thread(WPFFontCache_v0400/4)\% User Time
\Thread(WPFFontCache_v0400/5)\% User Time
\Thread(WPFFontCache_v0400/6)\% User Time
\Thread(KuGoo/0)\% User Time
\Thread(KuGoo/1)\% User Time
\Thread(KuGoo/2)\% User Time
\Thread(KuGoo/3)\% User Time
\Thread(KuGoo/4)\% User Time
\Thread(KuGoo/5)\% User Time
\Thread(KuGoo/6)\% User Time
\Thread(KuGoo/7)\% User Time
\Thread(KuGoo/8)\% User Time
\Thread(KuGoo/9)\% User Time
\Thread(KuGoo/10)\% User Time
\Thread(KuGoo/11)\% User Time
\Thread(KuGoo/12)\% User Time
\Thread(KuGoo/13)\% User Time
\Thread(KuGoo/14)\% User Time
\Thread(KuGoo/15)\% User Time
\Thread(KuGoo/16)\% User Time
\Thread(KuGoo/17)\% User Time
\Thread(KuGoo/18)\% User Time
\Thread(KuGoo/19)\% User Time
\Thread(KuGoo/20)\% User Time
\Thread(KuGoo/21)\% User Time
\Thread(KuGoo/22)\% User Time
\Thread(KuGoo/23)\% User Time
\Thread(KuGoo/24)\% User Time
\Thread(KuGoo/25)\% User Time
\Thread(KuGoo/26)\% User Time
\Thread(KuGoo/27)\% User Time
\Thread(KuGoo/28)\% User Time
\Thread(KuGoo/29)\% User Time
\Thread(KuGoo/30)\% User Time
\Thread(KuGoo/31)\% User Time
\Thread(KuGoo/32)\% User Time
\Thread(KuGoo/33)\% User Time
\Thread(KuGoo/34)\% User Time
\Thread(KuGoo/35)\% User Time
\Thread(KuGoo/36)\% User Time
\Thread(KuGoo/37)\% User Time
\Thread(KuGoo/38)\% User Time
\Thread(KuGoo/39)\% User Time
\Thread(KuGoo/40)\% User Time
\Thread(KuGoo/41)\% User Time
\Thread(KuGoo/42)\% User Time
\Thread(KuGoo/43)\% User Time
\Thread(KuGoo/44)\% User Time
\Thread(KuGoo/45)\% User Time
\Thread(KuGoo/46)\% User Time
\Thread(KuGoo/47)\% User Time
\Thread(KuGoo/48)\% User Time
\Thread(KuGoo/49)\% User Time
\Thread(KuGoo/50)\% User Time
\Thread(KuGoo/51)\% User Time
\Thread(KuGoo/52)\% User Time
\Thread(KuGoo/53)\% User Time
\Thread(KuGoo/54)\% User Time
\Thread(KuGoo/55)\% User Time
\Thread(KuGoo/56)\% User Time
\Thread(KuGoo/57)\% User Time
\Thread(KuGoo/58)\% User Time
\Thread(KuGoo/59)\% User Time
\Thread(firefox/0)\% User Time
\Thread(firefox/1)\% User Time
\Thread(firefox/2)\% User Time
\Thread(firefox/3)\% User Time
\Thread(firefox/4)\% User Time
\Thread(firefox/5)\% User Time
\Thread(firefox/6)\% User Time
\Thread(firefox/7)\% User Time
\Thread(firefox/8)\% User Time
\Thread(firefox/9)\% User Time
\Thread(firefox/10)\% User Time
\Thread(firefox/11)\% User Time
\Thread(firefox/12)\% User Time
\Thread(firefox/13)\% User Time
\Thread(firefox/14)\% User Time
\Thread(firefox/15)\% User Time
\Thread(firefox/16)\% User Time
\Thread(firefox/17)\% User Time
\Thread(firefox/18)\% User Time
\Thread(firefox/19)\% User Time
\Thread(firefox/20)\% User Time
\Thread(firefox/21)\% User Time
\Thread(firefox/22)\% User Time
\Thread(firefox/23)\% User Time
\Thread(firefox/24)\% User Time
\Thread(vmware/0)\% User Time
\Thread(vmware/1)\% User Time
\Thread(vmware/2)\% User Time
\Thread(vmware/3)\% User Time
\Thread(vmware/4)\% User Time
\Thread(vmware/5)\% User Time
\Thread(vmware/6)\% User Time
\Thread(vmware/7)\% User Time
\Thread(taskmgr/0)\% User Time
\Thread(taskmgr/1)\% User Time
\Thread(taskmgr/2)\% User Time
\Thread(SshClient/0)\% User Time
\Thread(SshClient/1)\% User Time
\Thread(SshClient/2)\% User Time
\Thread(SshClient/3)\% User Time
\Thread(SshClient/4)\% User Time
\Thread(SshClient/5)\% User Time
\Thread(SshClient/6)\% User Time
\Thread(Thunder5/0)\% User Time
\Thread(Thunder5/1)\% User Time
\Thread(Thunder5/2)\% User Time
\Thread(Thunder5/3)\% User Time
\Thread(Thunder5/4)\% User Time
\Thread(Thunder5/5)\% User Time
\Thread(Thunder5/6)\% User Time
\Thread(Thunder5/7)\% User Time
\Thread(Thunder5/8)\% User Time
\Thread(Thunder5/9)\% User Time
\Thread(Thunder5/10)\% User Time
\Thread(Thunder5/11)\% User Time
\Thread(Thunder5/12)\% User Time
\Thread(Thunder5/13)\% User Time
\Thread(Thunder5/14)\% User Time
\Thread(Thunder5/15)\% User Time
\Thread(Thunder5/16)\% User Time
\Thread(Thunder5/17)\% User Time
\Thread(Thunder5/18)\% User Time
\Thread(Thunder5/19)\% User Time
\Thread(Thunder5/20)\% User Time
\Thread(Thunder5/21)\% User Time
\Thread(Thunder5/22)\% User Time
\Thread(Thunder5/23)\% User Time
\Thread(Thunder5/24)\% User Time
\Thread(Thunder5/25)\% User Time
\Thread(Thunder5/26)\% User Time
\Thread(Thunder5/27)\% User Time
\Thread(Thunder5/28)\% User Time
\Thread(Thunder5/29)\% User Time
\Thread(Thunder5/30)\% User Time
\Thread(Thunder5/31)\% User Time
\Thread(Thunder5/32)\% User Time
\Thread(Thunder5/33)\% User Time
\Thread(Thunder5/34)\% User Time
\Thread(Thunder5/35)\% User Time
\Thread(Thunder5/36)\% User Time
\Thread(Thunder5/37)\% User Time
\Thread(Thunder5/38)\% User Time
\Thread(Thunder5/39)\% User Time
\Thread(Thunder5/40)\% User Time
\Thread(Thunder5/41)\% User Time
\Thread(Thunder5/42)\% User Time
\Thread(Thunder5/43)\% User Time
\Thread(Thunder5/44)\% User Time
\Thread(Thunder5/45)\% User Time
\Thread(Thunder5/46)\% User Time
\Thread(cmd/0)\% User Time
\Thread(typeperf/0)\% User Time
\Thread(typeperf/1)\% User Time
\Thread(typeperf/2)\% User Time
\Thread(typeperf/3)\% User Time
\Thread(typeperf/4)\% User Time
\Thread(typeperf/5)\% User Time
\Thread(typeperf/6)\% User Time
\Thread(typeperf/7)\% User Time
\Thread(typeperf/8)\% User Time
\Thread(typeperf/9)\% User Time
\Thread(typeperf/10)\% User Time
\Thread(_Total/_Total)\% User Time
\Thread(Idle/0)\% Privileged Time
\Thread(Idle/1)\% Privileged Time
\Thread(System/0)\% Privileged Time
\Thread(System/1)\% Privileged Time
\Thread(System/2)\% Privileged Time
\Thread(System/3)\% Privileged Time
\Thread(System/4)\% Privileged Time
\Thread(System/5)\% Privileged Time
\Thread(System/6)\% Privileged Time
\Thread(System/7)\% Privileged Time
\Thread(System/8)\% Privileged Time
\Thread(System/9)\% Privileged Time
\Thread(System/10)\% Privileged Time
\Thread(System/11)\% Privileged Time
\Thread(System/12)\% Privileged Time
\Thread(System/13)\% Privileged Time
\Thread(System/14)\% Privileged Time
\Thread(System/15)\% Privileged Time
\Thread(System/16)\% Privileged Time
\Thread(System/17)\% Privileged Time
\Thread(System/18)\% Privileged Time
\Thread(System/19)\% Privileged Time
\Thread(System/20)\% Privileged Time
\Thread(System/21)\% Privileged Time
\Thread(System/22)\% Privileged Time
\Thread(System/23)\% Privileged Time
\Thread(System/24)\% Privileged Time
\Thread(System/25)\% Privileged Time
\Thread(System/26)\% Privileged Time
\Thread(System/27)\% Privileged Time
\Thread(System/28)\% Privileged Time
\Thread(System/29)\% Privileged Time
\Thread(System/30)\% Privileged Time
\Thread(System/31)\% Privileged Time
\Thread(System/32)\% Privileged Time
\Thread(System/33)\% Privileged Time
\Thread(System/34)\% Privileged Time
\Thread(System/35)\% Privileged Time
\Thread(System/36)\% Privileged Time
\Thread(System/37)\% Privileged Time
\Thread(System/38)\% Privileged Time
\Thread(System/39)\% Privileged Time
\Thread(System/40)\% Privileged Time
\Thread(System/41)\% Privileged Time
\Thread(System/42)\% Privileged Time
\Thread(System/43)\% Privileged Time
\Thread(System/44)\% Privileged Time
\Thread(System/45)\% Privileged Time
\Thread(System/46)\% Privileged Time
\Thread(System/47)\% Privileged Time
\Thread(System/48)\% Privileged Time
\Thread(System/49)\% Privileged Time
\Thread(System/50)\% Privileged Time
\Thread(System/51)\% Privileged Time
\Thread(System/52)\% Privileged Time
\Thread(System/53)\% Privileged Time
\Thread(System/54)\% Privileged Time
\Thread(System/55)\% Privileged Time
\Thread(System/56)\% Privileged Time
\Thread(System/57)\% Privileged Time
\Thread(System/58)\% Privileged Time
\Thread(System/59)\% Privileged Time
\Thread(System/60)\% Privileged Time
\Thread(System/61)\% Privileged Time
\Thread(System/62)\% Privileged Time
\Thread(System/63)\% Privileged Time
\Thread(System/64)\% Privileged Time
\Thread(System/65)\% Privileged Time
\Thread(System/66)\% Privileged Time
\Thread(System/67)\% Privileged Time
\Thread(System/68)\% Privileged Time
\Thread(System/69)\% Privileged Time
\Thread(System/70)\% Privileged Time
\Thread(System/71)\% Privileged Time
\Thread(System/72)\% Privileged Time
\Thread(System/73)\% Privileged Time
\Thread(System/74)\% Privileged Time
\Thread(System/75)\% Privileged Time
\Thread(System/76)\% Privileged Time
\Thread(System/77)\% Privileged Time
\Thread(System/78)\% Privileged Time
\Thread(System/79)\% Privileged Time
\Thread(System/80)\% Privileged Time
\Thread(System/81)\% Privileged Time
\Thread(System/82)\% Privileged Time
\Thread(System/83)\% Privileged Time
\Thread(System/84)\% Privileged Time
\Thread(System/85)\% Privileged Time
\Thread(System/86)\% Privileged Time
\Thread(System/87)\% Privileged Time
\Thread(System/88)\% Privileged Time
\Thread(System/89)\% Privileged Time
\Thread(System/90)\% Privileged Time
\Thread(System/91)\% Privileged Time
\Thread(System/92)\% Privileged Time
\Thread(System/93)\% Privileged Time
\Thread(System/94)\% Privileged Time
\Thread(System/95)\% Privileged Time
\Thread(System/96)\% Privileged Time
\Thread(System/97)\% Privileged Time
\Thread(smss/0)\% Privileged Time
\Thread(smss/1)\% Privileged Time
\Thread(smss/2)\% Privileged Time
\Thread(csrss/0)\% Privileged Time
\Thread(csrss/1)\% Privileged Time
\Thread(csrss/2)\% Privileged Time
\Thread(csrss/3)\% Privileged Time
\Thread(csrss/4)\% Privileged Time
\Thread(csrss/5)\% Privileged Time
\Thread(csrss/6)\% Privileged Time
\Thread(csrss/7)\% Privileged Time
\Thread(csrss/8)\% Privileged Time
\Thread(csrss/9)\% Privileged Time
\Thread(csrss/10)\% Privileged Time
\Thread(csrss/11)\% Privileged Time
\Thread(winlogon/0)\% Privileged Time
\Thread(winlogon/1)\% Privileged Time
\Thread(winlogon/2)\% Privileged Time
\Thread(winlogon/3)\% Privileged Time
\Thread(winlogon/4)\% Privileged Time
\Thread(winlogon/5)\% Privileged Time
\Thread(winlogon/6)\% Privileged Time
\Thread(winlogon/7)\% Privileged Time
\Thread(winlogon/8)\% Privileged Time
\Thread(winlogon/9)\% Privileged Time
\Thread(winlogon/10)\% Privileged Time
\Thread(winlogon/11)\% Privileged Time
\Thread(winlogon/12)\% Privileged Time
\Thread(winlogon/13)\% Privileged Time
\Thread(winlogon/14)\% Privileged Time
\Thread(winlogon/15)\% Privileged Time
\Thread(winlogon/16)\% Privileged Time
\Thread(winlogon/17)\% Privileged Time
\Thread(winlogon/18)\% Privileged Time
\Thread(winlogon/19)\% Privileged Time
\Thread(winlogon/20)\% Privileged Time
\Thread(winlogon/21)\% Privileged Time
\Thread(services/0)\% Privileged Time
\Thread(services/1)\% Privileged Time
\Thread(services/2)\% Privileged Time
\Thread(services/3)\% Privileged Time
\Thread(services/4)\% Privileged Time
\Thread(services/5)\% Privileged Time
\Thread(services/6)\% Privileged Time
\Thread(services/7)\% Privileged Time
\Thread(services/8)\% Privileged Time
\Thread(services/9)\% Privileged Time
\Thread(services/10)\% Privileged Time
\Thread(services/11)\% Privileged Time
\Thread(services/12)\% Privileged Time
\Thread(services/13)\% Privileged Time
\Thread(services/14)\% Privileged Time
\Thread(services/15)\% Privileged Time
\Thread(lsass/0)\% Privileged Time
\Thread(lsass/1)\% Privileged Time
\Thread(lsass/2)\% Privileged Time
\Thread(lsass/3)\% Privileged Time
\Thread(lsass/4)\% Privileged Time
\Thread(lsass/5)\% Privileged Time
\Thread(lsass/6)\% Privileged Time
\Thread(lsass/7)\% Privileged Time
\Thread(lsass/8)\% Privileged Time
\Thread(lsass/9)\% Privileged Time
\Thread(lsass/10)\% Privileged Time
\Thread(lsass/11)\% Privileged Time
\Thread(lsass/12)\% Privileged Time
\Thread(lsass/13)\% Privileged Time
\Thread(lsass/14)\% Privileged Time
\Thread(lsass/15)\% Privileged Time
\Thread(lsass/16)\% Privileged Time
\Thread(lsass/17)\% Privileged Time
\Thread(lsass/18)\% Privileged Time
\Thread(lsass/19)\% Privileged Time
\Thread(lsass/20)\% Privileged Time
\Thread(lsass/21)\% Privileged Time
\Thread(svchost/0)\% Privileged Time
\Thread(svchost/1)\% Privileged Time
\Thread(svchost/2)\% Privileged Time
\Thread(svchost/3)\% Privileged Time
\Thread(svchost/4)\% Privileged Time
\Thread(svchost/5)\% Privileged Time
\Thread(svchost/6)\% Privileged Time
\Thread(svchost/7)\% Privileged Time
\Thread(svchost/0)\% Privileged Time
\Thread(svchost/1)\% Privileged Time
\Thread(svchost/2)\% Privileged Time
\Thread(svchost/3)\% Privileged Time
\Thread(svchost/4)\% Privileged Time
\Thread(svchost/5)\% Privileged Time
\Thread(svchost/6)\% Privileged Time
\Thread(svchost/7)\% Privileged Time
\Thread(svchost/8)\% Privileged Time
\Thread(svchost/9)\% Privileged Time
\Thread(svchost/10)\% Privileged Time
\Thread(svchost/11)\% Privileged Time
\Thread(svchost/12)\% Privileged Time
\Thread(svchost/13)\% Privileged Time
\Thread(svchost/14)\% Privileged Time
\Thread(svchost/15)\% Privileged Time
\Thread(svchost/16)\% Privileged Time
\Thread(svchost/17)\% Privileged Time
\Thread(svchost/18)\% Privileged Time
\Thread(svchost/19)\% Privileged Time
\Thread(svchost/20)\% Privileged Time
\Thread(svchost/21)\% Privileged Time
\Thread(svchost/22)\% Privileged Time
\Thread(svchost/23)\% Privileged Time
\Thread(svchost/24)\% Privileged Time
\Thread(svchost/25)\% Privileged Time
\Thread(svchost/26)\% Privileged Time
\Thread(svchost/27)\% Privileged Time
\Thread(svchost/28)\% Privileged Time
\Thread(svchost/29)\% Privileged Time
\Thread(svchost/30)\% Privileged Time
\Thread(svchost/31)\% Privileged Time
\Thread(svchost/32)\% Privileged Time
\Thread(svchost/33)\% Privileged Time
\Thread(svchost/34)\% Privileged Time
\Thread(svchost/35)\% Privileged Time
\Thread(svchost/36)\% Privileged Time
\Thread(svchost/37)\% Privileged Time
\Thread(svchost/38)\% Privileged Time
\Thread(svchost/39)\% Privileged Time
\Thread(svchost/40)\% Privileged Time
\Thread(svchost/41)\% Privileged Time
\Thread(svchost/42)\% Privileged Time
\Thread(svchost/43)\% Privileged Time
\Thread(svchost/44)\% Privileged Time
\Thread(svchost/45)\% Privileged Time
\Thread(svchost/46)\% Privileged Time
\Thread(svchost/47)\% Privileged Time
\Thread(svchost/48)\% Privileged Time
\Thread(svchost/49)\% Privileged Time
\Thread(svchost/50)\% Privileged Time
\Thread(svchost/51)\% Privileged Time
\Thread(svchost/52)\% Privileged Time
\Thread(svchost/53)\% Privileged Time
\Thread(svchost/54)\% Privileged Time
\Thread(svchost/55)\% Privileged Time
\Thread(svchost/56)\% Privileged Time
\Thread(svchost/57)\% Privileged Time
\Thread(svchost/58)\% Privileged Time
\Thread(svchost/59)\% Privileged Time
\Thread(svchost/60)\% Privileged Time
\Thread(svchost/61)\% Privileged Time
\Thread(svchost/62)\% Privileged Time
\Thread(svchost/63)\% Privileged Time
\Thread(svchost/64)\% Privileged Time
\Thread(svchost/65)\% Privileged Time
\Thread(svchost/66)\% Privileged Time
\Thread(svchost/67)\% Privileged Time
\Thread(svchost/68)\% Privileged Time
\Thread(svchost/69)\% Privileged Time
\Thread(svchost/70)\% Privileged Time
\Thread(svchost/0)\% Privileged Time
\Thread(svchost/1)\% Privileged Time
\Thread(svchost/2)\% Privileged Time
\Thread(svchost/3)\% Privileged Time
\Thread(svchost/4)\% Privileged Time
\Thread(svchost/5)\% Privileged Time
\Thread(svchost/0)\% Privileged Time
\Thread(svchost/1)\% Privileged Time
\Thread(svchost/2)\% Privileged Time
\Thread(svchost/3)\% Privileged Time
\Thread(svchost/4)\% Privileged Time
\Thread(svchost/5)\% Privileged Time
\Thread(svchost/6)\% Privileged Time
\Thread(svchost/7)\% Privileged Time
\Thread(svchost/8)\% Privileged Time
\Thread(svchost/9)\% Privileged Time
\Thread(svchost/10)\% Privileged Time
\Thread(svchost/11)\% Privileged Time
\Thread(svchost/12)\% Privileged Time
\Thread(svchost/13)\% Privileged Time
\Thread(svchost/14)\% Privileged Time
\Thread(svchost/0)\% Privileged Time
\Thread(svchost/1)\% Privileged Time
\Thread(svchost/2)\% Privileged Time
\Thread(svchost/3)\% Privileged Time
\Thread(svchost/4)\% Privileged Time
\Thread(kxedefend/0)\% Privileged Time
\Thread(kxedefend/1)\% Privileged Time
\Thread(kxedefend/2)\% Privileged Time
\Thread(kxedefend/3)\% Privileged Time
\Thread(kxedefend/4)\% Privileged Time
\Thread(kxedefend/5)\% Privileged Time
\Thread(kxedefend/6)\% Privileged Time
\Thread(kxedefend/7)\% Privileged Time
\Thread(kxedefend/8)\% Privileged Time
\Thread(kxedefend/9)\% Privileged Time
\Thread(kxedefend/10)\% Privileged Time
\Thread(kxedefend/11)\% Privileged Time
\Thread(kxedefend/12)\% Privileged Time
\Thread(kxedefend/13)\% Privileged Time
\Thread(kxedefend/14)\% Privileged Time
\Thread(kxedefend/15)\% Privileged Time
\Thread(kxedefend/16)\% Privileged Time
\Thread(kxedefend/17)\% Privileged Time
\Thread(kxedefend/18)\% Privileged Time
\Thread(kxedefend/19)\% Privileged Time
\Thread(kxedefend/20)\% Privileged Time
\Thread(kxedefend/21)\% Privileged Time
\Thread(kxedefend/22)\% Privileged Time
\Thread(kxedefend/23)\% Privileged Time
\Thread(kxedefend/24)\% Privileged Time
\Thread(kxedefend/25)\% Privileged Time
\Thread(kxedefend/26)\% Privileged Time
\Thread(kxedefend/27)\% Privileged Time
\Thread(kxescore/0)\% Privileged Time
\Thread(kxescore/1)\% Privileged Time
\Thread(kxescore/2)\% Privileged Time
\Thread(kxescore/3)\% Privileged Time
\Thread(kxescore/4)\% Privileged Time
\Thread(kxescore/5)\% Privileged Time
\Thread(kxescore/6)\% Privileged Time
\Thread(kxescore/7)\% Privileged Time
\Thread(kxescore/8)\% Privileged Time
\Thread(kxescore/9)\% Privileged Time
\Thread(kxescore/10)\% Privileged Time
\Thread(kxescore/11)\% Privileged Time
\Thread(kxescore/12)\% Privileged Time
\Thread(kxescore/13)\% Privileged Time
\Thread(kxescore/14)\% Privileged Time
\Thread(kxescore/15)\% Privileged Time
\Thread(kxescore/16)\% Privileged Time
\Thread(kxescore/17)\% Privileged Time
\Thread(kxescore/18)\% Privileged Time
\Thread(kxescore/19)\% Privileged Time
\Thread(kxescore/20)\% Privileged Time
\Thread(kxescore/21)\% Privileged Time
\Thread(kxescore/22)\% Privileged Time
\Thread(kxescore/23)\% Privileged Time
\Thread(kxescore/24)\% Privileged Time
\Thread(kxescore/25)\% Privileged Time
\Thread(kxescore/26)\% Privileged Time
\Thread(kxescore/27)\% Privileged Time
\Thread(kxescore/28)\% Privileged Time
\Thread(kxescore/29)\% Privileged Time
\Thread(kxescore/30)\% Privileged Time
\Thread(kxescore/31)\% Privileged Time
\Thread(kxescore/32)\% Privileged Time
\Thread(kxescore/33)\% Privileged Time
\Thread(kxescore/34)\% Privileged Time
\Thread(kxescore/35)\% Privileged Time
\Thread(kxescore/36)\% Privileged Time
\Thread(kxescore/37)\% Privileged Time
\Thread(kxescore/38)\% Privileged Time
\Thread(kxescore/39)\% Privileged Time
\Thread(kxescore/40)\% Privileged Time
\Thread(kxescore/41)\% Privileged Time
\Thread(kxescore/42)\% Privileged Time
\Thread(kxescore/43)\% Privileged Time
\Thread(kxescore/44)\% Privileged Time
\Thread(kxescore/45)\% Privileged Time
\Thread(kxescore/46)\% Privileged Time
\Thread(kxescore/47)\% Privileged Time
\Thread(kxescore/48)\% Privileged Time
\Thread(kxescore/49)\% Privileged Time
\Thread(kxescore/50)\% Privileged Time
\Thread(kxescore/51)\% Privileged Time
\Thread(kxescore/52)\% Privileged Time
\Thread(kxescore/53)\% Privileged Time
\Thread(kxescore/54)\% Privileged Time
\Thread(kxescore/55)\% Privileged Time
\Thread(kxescore/56)\% Privileged Time
\Thread(kxescore/57)\% Privileged Time
\Thread(kxescore/58)\% Privileged Time
\Thread(kxescore/59)\% Privileged Time
\Thread(kxescore/60)\% Privileged Time
\Thread(KSafeSvc/0)\% Privileged Time
\Thread(KSafeSvc/1)\% Privileged Time
\Thread(KSafeSvc/2)\% Privileged Time
\Thread(KSafeSvc/3)\% Privileged Time
\Thread(KSafeSvc/4)\% Privileged Time
\Thread(KSafeSvc/5)\% Privileged Time
\Thread(KSafeSvc/6)\% Privileged Time
\Thread(KSafeSvc/7)\% Privileged Time
\Thread(KSafeSvc/8)\% Privileged Time
\Thread(KSafeSvc/9)\% Privileged Time
\Thread(KSafeSvc/10)\% Privileged Time
\Thread(KSafeSvc/11)\% Privileged Time
\Thread(KSafeSvc/12)\% Privileged Time
\Thread(KSafeSvc/13)\% Privileged Time
\Thread(KSafeSvc/14)\% Privileged Time
\Thread(KSafeSvc/15)\% Privileged Time
\Thread(KSafeSvc/16)\% Privileged Time
\Thread(KSafeSvc/17)\% Privileged Time
\Thread(KSafeSvc/18)\% Privileged Time
\Thread(KSafeSvc/19)\% Privileged Time
\Thread(KSafeSvc/20)\% Privileged Time
\Thread(KSafeSvc/21)\% Privileged Time
\Thread(KSafeSvc/22)\% Privileged Time
\Thread(KSafeSvc/23)\% Privileged Time
\Thread(KSafeSvc/24)\% Privileged Time
\Thread(KSafeSvc/25)\% Privileged Time
\Thread(KSafeSvc/26)\% Privileged Time
\Thread(KSafeSvc/27)\% Privileged Time
\Thread(KSafeSvc/28)\% Privileged Time
\Thread(KSafeSvc/29)\% Privileged Time
\Thread(KSafeSvc/30)\% Privileged Time
\Thread(KSafeSvc/31)\% Privileged Time
\Thread(KSafeSvc/32)\% Privileged Time
\Thread(KSafeSvc/33)\% Privileged Time
\Thread(KSafeSvc/34)\% Privileged Time
\Thread(KSafeSvc/35)\% Privileged Time
\Thread(KSafeSvc/36)\% Privileged Time
\Thread(KSafeSvc/37)\% Privileged Time
\Thread(KSafeSvc/38)\% Privileged Time
\Thread(KSafeSvc/39)\% Privileged Time
\Thread(KSafeSvc/40)\% Privileged Time
\Thread(KSafeSvc/41)\% Privileged Time
\Thread(KSafeSvc/42)\% Privileged Time
\Thread(KSafeSvc/43)\% Privileged Time
\Thread(KSafeSvc/44)\% Privileged Time
\Thread(KSafeSvc/45)\% Privileged Time
\Thread(KSafeSvc/46)\% Privileged Time
\Thread(KSafeSvc/47)\% Privileged Time
\Thread(KSafeSvc/48)\% Privileged Time
\Thread(KSafeSvc/49)\% Privileged Time
\Thread(KSafeSvc/50)\% Privileged Time
\Thread(KSafeSvc/51)\% Privileged Time
\Thread(KSafeSvc/52)\% Privileged Time
\Thread(KSafeSvc/53)\% Privileged Time
\Thread(kxesapp/0)\% Privileged Time
\Thread(kxesapp/1)\% Privileged Time
\Thread(kxesapp/2)\% Privileged Time
\Thread(kxesapp/3)\% Privileged Time
\Thread(kxesapp/4)\% Privileged Time
\Thread(kxesapp/5)\% Privileged Time
\Thread(kxesapp/6)\% Privileged Time
\Thread(kxesapp/7)\% Privileged Time
\Thread(kxesapp/8)\% Privileged Time
\Thread(kxesapp/9)\% Privileged Time
\Thread(kxesapp/10)\% Privileged Time
\Thread(kxesapp/11)\% Privileged Time
\Thread(kxesapp/12)\% Privileged Time
\Thread(kxesapp/13)\% Privileged Time
\Thread(kxesapp/14)\% Privileged Time
\Thread(kxesapp/15)\% Privileged Time
\Thread(kxesapp/16)\% Privileged Time
\Thread(kxesapp/17)\% Privileged Time
\Thread(kxesapp/18)\% Privileged Time
\Thread(kxesapp/19)\% Privileged Time
\Thread(kxesapp/20)\% Privileged Time
\Thread(kxesapp/21)\% Privileged Time
\Thread(kxesapp/22)\% Privileged Time
\Thread(spoolsv/0)\% Privileged Time
\Thread(spoolsv/1)\% Privileged Time
\Thread(spoolsv/2)\% Privileged Time
\Thread(spoolsv/3)\% Privileged Time
\Thread(spoolsv/4)\% Privileged Time
\Thread(spoolsv/5)\% Privileged Time
\Thread(spoolsv/6)\% Privileged Time
\Thread(spoolsv/7)\% Privileged Time
\Thread(spoolsv/8)\% Privileged Time
\Thread(spoolsv/9)\% Privileged Time
\Thread(spoolsv/10)\% Privileged Time
\Thread(spoolsv/11)\% Privileged Time
\Thread(spoolsv/12)\% Privileged Time
\Thread(spoolsv/13)\% Privileged Time
\Thread(alg/0)\% Privileged Time
\Thread(alg/1)\% Privileged Time
\Thread(alg/2)\% Privileged Time
\Thread(alg/3)\% Privileged Time
\Thread(alg/4)\% Privileged Time
\Thread(AsistService/0)\% Privileged Time
\Thread(AsistService/1)\% Privileged Time
\Thread(AsistService/2)\% Privileged Time
\Thread(DSRSvc/0)\% Privileged Time
\Thread(DSRSvc/1)\% Privileged Time
\Thread(DSRSvc/2)\% Privileged Time
\Thread(DSRSvc/3)\% Privileged Time
\Thread(DSRSvc/4)\% Privileged Time
\Thread(DSRSvc/5)\% Privileged Time
\Thread(DSRSvc/6)\% Privileged Time
\Thread(DSRSvc/7)\% Privileged Time
\Thread(DSRSvc/8)\% Privileged Time
\Thread(DSRSvc/9)\% Privileged Time
\Thread(DSRSvc/10)\% Privileged Time
\Thread(DSRSvc/11)\% Privileged Time
\Thread(DSRSvc/12)\% Privileged Time
\Thread(FolderSizeSvc/0)\% Privileged Time
\Thread(FolderSizeSvc/1)\% Privileged Time
\Thread(FolderSizeSvc/2)\% Privileged Time
\Thread(FolderSizeSvc/3)\% Privileged Time
\Thread(FolderSizeSvc/4)\% Privileged Time
\Thread(FolderSizeSvc/5)\% Privileged Time
\Thread(FolderSizeSvc/6)\% Privileged Time
\Thread(FolderSizeSvc/7)\% Privileged Time
\Thread(FolderSizeSvc/8)\% Privileged Time
\Thread(FolderSizeSvc/9)\% Privileged Time
\Thread(FolderSizeSvc/10)\% Privileged Time
\Thread(FolderSizeSvc/11)\% Privileged Time
\Thread(FolderSizeSvc/12)\% Privileged Time
\Thread(FolderSizeSvc/13)\% Privileged Time
\Thread(FolderSizeSvc/14)\% Privileged Time
\Thread(FolderSizeSvc/15)\% Privileged Time
\Thread(FolderSizeSvc/16)\% Privileged Time
\Thread(FolderSizeSvc/17)\% Privileged Time
\Thread(FolderSizeSvc/18)\% Privileged Time
\Thread(FolderSizeSvc/19)\% Privileged Time
\Thread(FolderSizeSvc/20)\% Privileged Time
\Thread(FolderSizeSvc/21)\% Privileged Time
\Thread(FolderSizeSvc/22)\% Privileged Time
\Thread(FolderSizeSvc/23)\% Privileged Time
\Thread(FolderSizeSvc/24)\% Privileged Time
\Thread(FolderSizeSvc/25)\% Privileged Time
\Thread(FolderSizeSvc/26)\% Privileged Time
\Thread(FolderSizeSvc/27)\% Privileged Time
\Thread(FolderSizeSvc/28)\% Privileged Time
\Thread(FolderSizeSvc/29)\% Privileged Time
\Thread(FolderSizeSvc/30)\% Privileged Time
\Thread(FolderSizeSvc/31)\% Privileged Time
\Thread(FolderSizeSvc/32)\% Privileged Time
\Thread(FolderSizeSvc/33)\% Privileged Time
\Thread(FolderSizeSvc/34)\% Privileged Time
\Thread(FolderSizeSvc/35)\% Privileged Time
\Thread(FolderSizeSvc/36)\% Privileged Time
\Thread(FolderSizeSvc/37)\% Privileged Time
\Thread(FolderSizeSvc/38)\% Privileged Time
\Thread(FolderSizeSvc/39)\% Privileged Time
\Thread(FolderSizeSvc/40)\% Privileged Time
\Thread(FolderSizeSvc/41)\% Privileged Time
\Thread(FolderSizeSvc/42)\% Privileged Time
\Thread(FolderSizeSvc/43)\% Privileged Time
\Thread(FolderSizeSvc/44)\% Privileged Time
\Thread(FolderSizeSvc/45)\% Privileged Time
\Thread(FolderSizeSvc/46)\% Privileged Time
\Thread(GSGIOSRV/0)\% Privileged Time
\Thread(GSGIOSRV/1)\% Privileged Time
\Thread(GSGIOSRV/2)\% Privileged Time
\Thread(upsvc/0)\% Privileged Time
\Thread(upsvc/1)\% Privileged Time
\Thread(upsvc/2)\% Privileged Time
\Thread(upsvc/3)\% Privileged Time
\Thread(upsvc/4)\% Privileged Time
\Thread(mdm/0)\% Privileged Time
\Thread(mdm/1)\% Privileged Time
\Thread(mdm/2)\% Privileged Time
\Thread(mdm/3)\% Privileged Time
\Thread(mdm/4)\% Privileged Time
\Thread(rtiosrv/0)\% Privileged Time
\Thread(rtiosrv/1)\% Privileged Time
\Thread(rtiosrv/2)\% Privileged Time
\Thread(rtiosrv/3)\% Privileged Time
\Thread(ManagerClient/0)\% Privileged Time
\Thread(ManagerClient/1)\% Privileged Time
\Thread(sqlwriter/0)\% Privileged Time
\Thread(sqlwriter/1)\% Privileged Time
\Thread(sqlwriter/2)\% Privileged Time
\Thread(vmware-usbarbitrator/0)\% Privileged Time
\Thread(vmware-usbarbitrator/1)\% Privileged Time
\Thread(vmnat/0)\% Privileged Time
\Thread(vmnat/1)\% Privileged Time
\Thread(vmnat/2)\% Privileged Time
\Thread(vmnetdhcp/0)\% Privileged Time
\Thread(vmnetdhcp/1)\% Privileged Time
\Thread(vmware-authd/0)\% Privileged Time
\Thread(vmware-authd/1)\% Privileged Time
\Thread(vmware-authd/2)\% Privileged Time
\Thread(vmware-authd/3)\% Privileged Time
\Thread(vmware-authd/4)\% Privileged Time
\Thread(vmware-authd/5)\% Privileged Time
\Thread(vmware-authd/6)\% Privileged Time
\Thread(explorer/0)\% Privileged Time
\Thread(explorer/1)\% Privileged Time
\Thread(explorer/2)\% Privileged Time
\Thread(explorer/3)\% Privileged Time
\Thread(explorer/4)\% Privileged Time
\Thread(explorer/5)\% Privileged Time
\Thread(explorer/6)\% Privileged Time
\Thread(explorer/7)\% Privileged Time
\Thread(explorer/8)\% Privileged Time
\Thread(explorer/9)\% Privileged Time
\Thread(explorer/10)\% Privileged Time
\Thread(explorer/11)\% Privileged Time
\Thread(explorer/12)\% Privileged Time
\Thread(explorer/13)\% Privileged Time
\Thread(explorer/14)\% Privileged Time
\Thread(explorer/15)\% Privileged Time
\Thread(explorer/16)\% Privileged Time
\Thread(explorer/17)\% Privileged Time
\Thread(explorer/18)\% Privileged Time
\Thread(explorer/19)\% Privileged Time
\Thread(explorer/20)\% Privileged Time
\Thread(explorer/21)\% Privileged Time
\Thread(explorer/22)\% Privileged Time
\Thread(TSVNCache/0)\% Privileged Time
\Thread(TSVNCache/1)\% Privileged Time
\Thread(TSVNCache/2)\% Privileged Time
\Thread(TSVNCache/3)\% Privileged Time
\Thread(TSVNCache/4)\% Privileged Time
\Thread(TSVNCache/5)\% Privileged Time
\Thread(TSVNCache/6)\% Privileged Time
\Thread(TSVNCache/7)\% Privileged Time
\Thread(TSVNCache/8)\% Privileged Time
\Thread(TSVNCache/9)\% Privileged Time
\Thread(TSVNCache/10)\% Privileged Time
\Thread(igfxtray/0)\% Privileged Time
\Thread(igfxtray/1)\% Privileged Time
\Thread(hkcmd/0)\% Privileged Time
\Thread(hkcmd/1)\% Privileged Time
\Thread(hkcmd/2)\% Privileged Time
\Thread(igfxpers/0)\% Privileged Time
\Thread(igfxpers/1)\% Privileged Time
\Thread(KSafeTray/0)\% Privileged Time
\Thread(KSafeTray/1)\% Privileged Time
\Thread(KSafeTray/2)\% Privileged Time
\Thread(KSafeTray/3)\% Privileged Time
\Thread(KSafeTray/4)\% Privileged Time
\Thread(KSafeTray/5)\% Privileged Time
\Thread(KSafeTray/6)\% Privileged Time
\Thread(KSafeTray/7)\% Privileged Time
\Thread(KSafeTray/8)\% Privileged Time
\Thread(KSafeTray/9)\% Privileged Time
\Thread(KSafeTray/10)\% Privileged Time
\Thread(KSafeTray/11)\% Privileged Time
\Thread(KSafeTray/12)\% Privileged Time
\Thread(KSafeTray/13)\% Privileged Time
\Thread(KSafeTray/14)\% Privileged Time
\Thread(KSafeTray/15)\% Privileged Time
\Thread(KSafeTray/16)\% Privileged Time
\Thread(KSafeTray/17)\% Privileged Time
\Thread(KSafeTray/18)\% Privileged Time
\Thread(KSafeTray/19)\% Privileged Time
\Thread(KSafeTray/20)\% Privileged Time
\Thread(KSafeTray/21)\% Privileged Time
\Thread(KSafeTray/22)\% Privileged Time
\Thread(KSafeTray/23)\% Privileged Time
\Thread(kxetray/0)\% Privileged Time
\Thread(kxetray/1)\% Privileged Time
\Thread(kxetray/2)\% Privileged Time
\Thread(kxetray/3)\% Privileged Time
\Thread(kxetray/4)\% Privileged Time
\Thread(kxetray/5)\% Privileged Time
\Thread(kxetray/6)\% Privileged Time
\Thread(kxetray/7)\% Privileged Time
\Thread(kxetray/8)\% Privileged Time
\Thread(kxetray/9)\% Privileged Time
\Thread(kxetray/10)\% Privileged Time
\Thread(kxetray/11)\% Privileged Time
\Thread(kxetray/12)\% Privileged Time
\Thread(kxetray/13)\% Privileged Time
\Thread(kxetray/14)\% Privileged Time
\Thread(kxetray/15)\% Privileged Time
\Thread(kxetray/16)\% Privileged Time
\Thread(kxetray/17)\% Privileged Time
\Thread(kxetray/18)\% Privileged Time
\Thread(kxetray/19)\% Privileged Time
\Thread(kxetray/20)\% Privileged Time
\Thread(kxetray/21)\% Privileged Time
\Thread(kxetray/22)\% Privileged Time
\Thread(kxetray/23)\% Privileged Time
\Thread(igfxsrvc/0)\% Privileged Time
\Thread(igfxsrvc/1)\% Privileged Time
\Thread(igfxsrvc/2)\% Privileged Time
\Thread(igfxsrvc/3)\% Privileged Time
\Thread(Ext2Mgr/0)\% Privileged Time
\Thread(RTHDCPL/0)\% Privileged Time
\Thread(RTHDCPL/1)\% Privileged Time
\Thread(RTHDCPL/2)\% Privileged Time
\Thread(RTHDCPL/3)\% Privileged Time
\Thread(OfficeIM/0)\% Privileged Time
\Thread(OfficeIM/1)\% Privileged Time
\Thread(OfficeIM/2)\% Privileged Time
\Thread(OfficeIM/3)\% Privileged Time
\Thread(OfficeIM/4)\% Privileged Time
\Thread(OfficeIM/5)\% Privileged Time
\Thread(OfficeIM/6)\% Privileged Time
\Thread(OfficeIM/7)\% Privileged Time
\Thread(OfficeIM/8)\% Privileged Time
\Thread(OfficeIM/9)\% Privileged Time
\Thread(OfficeIM/10)\% Privileged Time
\Thread(OfficeIM/11)\% Privileged Time
\Thread(OfficeIM/12)\% Privileged Time
\Thread(OfficeIM/13)\% Privileged Time
\Thread(OfficeIM/14)\% Privileged Time
\Thread(vmware-tray/0)\% Privileged Time
\Thread(vmware-tray/1)\% Privileged Time
\Thread(vmware-tray/2)\% Privileged Time
\Thread(msnmsgr/0)\% Privileged Time
\Thread(msnmsgr/1)\% Privileged Time
\Thread(msnmsgr/2)\% Privileged Time
\Thread(msnmsgr/3)\% Privileged Time
\Thread(msnmsgr/4)\% Privileged Time
\Thread(msnmsgr/5)\% Privileged Time
\Thread(msnmsgr/6)\% Privileged Time
\Thread(msnmsgr/7)\% Privileged Time
\Thread(msnmsgr/8)\% Privileged Time
\Thread(msnmsgr/9)\% Privileged Time
\Thread(msnmsgr/10)\% Privileged Time
\Thread(msnmsgr/11)\% Privileged Time
\Thread(msnmsgr/12)\% Privileged Time
\Thread(msnmsgr/13)\% Privileged Time
\Thread(msnmsgr/14)\% Privileged Time
\Thread(msnmsgr/15)\% Privileged Time
\Thread(msnmsgr/16)\% Privileged Time
\Thread(msnmsgr/17)\% Privileged Time
\Thread(msnmsgr/18)\% Privileged Time
\Thread(msnmsgr/19)\% Privileged Time
\Thread(msnmsgr/20)\% Privileged Time
\Thread(msnmsgr/21)\% Privileged Time
\Thread(msnmsgr/22)\% Privileged Time
\Thread(msnmsgr/23)\% Privileged Time
\Thread(msnmsgr/24)\% Privileged Time
\Thread(msnmsgr/25)\% Privileged Time
\Thread(msnmsgr/26)\% Privileged Time
\Thread(msnmsgr/27)\% Privileged Time
\Thread(msnmsgr/28)\% Privileged Time
\Thread(msnmsgr/29)\% Privileged Time
\Thread(msnmsgr/30)\% Privileged Time
\Thread(msnmsgr/31)\% Privileged Time
\Thread(msnmsgr/32)\% Privileged Time
\Thread(msnmsgr/33)\% Privileged Time
\Thread(msnmsgr/34)\% Privileged Time
\Thread(msnmsgr/35)\% Privileged Time
\Thread(msnmsgr/36)\% Privileged Time
\Thread(msnmsgr/37)\% Privileged Time
\Thread(msnmsgr/38)\% Privileged Time
\Thread(msnmsgr/39)\% Privileged Time
\Thread(ctfmon/0)\% Privileged Time
\Thread(VVCap/0)\% Privileged Time
\Thread(VVCap/1)\% Privileged Time
\Thread(wlcomm/0)\% Privileged Time
\Thread(wlcomm/1)\% Privileged Time
\Thread(wlcomm/2)\% Privileged Time
\Thread(wlcomm/3)\% Privileged Time
\Thread(wlcomm/4)\% Privileged Time
\Thread(wlcomm/5)\% Privileged Time
\Thread(wlcomm/6)\% Privileged Time
\Thread(wlcomm/7)\% Privileged Time
\Thread(wlcomm/8)\% Privileged Time
\Thread(wlcomm/9)\% Privileged Time
\Thread(wlcomm/10)\% Privileged Time
\Thread(wlcomm/11)\% Privileged Time
\Thread(wlcomm/12)\% Privileged Time
\Thread(wlcomm/13)\% Privileged Time
\Thread(wlcomm/14)\% Privileged Time
\Thread(WPFFontCache_v0400/0)\% Privileged Time
\Thread(WPFFontCache_v0400/1)\% Privileged Time
\Thread(WPFFontCache_v0400/2)\% Privileged Time
\Thread(WPFFontCache_v0400/3)\% Privileged Time
\Thread(WPFFontCache_v0400/4)\% Privileged Time
\Thread(WPFFontCache_v0400/5)\% Privileged Time
\Thread(WPFFontCache_v0400/6)\% Privileged Time
\Thread(KuGoo/0)\% Privileged Time
\Thread(KuGoo/1)\% Privileged Time
\Thread(KuGoo/2)\% Privileged Time
\Thread(KuGoo/3)\% Privileged Time
\Thread(KuGoo/4)\% Privileged Time
\Thread(KuGoo/5)\% Privileged Time
\Thread(KuGoo/6)\% Privileged Time
\Thread(KuGoo/7)\% Privileged Time
\Thread(KuGoo/8)\% Privileged Time
\Thread(KuGoo/9)\% Privileged Time
\Thread(KuGoo/10)\% Privileged Time
\Thread(KuGoo/11)\% Privileged Time
\Thread(KuGoo/12)\% Privileged Time
\Thread(KuGoo/13)\% Privileged Time
\Thread(KuGoo/14)\% Privileged Time
\Thread(KuGoo/15)\% Privileged Time
\Thread(KuGoo/16)\% Privileged Time
\Thread(KuGoo/17)\% Privileged Time
\Thread(KuGoo/18)\% Privileged Time
\Thread(KuGoo/19)\% Privileged Time
\Thread(KuGoo/20)\% Privileged Time
\Thread(KuGoo/21)\% Privileged Time
\Thread(KuGoo/22)\% Privileged Time
\Thread(KuGoo/23)\% Privileged Time
\Thread(KuGoo/24)\% Privileged Time
\Thread(KuGoo/25)\% Privileged Time
\Thread(KuGoo/26)\% Privileged Time
\Thread(KuGoo/27)\% Privileged Time
\Thread(KuGoo/28)\% Privileged Time
\Thread(KuGoo/29)\% Privileged Time
\Thread(KuGoo/30)\% Privileged Time
\Thread(KuGoo/31)\% Privileged Time
\Thread(KuGoo/32)\% Privileged Time
\Thread(KuGoo/33)\% Privileged Time
\Thread(KuGoo/34)\% Privileged Time
\Thread(KuGoo/35)\% Privileged Time
\Thread(KuGoo/36)\% Privileged Time
\Thread(KuGoo/37)\% Privileged Time
\Thread(KuGoo/38)\% Privileged Time
\Thread(KuGoo/39)\% Privileged Time
\Thread(KuGoo/40)\% Privileged Time
\Thread(KuGoo/41)\% Privileged Time
\Thread(KuGoo/42)\% Privileged Time
\Thread(KuGoo/43)\% Privileged Time
\Thread(KuGoo/44)\% Privileged Time
\Thread(KuGoo/45)\% Privileged Time
\Thread(KuGoo/46)\% Privileged Time
\Thread(KuGoo/47)\% Privileged Time
\Thread(KuGoo/48)\% Privileged Time
\Thread(KuGoo/49)\% Privileged Time
\Thread(KuGoo/50)\% Privileged Time
\Thread(KuGoo/51)\% Privileged Time
\Thread(KuGoo/52)\% Privileged Time
\Thread(KuGoo/53)\% Privileged Time
\Thread(KuGoo/54)\% Privileged Time
\Thread(KuGoo/55)\% Privileged Time
\Thread(KuGoo/56)\% Privileged Time
\Thread(KuGoo/57)\% Privileged Time
\Thread(KuGoo/58)\% Privileged Time
\Thread(KuGoo/59)\% Privileged Time
\Thread(firefox/0)\% Privileged Time
\Thread(firefox/1)\% Privileged Time
\Thread(firefox/2)\% Privileged Time
\Thread(firefox/3)\% Privileged Time
\Thread(firefox/4)\% Privileged Time
\Thread(firefox/5)\% Privileged Time
\Thread(firefox/6)\% Privileged Time
\Thread(firefox/7)\% Privileged Time
\Thread(firefox/8)\% Privileged Time
\Thread(firefox/9)\% Privileged Time
\Thread(firefox/10)\% Privileged Time
\Thread(firefox/11)\% Privileged Time
\Thread(firefox/12)\% Privileged Time
\Thread(firefox/13)\% Privileged Time
\Thread(firefox/14)\% Privileged Time
\Thread(firefox/15)\% Privileged Time
\Thread(firefox/16)\% Privileged Time
\Thread(firefox/17)\% Privileged Time
\Thread(firefox/18)\% Privileged Time
\Thread(firefox/19)\% Privileged Time
\Thread(firefox/20)\% Privileged Time
\Thread(firefox/21)\% Privileged Time
\Thread(firefox/22)\% Privileged Time
\Thread(firefox/23)\% Privileged Time
\Thread(firefox/24)\% Privileged Time
\Thread(vmware/0)\% Privileged Time
\Thread(vmware/1)\% Privileged Time
\Thread(vmware/2)\% Privileged Time
\Thread(vmware/3)\% Privileged Time
\Thread(vmware/4)\% Privileged Time
\Thread(vmware/5)\% Privileged Time
\Thread(vmware/6)\% Privileged Time
\Thread(vmware/7)\% Privileged Time
\Thread(taskmgr/0)\% Privileged Time
\Thread(taskmgr/1)\% Privileged Time
\Thread(taskmgr/2)\% Privileged Time
\Thread(SshClient/0)\% Privileged Time
\Thread(SshClient/1)\% Privileged Time
\Thread(SshClient/2)\% Privileged Time
\Thread(SshClient/3)\% Privileged Time
\Thread(SshClient/4)\% Privileged Time
\Thread(SshClient/5)\% Privileged Time
\Thread(SshClient/6)\% Privileged Time
\Thread(Thunder5/0)\% Privileged Time
\Thread(Thunder5/1)\% Privileged Time
\Thread(Thunder5/2)\% Privileged Time
\Thread(Thunder5/3)\% Privileged Time
\Thread(Thunder5/4)\% Privileged Time
\Thread(Thunder5/5)\% Privileged Time
\Thread(Thunder5/6)\% Privileged Time
\Thread(Thunder5/7)\% Privileged Time
\Thread(Thunder5/8)\% Privileged Time
\Thread(Thunder5/9)\% Privileged Time
\Thread(Thunder5/10)\% Privileged Time
\Thread(Thunder5/11)\% Privileged Time
\Thread(Thunder5/12)\% Privileged Time
\Thread(Thunder5/13)\% Privileged Time
\Thread(Thunder5/14)\% Privileged Time
\Thread(Thunder5/15)\% Privileged Time
\Thread(Thunder5/16)\% Privileged Time
\Thread(Thunder5/17)\% Privileged Time
\Thread(Thunder5/18)\% Privileged Time
\Thread(Thunder5/19)\% Privileged Time
\Thread(Thunder5/20)\% Privileged Time
\Thread(Thunder5/21)\% Privileged Time
\Thread(Thunder5/22)\% Privileged Time
\Thread(Thunder5/23)\% Privileged Time
\Thread(Thunder5/24)\% Privileged Time
\Thread(Thunder5/25)\% Privileged Time
\Thread(Thunder5/26)\% Privileged Time
\Thread(Thunder5/27)\% Privileged Time
\Thread(Thunder5/28)\% Privileged Time
\Thread(Thunder5/29)\% Privileged Time
\Thread(Thunder5/30)\% Privileged Time
\Thread(Thunder5/31)\% Privileged Time
\Thread(Thunder5/32)\% Privileged Time
\Thread(Thunder5/33)\% Privileged Time
\Thread(Thunder5/34)\% Privileged Time
\Thread(Thunder5/35)\% Privileged Time
\Thread(Thunder5/36)\% Privileged Time
\Thread(Thunder5/37)\% Privileged Time
\Thread(Thunder5/38)\% Privileged Time
\Thread(Thunder5/39)\% Privileged Time
\Thread(Thunder5/40)\% Privileged Time
\Thread(Thunder5/41)\% Privileged Time
\Thread(Thunder5/42)\% Privileged Time
\Thread(Thunder5/43)\% Privileged Time
\Thread(Thunder5/44)\% Privileged Time
\Thread(Thunder5/45)\% Privileged Time
\Thread(Thunder5/46)\% Privileged Time
\Thread(cmd/0)\% Privileged Time
\Thread(typeperf/0)\% Privileged Time
\Thread(typeperf/1)\% Privileged Time
\Thread(typeperf/2)\% Privileged Time
\Thread(typeperf/3)\% Privileged Time
\Thread(typeperf/4)\% Privileged Time
\Thread(typeperf/5)\% Privileged Time
\Thread(typeperf/6)\% Privileged Time
\Thread(typeperf/7)\% Privileged Time
\Thread(typeperf/8)\% Privileged Time
\Thread(typeperf/9)\% Privileged Time
\Thread(typeperf/10)\% Privileged Time
\Thread(_Total/_Total)\% Privileged Time
\Thread(Idle/0)\Context Switches/sec
\Thread(Idle/1)\Context Switches/sec
\Thread(System/0)\Context Switches/sec
\Thread(System/1)\Context Switches/sec
\Thread(System/2)\Context Switches/sec
\Thread(System/3)\Context Switches/sec
\Thread(System/4)\Context Switches/sec
\Thread(System/5)\Context Switches/sec
\Thread(System/6)\Context Switches/sec
\Thread(System/7)\Context Switches/sec
\Thread(System/8)\Context Switches/sec
\Thread(System/9)\Context Switches/sec
\Thread(System/10)\Context Switches/sec
\Thread(System/11)\Context Switches/sec
\Thread(System/12)\Context Switches/sec
\Thread(System/13)\Context Switches/sec
\Thread(System/14)\Context Switches/sec
\Thread(System/15)\Context Switches/sec
\Thread(System/16)\Context Switches/sec
\Thread(System/17)\Context Switches/sec
\Thread(System/18)\Context Switches/sec
\Thread(System/19)\Context Switches/sec
\Thread(System/20)\Context Switches/sec
\Thread(System/21)\Context Switches/sec
\Thread(System/22)\Context Switches/sec
\Thread(System/23)\Context Switches/sec
\Thread(System/24)\Context Switches/sec
\Thread(System/25)\Context Switches/sec
\Thread(System/26)\Context Switches/sec
\Thread(System/27)\Context Switches/sec
\Thread(System/28)\Context Switches/sec
\Thread(System/29)\Context Switches/sec
\Thread(System/30)\Context Switches/sec
\Thread(System/31)\Context Switches/sec
\Thread(System/32)\Context Switches/sec
\Thread(System/33)\Context Switches/sec
\Thread(System/34)\Context Switches/sec
\Thread(System/35)\Context Switches/sec
\Thread(System/36)\Context Switches/sec
\Thread(System/37)\Context Switches/sec
\Thread(System/38)\Context Switches/sec
\Thread(System/39)\Context Switches/sec
\Thread(System/40)\Context Switches/sec
\Thread(System/41)\Context Switches/sec
\Thread(System/42)\Context Switches/sec
\Thread(System/43)\Context Switches/sec
\Thread(System/44)\Context Switches/sec
\Thread(System/45)\Context Switches/sec
\Thread(System/46)\Context Switches/sec
\Thread(System/47)\Context Switches/sec
\Thread(System/48)\Context Switches/sec
\Thread(System/49)\Context Switches/sec
\Thread(System/50)\Context Switches/sec
\Thread(System/51)\Context Switches/sec
\Thread(System/52)\Context Switches/sec
\Thread(System/53)\Context Switches/sec
\Thread(System/54)\Context Switches/sec
\Thread(System/55)\Context Switches/sec
\Thread(System/56)\Context Switches/sec
\Thread(System/57)\Context Switches/sec
\Thread(System/58)\Context Switches/sec
\Thread(System/59)\Context Switches/sec
\Thread(System/60)\Context Switches/sec
\Thread(System/61)\Context Switches/sec
\Thread(System/62)\Context Switches/sec
\Thread(System/63)\Context Switches/sec
\Thread(System/64)\Context Switches/sec
\Thread(System/65)\Context Switches/sec
\Thread(System/66)\Context Switches/sec
\Thread(System/67)\Context Switches/sec
\Thread(System/68)\Context Switches/sec
\Thread(System/69)\Context Switches/sec
\Thread(System/70)\Context Switches/sec
\Thread(System/71)\Context Switches/sec
\Thread(System/72)\Context Switches/sec
\Thread(System/73)\Context Switches/sec
\Thread(System/74)\Context Switches/sec
\Thread(System/75)\Context Switches/sec
\Thread(System/76)\Context Switches/sec
\Thread(System/77)\Context Switches/sec
\Thread(System/78)\Context Switches/sec
\Thread(System/79)\Context Switches/sec
\Thread(System/80)\Context Switches/sec
\Thread(System/81)\Context Switches/sec
\Thread(System/82)\Context Switches/sec
\Thread(System/83)\Context Switches/sec
\Thread(System/84)\Context Switches/sec
\Thread(System/85)\Context Switches/sec
\Thread(System/86)\Context Switches/sec
\Thread(System/87)\Context Switches/sec
\Thread(System/88)\Context Switches/sec
\Thread(System/89)\Context Switches/sec
\Thread(System/90)\Context Switches/sec
\Thread(System/91)\Context Switches/sec
\Thread(System/92)\Context Switches/sec
\Thread(System/93)\Context Switches/sec
\Thread(System/94)\Context Switches/sec
\Thread(System/95)\Context Switches/sec
\Thread(System/96)\Context Switches/sec
\Thread(System/97)\Context Switches/sec
\Thread(smss/0)\Context Switches/sec
\Thread(smss/1)\Context Switches/sec
\Thread(smss/2)\Context Switches/sec
\Thread(csrss/0)\Context Switches/sec
\Thread(csrss/1)\Context Switches/sec
\Thread(csrss/2)\Context Switches/sec
\Thread(csrss/3)\Context Switches/sec
\Thread(csrss/4)\Context Switches/sec
\Thread(csrss/5)\Context Switches/sec
\Thread(csrss/6)\Context Switches/sec
\Thread(csrss/7)\Context Switches/sec
\Thread(csrss/8)\Context Switches/sec
\Thread(csrss/9)\Context Switches/sec
\Thread(csrss/10)\Context Switches/sec
\Thread(csrss/11)\Context Switches/sec
\Thread(winlogon/0)\Context Switches/sec
\Thread(winlogon/1)\Context Switches/sec
\Thread(winlogon/2)\Context Switches/sec
\Thread(winlogon/3)\Context Switches/sec
\Thread(winlogon/4)\Context Switches/sec
\Thread(winlogon/5)\Context Switches/sec
\Thread(winlogon/6)\Context Switches/sec
\Thread(winlogon/7)\Context Switches/sec
\Thread(winlogon/8)\Context Switches/sec
\Thread(winlogon/9)\Context Switches/sec
\Thread(winlogon/10)\Context Switches/sec
\Thread(winlogon/11)\Context Switches/sec
\Thread(winlogon/12)\Context Switches/sec
\Thread(winlogon/13)\Context Switches/sec
\Thread(winlogon/14)\Context Switches/sec
\Thread(winlogon/15)\Context Switches/sec
\Thread(winlogon/16)\Context Switches/sec
\Thread(winlogon/17)\Context Switches/sec
\Thread(winlogon/18)\Context Switches/sec
\Thread(winlogon/19)\Context Switches/sec
\Thread(winlogon/20)\Context Switches/sec
\Thread(winlogon/21)\Context Switches/sec
\Thread(services/0)\Context Switches/sec
\Thread(services/1)\Context Switches/sec
\Thread(services/2)\Context Switches/sec
\Thread(services/3)\Context Switches/sec
\Thread(services/4)\Context Switches/sec
\Thread(services/5)\Context Switches/sec
\Thread(services/6)\Context Switches/sec
\Thread(services/7)\Context Switches/sec
\Thread(services/8)\Context Switches/sec
\Thread(services/9)\Context Switches/sec
\Thread(services/10)\Context Switches/sec
\Thread(services/11)\Context Switches/sec
\Thread(services/12)\Context Switches/sec
\Thread(services/13)\Context Switches/sec
\Thread(services/14)\Context Switches/sec
\Thread(services/15)\Context Switches/sec
\Thread(lsass/0)\Context Switches/sec
\Thread(lsass/1)\Context Switches/sec
\Thread(lsass/2)\Context Switches/sec
\Thread(lsass/3)\Context Switches/sec
\Thread(lsass/4)\Context Switches/sec
\Thread(lsass/5)\Context Switches/sec
\Thread(lsass/6)\Context Switches/sec
\Thread(lsass/7)\Context Switches/sec
\Thread(lsass/8)\Context Switches/sec
\Thread(lsass/9)\Context Switches/sec
\Thread(lsass/10)\Context Switches/sec
\Thread(lsass/11)\Context Switches/sec
\Thread(lsass/12)\Context Switches/sec
\Thread(lsass/13)\Context Switches/sec
\Thread(lsass/14)\Context Switches/sec
\Thread(lsass/15)\Context Switches/sec
\Thread(lsass/16)\Context Switches/sec
\Thread(lsass/17)\Context Switches/sec
\Thread(lsass/18)\Context Switches/sec
\Thread(lsass/19)\Context Switches/sec
\Thread(lsass/20)\Context Switches/sec
\Thread(lsass/21)\Context Switches/sec
\Thread(svchost/0)\Context Switches/sec
\Thread(svchost/1)\Context Switches/sec
\Thread(svchost/2)\Context Switches/sec
\Thread(svchost/3)\Context Switches/sec
\Thread(svchost/4)\Context Switches/sec
\Thread(svchost/5)\Context Switches/sec
\Thread(svchost/6)\Context Switches/sec
\Thread(svchost/7)\Context Switches/sec
\Thread(svchost/0)\Context Switches/sec
\Thread(svchost/1)\Context Switches/sec
\Thread(svchost/2)\Context Switches/sec
\Thread(svchost/3)\Context Switches/sec
\Thread(svchost/4)\Context Switches/sec
\Thread(svchost/5)\Context Switches/sec
\Thread(svchost/6)\Context Switches/sec
\Thread(svchost/7)\Context Switches/sec
\Thread(svchost/8)\Context Switches/sec
\Thread(svchost/9)\Context Switches/sec
\Thread(svchost/10)\Context Switches/sec
\Thread(svchost/11)\Context Switches/sec
\Thread(svchost/12)\Context Switches/sec
\Thread(svchost/13)\Context Switches/sec
\Thread(svchost/14)\Context Switches/sec
\Thread(svchost/15)\Context Switches/sec
\Thread(svchost/16)\Context Switches/sec
\Thread(svchost/17)\Context Switches/sec
\Thread(svchost/18)\Context Switches/sec
\Thread(svchost/19)\Context Switches/sec
\Thread(svchost/20)\Context Switches/sec
\Thread(svchost/21)\Context Switches/sec
\Thread(svchost/22)\Context Switches/sec
\Thread(svchost/23)\Context Switches/sec
\Thread(svchost/24)\Context Switches/sec
\Thread(svchost/25)\Context Switches/sec
\Thread(svchost/26)\Context Switches/sec
\Thread(svchost/27)\Context Switches/sec
\Thread(svchost/28)\Context Switches/sec
\Thread(svchost/29)\Context Switches/sec
\Thread(svchost/30)\Context Switches/sec
\Thread(svchost/31)\Context Switches/sec
\Thread(svchost/32)\Context Switches/sec
\Thread(svchost/33)\Context Switches/sec
\Thread(svchost/34)\Context Switches/sec
\Thread(svchost/35)\Context Switches/sec
\Thread(svchost/36)\Context Switches/sec
\Thread(svchost/37)\Context Switches/sec
\Thread(svchost/38)\Context Switches/sec
\Thread(svchost/39)\Context Switches/sec
\Thread(svchost/40)\Context Switches/sec
\Thread(svchost/41)\Context Switches/sec
\Thread(svchost/42)\Context Switches/sec
\Thread(svchost/43)\Context Switches/sec
\Thread(svchost/44)\Context Switches/sec
\Thread(svchost/45)\Context Switches/sec
\Thread(svchost/46)\Context Switches/sec
\Thread(svchost/47)\Context Switches/sec
\Thread(svchost/48)\Context Switches/sec
\Thread(svchost/49)\Context Switches/sec
\Thread(svchost/50)\Context Switches/sec
\Thread(svchost/51)\Context Switches/sec
\Thread(svchost/52)\Context Switches/sec
\Thread(svchost/53)\Context Switches/sec
\Thread(svchost/54)\Context Switches/sec
\Thread(svchost/55)\Context Switches/sec
\Thread(svchost/56)\Context Switches/sec
\Thread(svchost/57)\Context Switches/sec
\Thread(svchost/58)\Context Switches/sec
\Thread(svchost/59)\Context Switches/sec
\Thread(svchost/60)\Context Switches/sec
\Thread(svchost/61)\Context Switches/sec
\Thread(svchost/62)\Context Switches/sec
\Thread(svchost/63)\Context Switches/sec
\Thread(svchost/64)\Context Switches/sec
\Thread(svchost/65)\Context Switches/sec
\Thread(svchost/66)\Context Switches/sec
\Thread(svchost/67)\Context Switches/sec
\Thread(svchost/68)\Context Switches/sec
\Thread(svchost/69)\Context Switches/sec
\Thread(svchost/70)\Context Switches/sec
\Thread(svchost/0)\Context Switches/sec
\Thread(svchost/1)\Context Switches/sec
\Thread(svchost/2)\Context Switches/sec
\Thread(svchost/3)\Context Switches/sec
\Thread(svchost/4)\Context Switches/sec
\Thread(svchost/5)\Context Switches/sec
\Thread(svchost/0)\Context Switches/sec
\Thread(svchost/1)\Context Switches/sec
\Thread(svchost/2)\Context Switches/sec
\Thread(svchost/3)\Context Switches/sec
\Thread(svchost/4)\Context Switches/sec
\Thread(svchost/5)\Context Switches/sec
\Thread(svchost/6)\Context Switches/sec
\Thread(svchost/7)\Context Switches/sec
\Thread(svchost/8)\Context Switches/sec
\Thread(svchost/9)\Context Switches/sec
\Thread(svchost/10)\Context Switches/sec
\Thread(svchost/11)\Context Switches/sec
\Thread(svchost/12)\Context Switches/sec
\Thread(svchost/13)\Context Switches/sec
\Thread(svchost/14)\Context Switches/sec
\Thread(svchost/0)\Context Switches/sec
\Thread(svchost/1)\Context Switches/sec
\Thread(svchost/2)\Context Switches/sec
\Thread(svchost/3)\Context Switches/sec
\Thread(svchost/4)\Context Switches/sec
\Thread(kxedefend/0)\Context Switches/sec
\Thread(kxedefend/1)\Context Switches/sec
\Thread(kxedefend/2)\Context Switches/sec
\Thread(kxedefend/3)\Context Switches/sec
\Thread(kxedefend/4)\Context Switches/sec
\Thread(kxedefend/5)\Context Switches/sec
\Thread(kxedefend/6)\Context Switches/sec
\Thread(kxedefend/7)\Context Switches/sec
\Thread(kxedefend/8)\Context Switches/sec
\Thread(kxedefend/9)\Context Switches/sec
\Thread(kxedefend/10)\Context Switches/sec
\Thread(kxedefend/11)\Context Switches/sec
\Thread(kxedefend/12)\Context Switches/sec
\Thread(kxedefend/13)\Context Switches/sec
\Thread(kxedefend/14)\Context Switches/sec
\Thread(kxedefend/15)\Context Switches/sec
\Thread(kxedefend/16)\Context Switches/sec
\Thread(kxedefend/17)\Context Switches/sec
\Thread(kxedefend/18)\Context Switches/sec
\Thread(kxedefend/19)\Context Switches/sec
\Thread(kxedefend/20)\Context Switches/sec
\Thread(kxedefend/21)\Context Switches/sec
\Thread(kxedefend/22)\Context Switches/sec
\Thread(kxedefend/23)\Context Switches/sec
\Thread(kxedefend/24)\Context Switches/sec
\Thread(kxedefend/25)\Context Switches/sec
\Thread(kxedefend/26)\Context Switches/sec
\Thread(kxedefend/27)\Context Switches/sec
\Thread(kxescore/0)\Context Switches/sec
\Thread(kxescore/1)\Context Switches/sec
\Thread(kxescore/2)\Context Switches/sec
\Thread(kxescore/3)\Context Switches/sec
\Thread(kxescore/4)\Context Switches/sec
\Thread(kxescore/5)\Context Switches/sec
\Thread(kxescore/6)\Context Switches/sec
\Thread(kxescore/7)\Context Switches/sec
\Thread(kxescore/8)\Context Switches/sec
\Thread(kxescore/9)\Context Switches/sec
\Thread(kxescore/10)\Context Switches/sec
\Thread(kxescore/11)\Context Switches/sec
\Thread(kxescore/12)\Context Switches/sec
\Thread(kxescore/13)\Context Switches/sec
\Thread(kxescore/14)\Context Switches/sec
\Thread(kxescore/15)\Context Switches/sec
\Thread(kxescore/16)\Context Switches/sec
\Thread(kxescore/17)\Context Switches/sec
\Thread(kxescore/18)\Context Switches/sec
\Thread(kxescore/19)\Context Switches/sec
\Thread(kxescore/20)\Context Switches/sec
\Thread(kxescore/21)\Context Switches/sec
\Thread(kxescore/22)\Context Switches/sec
\Thread(kxescore/23)\Context Switches/sec
\Thread(kxescore/24)\Context Switches/sec
\Thread(kxescore/25)\Context Switches/sec
\Thread(kxescore/26)\Context Switches/sec
\Thread(kxescore/27)\Context Switches/sec
\Thread(kxescore/28)\Context Switches/sec
\Thread(kxescore/29)\Context Switches/sec
\Thread(kxescore/30)\Context Switches/sec
\Thread(kxescore/31)\Context Switches/sec
\Thread(kxescore/32)\Context Switches/sec
\Thread(kxescore/33)\Context Switches/sec
\Thread(kxescore/34)\Context Switches/sec
\Thread(kxescore/35)\Context Switches/sec
\Thread(kxescore/36)\Context Switches/sec
\Thread(kxescore/37)\Context Switches/sec
\Thread(kxescore/38)\Context Switches/sec
\Thread(kxescore/39)\Context Switches/sec
\Thread(kxescore/40)\Context Switches/sec
\Thread(kxescore/41)\Context Switches/sec
\Thread(kxescore/42)\Context Switches/sec
\Thread(kxescore/43)\Context Switches/sec
\Thread(kxescore/44)\Context Switches/sec
\Thread(kxescore/45)\Context Switches/sec
\Thread(kxescore/46)\Context Switches/sec
\Thread(kxescore/47)\Context Switches/sec
\Thread(kxescore/48)\Context Switches/sec
\Thread(kxescore/49)\Context Switches/sec
\Thread(kxescore/50)\Context Switches/sec
\Thread(kxescore/51)\Context Switches/sec
\Thread(kxescore/52)\Context Switches/sec
\Thread(kxescore/53)\Context Switches/sec
\Thread(kxescore/54)\Context Switches/sec
\Thread(kxescore/55)\Context Switches/sec
\Thread(kxescore/56)\Context Switches/sec
\Thread(kxescore/57)\Context Switches/sec
\Thread(kxescore/58)\Context Switches/sec
\Thread(kxescore/59)\Context Switches/sec
\Thread(kxescore/60)\Context Switches/sec
\Thread(KSafeSvc/0)\Context Switches/sec
\Thread(KSafeSvc/1)\Context Switches/sec
\Thread(KSafeSvc/2)\Context Switches/sec
\Thread(KSafeSvc/3)\Context Switches/sec
\Thread(KSafeSvc/4)\Context Switches/sec
\Thread(KSafeSvc/5)\Context Switches/sec
\Thread(KSafeSvc/6)\Context Switches/sec
\Thread(KSafeSvc/7)\Context Switches/sec
\Thread(KSafeSvc/8)\Context Switches/sec
\Thread(KSafeSvc/9)\Context Switches/sec
\Thread(KSafeSvc/10)\Context Switches/sec
\Thread(KSafeSvc/11)\Context Switches/sec
\Thread(KSafeSvc/12)\Context Switches/sec
\Thread(KSafeSvc/13)\Context Switches/sec
\Thread(KSafeSvc/14)\Context Switches/sec
\Thread(KSafeSvc/15)\Context Switches/sec
\Thread(KSafeSvc/16)\Context Switches/sec
\Thread(KSafeSvc/17)\Context Switches/sec
\Thread(KSafeSvc/18)\Context Switches/sec
\Thread(KSafeSvc/19)\Context Switches/sec
\Thread(KSafeSvc/20)\Context Switches/sec
\Thread(KSafeSvc/21)\Context Switches/sec
\Thread(KSafeSvc/22)\Context Switches/sec
\Thread(KSafeSvc/23)\Context Switches/sec
\Thread(KSafeSvc/24)\Context Switches/sec
\Thread(KSafeSvc/25)\Context Switches/sec
\Thread(KSafeSvc/26)\Context Switches/sec
\Thread(KSafeSvc/27)\Context Switches/sec
\Thread(KSafeSvc/28)\Context Switches/sec
\Thread(KSafeSvc/29)\Context Switches/sec
\Thread(KSafeSvc/30)\Context Switches/sec
\Thread(KSafeSvc/31)\Context Switches/sec
\Thread(KSafeSvc/32)\Context Switches/sec
\Thread(KSafeSvc/33)\Context Switches/sec
\Thread(KSafeSvc/34)\Context Switches/sec
\Thread(KSafeSvc/35)\Context Switches/sec
\Thread(KSafeSvc/36)\Context Switches/sec
\Thread(KSafeSvc/37)\Context Switches/sec
\Thread(KSafeSvc/38)\Context Switches/sec
\Thread(KSafeSvc/39)\Context Switches/sec
\Thread(KSafeSvc/40)\Context Switches/sec
\Thread(KSafeSvc/41)\Context Switches/sec
\Thread(KSafeSvc/42)\Context Switches/sec
\Thread(KSafeSvc/43)\Context Switches/sec
\Thread(KSafeSvc/44)\Context Switches/sec
\Thread(KSafeSvc/45)\Context Switches/sec
\Thread(KSafeSvc/46)\Context Switches/sec
\Thread(KSafeSvc/47)\Context Switches/sec
\Thread(KSafeSvc/48)\Context Switches/sec
\Thread(KSafeSvc/49)\Context Switches/sec
\Thread(KSafeSvc/50)\Context Switches/sec
\Thread(KSafeSvc/51)\Context Switches/sec
\Thread(KSafeSvc/52)\Context Switches/sec
\Thread(KSafeSvc/53)\Context Switches/sec
\Thread(kxesapp/0)\Context Switches/sec
\Thread(kxesapp/1)\Context Switches/sec
\Thread(kxesapp/2)\Context Switches/sec
\Thread(kxesapp/3)\Context Switches/sec
\Thread(kxesapp/4)\Context Switches/sec
\Thread(kxesapp/5)\Context Switches/sec
\Thread(kxesapp/6)\Context Switches/sec
\Thread(kxesapp/7)\Context Switches/sec
\Thread(kxesapp/8)\Context Switches/sec
\Thread(kxesapp/9)\Context Switches/sec
\Thread(kxesapp/10)\Context Switches/sec
\Thread(kxesapp/11)\Context Switches/sec
\Thread(kxesapp/12)\Context Switches/sec
\Thread(kxesapp/13)\Context Switches/sec
\Thread(kxesapp/14)\Context Switches/sec
\Thread(kxesapp/15)\Context Switches/sec
\Thread(kxesapp/16)\Context Switches/sec
\Thread(kxesapp/17)\Context Switches/sec
\Thread(kxesapp/18)\Context Switches/sec
\Thread(kxesapp/19)\Context Switches/sec
\Thread(kxesapp/20)\Context Switches/sec
\Thread(kxesapp/21)\Context Switches/sec
\Thread(kxesapp/22)\Context Switches/sec
\Thread(spoolsv/0)\Context Switches/sec
\Thread(spoolsv/1)\Context Switches/sec
\Thread(spoolsv/2)\Context Switches/sec
\Thread(spoolsv/3)\Context Switches/sec
\Thread(spoolsv/4)\Context Switches/sec
\Thread(spoolsv/5)\Context Switches/sec
\Thread(spoolsv/6)\Context Switches/sec
\Thread(spoolsv/7)\Context Switches/sec
\Thread(spoolsv/8)\Context Switches/sec
\Thread(spoolsv/9)\Context Switches/sec
\Thread(spoolsv/10)\Context Switches/sec
\Thread(spoolsv/11)\Context Switches/sec
\Thread(spoolsv/12)\Context Switches/sec
\Thread(spoolsv/13)\Context Switches/sec
\Thread(alg/0)\Context Switches/sec
\Thread(alg/1)\Context Switches/sec
\Thread(alg/2)\Context Switches/sec
\Thread(alg/3)\Context Switches/sec
\Thread(alg/4)\Context Switches/sec
\Thread(AsistService/0)\Context Switches/sec
\Thread(AsistService/1)\Context Switches/sec
\Thread(AsistService/2)\Context Switches/sec
\Thread(DSRSvc/0)\Context Switches/sec
\Thread(DSRSvc/1)\Context Switches/sec
\Thread(DSRSvc/2)\Context Switches/sec
\Thread(DSRSvc/3)\Context Switches/sec
\Thread(DSRSvc/4)\Context Switches/sec
\Thread(DSRSvc/5)\Context Switches/sec
\Thread(DSRSvc/6)\Context Switches/sec
\Thread(DSRSvc/7)\Context Switches/sec
\Thread(DSRSvc/8)\Context Switches/sec
\Thread(DSRSvc/9)\Context Switches/sec
\Thread(DSRSvc/10)\Context Switches/sec
\Thread(DSRSvc/11)\Context Switches/sec
\Thread(DSRSvc/12)\Context Switches/sec
\Thread(FolderSizeSvc/0)\Context Switches/sec
\Thread(FolderSizeSvc/1)\Context Switches/sec
\Thread(FolderSizeSvc/2)\Context Switches/sec
\Thread(FolderSizeSvc/3)\Context Switches/sec
\Thread(FolderSizeSvc/4)\Context Switches/sec
\Thread(FolderSizeSvc/5)\Context Switches/sec
\Thread(FolderSizeSvc/6)\Context Switches/sec
\Thread(FolderSizeSvc/7)\Context Switches/sec
\Thread(FolderSizeSvc/8)\Context Switches/sec
\Thread(FolderSizeSvc/9)\Context Switches/sec
\Thread(FolderSizeSvc/10)\Context Switches/sec
\Thread(FolderSizeSvc/11)\Context Switches/sec
\Thread(FolderSizeSvc/12)\Context Switches/sec
\Thread(FolderSizeSvc/13)\Context Switches/sec
\Thread(FolderSizeSvc/14)\Context Switches/sec
\Thread(FolderSizeSvc/15)\Context Switches/sec
\Thread(FolderSizeSvc/16)\Context Switches/sec
\Thread(FolderSizeSvc/17)\Context Switches/sec
\Thread(FolderSizeSvc/18)\Context Switches/sec
\Thread(FolderSizeSvc/19)\Context Switches/sec
\Thread(FolderSizeSvc/20)\Context Switches/sec
\Thread(FolderSizeSvc/21)\Context Switches/sec
\Thread(FolderSizeSvc/22)\Context Switches/sec
\Thread(FolderSizeSvc/23)\Context Switches/sec
\Thread(FolderSizeSvc/24)\Context Switches/sec
\Thread(FolderSizeSvc/25)\Context Switches/sec
\Thread(FolderSizeSvc/26)\Context Switches/sec
\Thread(FolderSizeSvc/27)\Context Switches/sec
\Thread(FolderSizeSvc/28)\Context Switches/sec
\Thread(FolderSizeSvc/29)\Context Switches/sec
\Thread(FolderSizeSvc/30)\Context Switches/sec
\Thread(FolderSizeSvc/31)\Context Switches/sec
\Thread(FolderSizeSvc/32)\Context Switches/sec
\Thread(FolderSizeSvc/33)\Context Switches/sec
\Thread(FolderSizeSvc/34)\Context Switches/sec
\Thread(FolderSizeSvc/35)\Context Switches/sec
\Thread(FolderSizeSvc/36)\Context Switches/sec
\Thread(FolderSizeSvc/37)\Context Switches/sec
\Thread(FolderSizeSvc/38)\Context Switches/sec
\Thread(FolderSizeSvc/39)\Context Switches/sec
\Thread(FolderSizeSvc/40)\Context Switches/sec
\Thread(FolderSizeSvc/41)\Context Switches/sec
\Thread(FolderSizeSvc/42)\Context Switches/sec
\Thread(FolderSizeSvc/43)\Context Switches/sec
\Thread(FolderSizeSvc/44)\Context Switches/sec
\Thread(FolderSizeSvc/45)\Context Switches/sec
\Thread(FolderSizeSvc/46)\Context Switches/sec
\Thread(GSGIOSRV/0)\Context Switches/sec
\Thread(GSGIOSRV/1)\Context Switches/sec
\Thread(GSGIOSRV/2)\Context Switches/sec
\Thread(upsvc/0)\Context Switches/sec
\Thread(upsvc/1)\Context Switches/sec
\Thread(upsvc/2)\Context Switches/sec
\Thread(upsvc/3)\Context Switches/sec
\Thread(upsvc/4)\Context Switches/sec
\Thread(mdm/0)\Context Switches/sec
\Thread(mdm/1)\Context Switches/sec
\Thread(mdm/2)\Context Switches/sec
\Thread(mdm/3)\Context Switches/sec
\Thread(mdm/4)\Context Switches/sec
\Thread(rtiosrv/0)\Context Switches/sec
\Thread(rtiosrv/1)\Context Switches/sec
\Thread(rtiosrv/2)\Context Switches/sec
\Thread(rtiosrv/3)\Context Switches/sec
\Thread(ManagerClient/0)\Context Switches/sec
\Thread(ManagerClient/1)\Context Switches/sec
\Thread(sqlwriter/0)\Context Switches/sec
\Thread(sqlwriter/1)\Context Switches/sec
\Thread(sqlwriter/2)\Context Switches/sec
\Thread(vmware-usbarbitrator/0)\Context Switches/sec
\Thread(vmware-usbarbitrator/1)\Context Switches/sec
\Thread(vmnat/0)\Context Switches/sec
\Thread(vmnat/1)\Context Switches/sec
\Thread(vmnat/2)\Context Switches/sec
\Thread(vmnetdhcp/0)\Context Switches/sec
\Thread(vmnetdhcp/1)\Context Switches/sec
\Thread(vmware-authd/0)\Context Switches/sec
\Thread(vmware-authd/1)\Context Switches/sec
\Thread(vmware-authd/2)\Context Switches/sec
\Thread(vmware-authd/3)\Context Switches/sec
\Thread(vmware-authd/4)\Context Switches/sec
\Thread(vmware-authd/5)\Context Switches/sec
\Thread(vmware-authd/6)\Context Switches/sec
\Thread(explorer/0)\Context Switches/sec
\Thread(explorer/1)\Context Switches/sec
\Thread(explorer/2)\Context Switches/sec
\Thread(explorer/3)\Context Switches/sec
\Thread(explorer/4)\Context Switches/sec
\Thread(explorer/5)\Context Switches/sec
\Thread(explorer/6)\Context Switches/sec
\Thread(explorer/7)\Context Switches/sec
\Thread(explorer/8)\Context Switches/sec
\Thread(explorer/9)\Context Switches/sec
\Thread(explorer/10)\Context Switches/sec
\Thread(explorer/11)\Context Switches/sec
\Thread(explorer/12)\Context Switches/sec
\Thread(explorer/13)\Context Switches/sec
\Thread(explorer/14)\Context Switches/sec
\Thread(explorer/15)\Context Switches/sec
\Thread(explorer/16)\Context Switches/sec
\Thread(explorer/17)\Context Switches/sec
\Thread(explorer/18)\Context Switches/sec
\Thread(explorer/19)\Context Switches/sec
\Thread(explorer/20)\Context Switches/sec
\Thread(explorer/21)\Context Switches/sec
\Thread(explorer/22)\Context Switches/sec
\Thread(TSVNCache/0)\Context Switches/sec
\Thread(TSVNCache/1)\Context Switches/sec
\Thread(TSVNCache/2)\Context Switches/sec
\Thread(TSVNCache/3)\Context Switches/sec
\Thread(TSVNCache/4)\Context Switches/sec
\Thread(TSVNCache/5)\Context Switches/sec
\Thread(TSVNCache/6)\Context Switches/sec
\Thread(TSVNCache/7)\Context Switches/sec
\Thread(TSVNCache/8)\Context Switches/sec
\Thread(TSVNCache/9)\Context Switches/sec
\Thread(TSVNCache/10)\Context Switches/sec
\Thread(igfxtray/0)\Context Switches/sec
\Thread(igfxtray/1)\Context Switches/sec
\Thread(hkcmd/0)\Context Switches/sec
\Thread(hkcmd/1)\Context Switches/sec
\Thread(hkcmd/2)\Context Switches/sec
\Thread(igfxpers/0)\Context Switches/sec
\Thread(igfxpers/1)\Context Switches/sec
\Thread(KSafeTray/0)\Context Switches/sec
\Thread(KSafeTray/1)\Context Switches/sec
\Thread(KSafeTray/2)\Context Switches/sec
\Thread(KSafeTray/3)\Context Switches/sec
\Thread(KSafeTray/4)\Context Switches/sec
\Thread(KSafeTray/5)\Context Switches/sec
\Thread(KSafeTray/6)\Context Switches/sec
\Thread(KSafeTray/7)\Context Switches/sec
\Thread(KSafeTray/8)\Context Switches/sec
\Thread(KSafeTray/9)\Context Switches/sec
\Thread(KSafeTray/10)\Context Switches/sec
\Thread(KSafeTray/11)\Context Switches/sec
\Thread(KSafeTray/12)\Context Switches/sec
\Thread(KSafeTray/13)\Context Switches/sec
\Thread(KSafeTray/14)\Context Switches/sec
\Thread(KSafeTray/15)\Context Switches/sec
\Thread(KSafeTray/16)\Context Switches/sec
\Thread(KSafeTray/17)\Context Switches/sec
\Thread(KSafeTray/18)\Context Switches/sec
\Thread(KSafeTray/19)\Context Switches/sec
\Thread(KSafeTray/20)\Context Switches/sec
\Thread(KSafeTray/21)\Context Switches/sec
\Thread(KSafeTray/22)\Context Switches/sec
\Thread(KSafeTray/23)\Context Switches/sec
\Thread(kxetray/0)\Context Switches/sec
\Thread(kxetray/1)\Context Switches/sec
\Thread(kxetray/2)\Context Switches/sec
\Thread(kxetray/3)\Context Switches/sec
\Thread(kxetray/4)\Context Switches/sec
\Thread(kxetray/5)\Context Switches/sec
\Thread(kxetray/6)\Context Switches/sec
\Thread(kxetray/7)\Context Switches/sec
\Thread(kxetray/8)\Context Switches/sec
\Thread(kxetray/9)\Context Switches/sec
\Thread(kxetray/10)\Context Switches/sec
\Thread(kxetray/11)\Context Switches/sec
\Thread(kxetray/12)\Context Switches/sec
\Thread(kxetray/13)\Context Switches/sec
\Thread(kxetray/14)\Context Switches/sec
\Thread(kxetray/15)\Context Switches/sec
\Thread(kxetray/16)\Context Switches/sec
\Thread(kxetray/17)\Context Switches/sec
\Thread(kxetray/18)\Context Switches/sec
\Thread(kxetray/19)\Context Switches/sec
\Thread(kxetray/20)\Context Switches/sec
\Thread(kxetray/21)\Context Switches/sec
\Thread(kxetray/22)\Context Switches/sec
\Thread(kxetray/23)\Context Switches/sec
\Thread(igfxsrvc/0)\Context Switches/sec
\Thread(igfxsrvc/1)\Context Switches/sec
\Thread(igfxsrvc/2)\Context Switches/sec
\Thread(igfxsrvc/3)\Context Switches/sec
\Thread(Ext2Mgr/0)\Context Switches/sec
\Thread(RTHDCPL/0)\Context Switches/sec
\Thread(RTHDCPL/1)\Context Switches/sec
\Thread(RTHDCPL/2)\Context Switches/sec
\Thread(RTHDCPL/3)\Context Switches/sec
\Thread(OfficeIM/0)\Context Switches/sec
\Thread(OfficeIM/1)\Context Switches/sec
\Thread(OfficeIM/2)\Context Switches/sec
\Thread(OfficeIM/3)\Context Switches/sec
\Thread(OfficeIM/4)\Context Switches/sec
\Thread(OfficeIM/5)\Context Switches/sec
\Thread(OfficeIM/6)\Context Switches/sec
\Thread(OfficeIM/7)\Context Switches/sec
\Thread(OfficeIM/8)\Context Switches/sec
\Thread(OfficeIM/9)\Context Switches/sec
\Thread(OfficeIM/10)\Context Switches/sec
\Thread(OfficeIM/11)\Context Switches/sec
\Thread(OfficeIM/12)\Context Switches/sec
\Thread(OfficeIM/13)\Context Switches/sec
\Thread(OfficeIM/14)\Context Switches/sec
\Thread(vmware-tray/0)\Context Switches/sec
\Thread(vmware-tray/1)\Context Switches/sec
\Thread(vmware-tray/2)\Context Switches/sec
\Thread(msnmsgr/0)\Context Switches/sec
\Thread(msnmsgr/1)\Context Switches/sec
\Thread(msnmsgr/2)\Context Switches/sec
\Thread(msnmsgr/3)\Context Switches/sec
\Thread(msnmsgr/4)\Context Switches/sec
\Thread(msnmsgr/5)\Context Switches/sec
\Thread(msnmsgr/6)\Context Switches/sec
\Thread(msnmsgr/7)\Context Switches/sec
\Thread(msnmsgr/8)\Context Switches/sec
\Thread(msnmsgr/9)\Context Switches/sec
\Thread(msnmsgr/10)\Context Switches/sec
\Thread(msnmsgr/11)\Context Switches/sec
\Thread(msnmsgr/12)\Context Switches/sec
\Thread(msnmsgr/13)\Context Switches/sec
\Thread(msnmsgr/14)\Context Switches/sec
\Thread(msnmsgr/15)\Context Switches/sec
\Thread(msnmsgr/16)\Context Switches/sec
\Thread(msnmsgr/17)\Context Switches/sec
\Thread(msnmsgr/18)\Context Switches/sec
\Thread(msnmsgr/19)\Context Switches/sec
\Thread(msnmsgr/20)\Context Switches/sec
\Thread(msnmsgr/21)\Context Switches/sec
\Thread(msnmsgr/22)\Context Switches/sec
\Thread(msnmsgr/23)\Context Switches/sec
\Thread(msnmsgr/24)\Context Switches/sec
\Thread(msnmsgr/25)\Context Switches/sec
\Thread(msnmsgr/26)\Context Switches/sec
\Thread(msnmsgr/27)\Context Switches/sec
\Thread(msnmsgr/28)\Context Switches/sec
\Thread(msnmsgr/29)\Context Switches/sec
\Thread(msnmsgr/30)\Context Switches/sec
\Thread(msnmsgr/31)\Context Switches/sec
\Thread(msnmsgr/32)\Context Switches/sec
\Thread(msnmsgr/33)\Context Switches/sec
\Thread(msnmsgr/34)\Context Switches/sec
\Thread(msnmsgr/35)\Context Switches/sec
\Thread(msnmsgr/36)\Context Switches/sec
\Thread(msnmsgr/37)\Context Switches/sec
\Thread(msnmsgr/38)\Context Switches/sec
\Thread(msnmsgr/39)\Context Switches/sec
\Thread(ctfmon/0)\Context Switches/sec
\Thread(VVCap/0)\Context Switches/sec
\Thread(VVCap/1)\Context Switches/sec
\Thread(wlcomm/0)\Context Switches/sec
\Thread(wlcomm/1)\Context Switches/sec
\Thread(wlcomm/2)\Context Switches/sec
\Thread(wlcomm/3)\Context Switches/sec
\Thread(wlcomm/4)\Context Switches/sec
\Thread(wlcomm/5)\Context Switches/sec
\Thread(wlcomm/6)\Context Switches/sec
\Thread(wlcomm/7)\Context Switches/sec
\Thread(wlcomm/8)\Context Switches/sec
\Thread(wlcomm/9)\Context Switches/sec
\Thread(wlcomm/10)\Context Switches/sec
\Thread(wlcomm/11)\Context Switches/sec
\Thread(wlcomm/12)\Context Switches/sec
\Thread(wlcomm/13)\Context Switches/sec
\Thread(wlcomm/14)\Context Switches/sec
\Thread(WPFFontCache_v0400/0)\Context Switches/sec
\Thread(WPFFontCache_v0400/1)\Context Switches/sec
\Thread(WPFFontCache_v0400/2)\Context Switches/sec
\Thread(WPFFontCache_v0400/3)\Context Switches/sec
\Thread(WPFFontCache_v0400/4)\Context Switches/sec
\Thread(WPFFontCache_v0400/5)\Context Switches/sec
\Thread(WPFFontCache_v0400/6)\Context Switches/sec
\Thread(KuGoo/0)\Context Switches/sec
\Thread(KuGoo/1)\Context Switches/sec
\Thread(KuGoo/2)\Context Switches/sec
\Thread(KuGoo/3)\Context Switches/sec
\Thread(KuGoo/4)\Context Switches/sec
\Thread(KuGoo/5)\Context Switches/sec
\Thread(KuGoo/6)\Context Switches/sec
\Thread(KuGoo/7)\Context Switches/sec
\Thread(KuGoo/8)\Context Switches/sec
\Thread(KuGoo/9)\Context Switches/sec
\Thread(KuGoo/10)\Context Switches/sec
\Thread(KuGoo/11)\Context Switches/sec
\Thread(KuGoo/12)\Context Switches/sec
\Thread(KuGoo/13)\Context Switches/sec
\Thread(KuGoo/14)\Context Switches/sec
\Thread(KuGoo/15)\Context Switches/sec
\Thread(KuGoo/16)\Context Switches/sec
\Thread(KuGoo/17)\Context Switches/sec
\Thread(KuGoo/18)\Context Switches/sec
\Thread(KuGoo/19)\Context Switches/sec
\Thread(KuGoo/20)\Context Switches/sec
\Thread(KuGoo/21)\Context Switches/sec
\Thread(KuGoo/22)\Context Switches/sec
\Thread(KuGoo/23)\Context Switches/sec
\Thread(KuGoo/24)\Context Switches/sec
\Thread(KuGoo/25)\Context Switches/sec
\Thread(KuGoo/26)\Context Switches/sec
\Thread(KuGoo/27)\Context Switches/sec
\Thread(KuGoo/28)\Context Switches/sec
\Thread(KuGoo/29)\Context Switches/sec
\Thread(KuGoo/30)\Context Switches/sec
\Thread(KuGoo/31)\Context Switches/sec
\Thread(KuGoo/32)\Context Switches/sec
\Thread(KuGoo/33)\Context Switches/sec
\Thread(KuGoo/34)\Context Switches/sec
\Thread(KuGoo/35)\Context Switches/sec
\Thread(KuGoo/36)\Context Switches/sec
\Thread(KuGoo/37)\Context Switches/sec
\Thread(KuGoo/38)\Context Switches/sec
\Thread(KuGoo/39)\Context Switches/sec
\Thread(KuGoo/40)\Context Switches/sec
\Thread(KuGoo/41)\Context Switches/sec
\Thread(KuGoo/42)\Context Switches/sec
\Thread(KuGoo/43)\Context Switches/sec
\Thread(KuGoo/44)\Context Switches/sec
\Thread(KuGoo/45)\Context Switches/sec
\Thread(KuGoo/46)\Context Switches/sec
\Thread(KuGoo/47)\Context Switches/sec
\Thread(KuGoo/48)\Context Switches/sec
\Thread(KuGoo/49)\Context Switches/sec
\Thread(KuGoo/50)\Context Switches/sec
\Thread(KuGoo/51)\Context Switches/sec
\Thread(KuGoo/52)\Context Switches/sec
\Thread(KuGoo/53)\Context Switches/sec
\Thread(KuGoo/54)\Context Switches/sec
\Thread(KuGoo/55)\Context Switches/sec
\Thread(KuGoo/56)\Context Switches/sec
\Thread(KuGoo/57)\Context Switches/sec
\Thread(KuGoo/58)\Context Switches/sec
\Thread(KuGoo/59)\Context Switches/sec
\Thread(firefox/0)\Context Switches/sec
\Thread(firefox/1)\Context Switches/sec
\Thread(firefox/2)\Context Switches/sec
\Thread(firefox/3)\Context Switches/sec
\Thread(firefox/4)\Context Switches/sec
\Thread(firefox/5)\Context Switches/sec
\Thread(firefox/6)\Context Switches/sec
\Thread(firefox/7)\Context Switches/sec
\Thread(firefox/8)\Context Switches/sec
\Thread(firefox/9)\Context Switches/sec
\Thread(firefox/10)\Context Switches/sec
\Thread(firefox/11)\Context Switches/sec
\Thread(firefox/12)\Context Switches/sec
\Thread(firefox/13)\Context Switches/sec
\Thread(firefox/14)\Context Switches/sec
\Thread(firefox/15)\Context Switches/sec
\Thread(firefox/16)\Context Switches/sec
\Thread(firefox/17)\Context Switches/sec
\Thread(firefox/18)\Context Switches/sec
\Thread(firefox/19)\Context Switches/sec
\Thread(firefox/20)\Context Switches/sec
\Thread(firefox/21)\Context Switches/sec
\Thread(firefox/22)\Context Switches/sec
\Thread(firefox/23)\Context Switches/sec
\Thread(firefox/24)\Context Switches/sec
\Thread(vmware/0)\Context Switches/sec
\Thread(vmware/1)\Context Switches/sec
\Thread(vmware/2)\Context Switches/sec
\Thread(vmware/3)\Context Switches/sec
\Thread(vmware/4)\Context Switches/sec
\Thread(vmware/5)\Context Switches/sec
\Thread(vmware/6)\Context Switches/sec
\Thread(vmware/7)\Context Switches/sec
\Thread(taskmgr/0)\Context Switches/sec
\Thread(taskmgr/1)\Context Switches/sec
\Thread(taskmgr/2)\Context Switches/sec
\Thread(SshClient/0)\Context Switches/sec
\Thread(SshClient/1)\Context Switches/sec
\Thread(SshClient/2)\Context Switches/sec
\Thread(SshClient/3)\Context Switches/sec
\Thread(SshClient/4)\Context Switches/sec
\Thread(SshClient/5)\Context Switches/sec
\Thread(SshClient/6)\Context Switches/sec
\Thread(Thunder5/0)\Context Switches/sec
\Thread(Thunder5/1)\Context Switches/sec
\Thread(Thunder5/2)\Context Switches/sec
\Thread(Thunder5/3)\Context Switches/sec
\Thread(Thunder5/4)\Context Switches/sec
\Thread(Thunder5/5)\Context Switches/sec
\Thread(Thunder5/6)\Context Switches/sec
\Thread(Thunder5/7)\Context Switches/sec
\Thread(Thunder5/8)\Context Switches/sec
\Thread(Thunder5/9)\Context Switches/sec
\Thread(Thunder5/10)\Context Switches/sec
\Thread(Thunder5/11)\Context Switches/sec
\Thread(Thunder5/12)\Context Switches/sec
\Thread(Thunder5/13)\Context Switches/sec
\Thread(Thunder5/14)\Context Switches/sec
\Thread(Thunder5/15)\Context Switches/sec
\Thread(Thunder5/16)\Context Switches/sec
\Thread(Thunder5/17)\Context Switches/sec
\Thread(Thunder5/18)\Context Switches/sec
\Thread(Thunder5/19)\Context Switches/sec
\Thread(Thunder5/20)\Context Switches/sec
\Thread(Thunder5/21)\Context Switches/sec
\Thread(Thunder5/22)\Context Switches/sec
\Thread(Thunder5/23)\Context Switches/sec
\Thread(Thunder5/24)\Context Switches/sec
\Thread(Thunder5/25)\Context Switches/sec
\Thread(Thunder5/26)\Context Switches/sec
\Thread(Thunder5/27)\Context Switches/sec
\Thread(Thunder5/28)\Context Switches/sec
\Thread(Thunder5/29)\Context Switches/sec
\Thread(Thunder5/30)\Context Switches/sec
\Thread(Thunder5/31)\Context Switches/sec
\Thread(Thunder5/32)\Context Switches/sec
\Thread(Thunder5/33)\Context Switches/sec
\Thread(Thunder5/34)\Context Switches/sec
\Thread(Thunder5/35)\Context Switches/sec
\Thread(Thunder5/36)\Context Switches/sec
\Thread(Thunder5/37)\Context Switches/sec
\Thread(Thunder5/38)\Context Switches/sec
\Thread(Thunder5/39)\Context Switches/sec
\Thread(Thunder5/40)\Context Switches/sec
\Thread(Thunder5/41)\Context Switches/sec
\Thread(Thunder5/42)\Context Switches/sec
\Thread(Thunder5/43)\Context Switches/sec
\Thread(Thunder5/44)\Context Switches/sec
\Thread(Thunder5/45)\Context Switches/sec
\Thread(Thunder5/46)\Context Switches/sec
\Thread(cmd/0)\Context Switches/sec
\Thread(typeperf/0)\Context Switches/sec
\Thread(typeperf/1)\Context Switches/sec
\Thread(typeperf/2)\Context Switches/sec
\Thread(typeperf/3)\Context Switches/sec
\Thread(typeperf/4)\Context Switches/sec
\Thread(typeperf/5)\Context Switches/sec
\Thread(typeperf/6)\Context Switches/sec
\Thread(typeperf/7)\Context Switches/sec
\Thread(typeperf/8)\Context Switches/sec
\Thread(typeperf/9)\Context Switches/sec
\Thread(typeperf/10)\Context Switches/sec
\Thread(_Total/_Total)\Context Switches/sec
\Thread(Idle/0)\Elapsed Time
\Thread(Idle/1)\Elapsed Time
\Thread(System/0)\Elapsed Time
\Thread(System/1)\Elapsed Time
\Thread(System/2)\Elapsed Time
\Thread(System/3)\Elapsed Time
\Thread(System/4)\Elapsed Time
\Thread(System/5)\Elapsed Time
\Thread(System/6)\Elapsed Time
\Thread(System/7)\Elapsed Time
\Thread(System/8)\Elapsed Time
\Thread(System/9)\Elapsed Time
\Thread(System/10)\Elapsed Time
\Thread(System/11)\Elapsed Time
\Thread(System/12)\Elapsed Time
\Thread(System/13)\Elapsed Time
\Thread(System/14)\Elapsed Time
\Thread(System/15)\Elapsed Time
\Thread(System/16)\Elapsed Time
\Thread(System/17)\Elapsed Time
\Thread(System/18)\Elapsed Time
\Thread(System/19)\Elapsed Time
\Thread(System/20)\Elapsed Time
\Thread(System/21)\Elapsed Time
\Thread(System/22)\Elapsed Time
\Thread(System/23)\Elapsed Time
\Thread(System/24)\Elapsed Time
\Thread(System/25)\Elapsed Time
\Thread(System/26)\Elapsed Time
\Thread(System/27)\Elapsed Time
\Thread(System/28)\Elapsed Time
\Thread(System/29)\Elapsed Time
\Thread(System/30)\Elapsed Time
\Thread(System/31)\Elapsed Time
\Thread(System/32)\Elapsed Time
\Thread(System/33)\Elapsed Time
\Thread(System/34)\Elapsed Time
\Thread(System/35)\Elapsed Time
\Thread(System/36)\Elapsed Time
\Thread(System/37)\Elapsed Time
\Thread(System/38)\Elapsed Time
\Thread(System/39)\Elapsed Time
\Thread(System/40)\Elapsed Time
\Thread(System/41)\Elapsed Time
\Thread(System/42)\Elapsed Time
\Thread(System/43)\Elapsed Time
\Thread(System/44)\Elapsed Time
\Thread(System/45)\Elapsed Time
\Thread(System/46)\Elapsed Time
\Thread(System/47)\Elapsed Time
\Thread(System/48)\Elapsed Time
\Thread(System/49)\Elapsed Time
\Thread(System/50)\Elapsed Time
\Thread(System/51)\Elapsed Time
\Thread(System/52)\Elapsed Time
\Thread(System/53)\Elapsed Time
\Thread(System/54)\Elapsed Time
\Thread(System/55)\Elapsed Time
\Thread(System/56)\Elapsed Time
\Thread(System/57)\Elapsed Time
\Thread(System/58)\Elapsed Time
\Thread(System/59)\Elapsed Time
\Thread(System/60)\Elapsed Time
\Thread(System/61)\Elapsed Time
\Thread(System/62)\Elapsed Time
\Thread(System/63)\Elapsed Time
\Thread(System/64)\Elapsed Time
\Thread(System/65)\Elapsed Time
\Thread(System/66)\Elapsed Time
\Thread(System/67)\Elapsed Time
\Thread(System/68)\Elapsed Time
\Thread(System/69)\Elapsed Time
\Thread(System/70)\Elapsed Time
\Thread(System/71)\Elapsed Time
\Thread(System/72)\Elapsed Time
\Thread(System/73)\Elapsed Time
\Thread(System/74)\Elapsed Time
\Thread(System/75)\Elapsed Time
\Thread(System/76)\Elapsed Time
\Thread(System/77)\Elapsed Time
\Thread(System/78)\Elapsed Time
\Thread(System/79)\Elapsed Time
\Thread(System/80)\Elapsed Time
\Thread(System/81)\Elapsed Time
\Thread(System/82)\Elapsed Time
\Thread(System/83)\Elapsed Time
\Thread(System/84)\Elapsed Time
\Thread(System/85)\Elapsed Time
\Thread(System/86)\Elapsed Time
\Thread(System/87)\Elapsed Time
\Thread(System/88)\Elapsed Time
\Thread(System/89)\Elapsed Time
\Thread(System/90)\Elapsed Time
\Thread(System/91)\Elapsed Time
\Thread(System/92)\Elapsed Time
\Thread(System/93)\Elapsed Time
\Thread(System/94)\Elapsed Time
\Thread(System/95)\Elapsed Time
\Thread(System/96)\Elapsed Time
\Thread(System/97)\Elapsed Time
\Thread(smss/0)\Elapsed Time
\Thread(smss/1)\Elapsed Time
\Thread(smss/2)\Elapsed Time
\Thread(csrss/0)\Elapsed Time
\Thread(csrss/1)\Elapsed Time
\Thread(csrss/2)\Elapsed Time
\Thread(csrss/3)\Elapsed Time
\Thread(csrss/4)\Elapsed Time
\Thread(csrss/5)\Elapsed Time
\Thread(csrss/6)\Elapsed Time
\Thread(csrss/7)\Elapsed Time
\Thread(csrss/8)\Elapsed Time
\Thread(csrss/9)\Elapsed Time
\Thread(csrss/10)\Elapsed Time
\Thread(csrss/11)\Elapsed Time
\Thread(winlogon/0)\Elapsed Time
\Thread(winlogon/1)\Elapsed Time
\Thread(winlogon/2)\Elapsed Time
\Thread(winlogon/3)\Elapsed Time
\Thread(winlogon/4)\Elapsed Time
\Thread(winlogon/5)\Elapsed Time
\Thread(winlogon/6)\Elapsed Time
\Thread(winlogon/7)\Elapsed Time
\Thread(winlogon/8)\Elapsed Time
\Thread(winlogon/9)\Elapsed Time
\Thread(winlogon/10)\Elapsed Time
\Thread(winlogon/11)\Elapsed Time
\Thread(winlogon/12)\Elapsed Time
\Thread(winlogon/13)\Elapsed Time
\Thread(winlogon/14)\Elapsed Time
\Thread(winlogon/15)\Elapsed Time
\Thread(winlogon/16)\Elapsed Time
\Thread(winlogon/17)\Elapsed Time
\Thread(winlogon/18)\Elapsed Time
\Thread(winlogon/19)\Elapsed Time
\Thread(winlogon/20)\Elapsed Time
\Thread(winlogon/21)\Elapsed Time
\Thread(services/0)\Elapsed Time
\Thread(services/1)\Elapsed Time
\Thread(services/2)\Elapsed Time
\Thread(services/3)\Elapsed Time
\Thread(services/4)\Elapsed Time
\Thread(services/5)\Elapsed Time
\Thread(services/6)\Elapsed Time
\Thread(services/7)\Elapsed Time
\Thread(services/8)\Elapsed Time
\Thread(services/9)\Elapsed Time
\Thread(services/10)\Elapsed Time
\Thread(services/11)\Elapsed Time
\Thread(services/12)\Elapsed Time
\Thread(services/13)\Elapsed Time
\Thread(services/14)\Elapsed Time
\Thread(services/15)\Elapsed Time
\Thread(lsass/0)\Elapsed Time
\Thread(lsass/1)\Elapsed Time
\Thread(lsass/2)\Elapsed Time
\Thread(lsass/3)\Elapsed Time
\Thread(lsass/4)\Elapsed Time
\Thread(lsass/5)\Elapsed Time
\Thread(lsass/6)\Elapsed Time
\Thread(lsass/7)\Elapsed Time
\Thread(lsass/8)\Elapsed Time
\Thread(lsass/9)\Elapsed Time
\Thread(lsass/10)\Elapsed Time
\Thread(lsass/11)\Elapsed Time
\Thread(lsass/12)\Elapsed Time
\Thread(lsass/13)\Elapsed Time
\Thread(lsass/14)\Elapsed Time
\Thread(lsass/15)\Elapsed Time
\Thread(lsass/16)\Elapsed Time
\Thread(lsass/17)\Elapsed Time
\Thread(lsass/18)\Elapsed Time
\Thread(lsass/19)\Elapsed Time
\Thread(lsass/20)\Elapsed Time
\Thread(lsass/21)\Elapsed Time
\Thread(svchost/0)\Elapsed Time
\Thread(svchost/1)\Elapsed Time
\Thread(svchost/2)\Elapsed Time
\Thread(svchost/3)\Elapsed Time
\Thread(svchost/4)\Elapsed Time
\Thread(svchost/5)\Elapsed Time
\Thread(svchost/6)\Elapsed Time
\Thread(svchost/7)\Elapsed Time
\Thread(svchost/0)\Elapsed Time
\Thread(svchost/1)\Elapsed Time
\Thread(svchost/2)\Elapsed Time
\Thread(svchost/3)\Elapsed Time
\Thread(svchost/4)\Elapsed Time
\Thread(svchost/5)\Elapsed Time
\Thread(svchost/6)\Elapsed Time
\Thread(svchost/7)\Elapsed Time
\Thread(svchost/8)\Elapsed Time
\Thread(svchost/9)\Elapsed Time
\Thread(svchost/10)\Elapsed Time
\Thread(svchost/11)\Elapsed Time
\Thread(svchost/12)\Elapsed Time
\Thread(svchost/13)\Elapsed Time
\Thread(svchost/14)\Elapsed Time
\Thread(svchost/15)\Elapsed Time
\Thread(svchost/16)\Elapsed Time
\Thread(svchost/17)\Elapsed Time
\Thread(svchost/18)\Elapsed Time
\Thread(svchost/19)\Elapsed Time
\Thread(svchost/20)\Elapsed Time
\Thread(svchost/21)\Elapsed Time
\Thread(svchost/22)\Elapsed Time
\Thread(svchost/23)\Elapsed Time
\Thread(svchost/24)\Elapsed Time
\Thread(svchost/25)\Elapsed Time
\Thread(svchost/26)\Elapsed Time
\Thread(svchost/27)\Elapsed Time
\Thread(svchost/28)\Elapsed Time
\Thread(svchost/29)\Elapsed Time
\Thread(svchost/30)\Elapsed Time
\Thread(svchost/31)\Elapsed Time
\Thread(svchost/32)\Elapsed Time
\Thread(svchost/33)\Elapsed Time
\Thread(svchost/34)\Elapsed Time
\Thread(svchost/35)\Elapsed Time
\Thread(svchost/36)\Elapsed Time
\Thread(svchost/37)\Elapsed Time
\Thread(svchost/38)\Elapsed Time
\Thread(svchost/39)\Elapsed Time
\Thread(svchost/40)\Elapsed Time
\Thread(svchost/41)\Elapsed Time
\Thread(svchost/42)\Elapsed Time
\Thread(svchost/43)\Elapsed Time
\Thread(svchost/44)\Elapsed Time
\Thread(svchost/45)\Elapsed Time
\Thread(svchost/46)\Elapsed Time
\Thread(svchost/47)\Elapsed Time
\Thread(svchost/48)\Elapsed Time
\Thread(svchost/49)\Elapsed Time
\Thread(svchost/50)\Elapsed Time
\Thread(svchost/51)\Elapsed Time
\Thread(svchost/52)\Elapsed Time
\Thread(svchost/53)\Elapsed Time
\Thread(svchost/54)\Elapsed Time
\Thread(svchost/55)\Elapsed Time
\Thread(svchost/56)\Elapsed Time
\Thread(svchost/57)\Elapsed Time
\Thread(svchost/58)\Elapsed Time
\Thread(svchost/59)\Elapsed Time
\Thread(svchost/60)\Elapsed Time
\Thread(svchost/61)\Elapsed Time
\Thread(svchost/62)\Elapsed Time
\Thread(svchost/63)\Elapsed Time
\Thread(svchost/64)\Elapsed Time
\Thread(svchost/65)\Elapsed Time
\Thread(svchost/66)\Elapsed Time
\Thread(svchost/67)\Elapsed Time
\Thread(svchost/68)\Elapsed Time
\Thread(svchost/69)\Elapsed Time
\Thread(svchost/70)\Elapsed Time
\Thread(svchost/0)\Elapsed Time
\Thread(svchost/1)\Elapsed Time
\Thread(svchost/2)\Elapsed Time
\Thread(svchost/3)\Elapsed Time
\Thread(svchost/4)\Elapsed Time
\Thread(svchost/5)\Elapsed Time
\Thread(svchost/0)\Elapsed Time
\Thread(svchost/1)\Elapsed Time
\Thread(svchost/2)\Elapsed Time
\Thread(svchost/3)\Elapsed Time
\Thread(svchost/4)\Elapsed Time
\Thread(svchost/5)\Elapsed Time
\Thread(svchost/6)\Elapsed Time
\Thread(svchost/7)\Elapsed Time
\Thread(svchost/8)\Elapsed Time
\Thread(svchost/9)\Elapsed Time
\Thread(svchost/10)\Elapsed Time
\Thread(svchost/11)\Elapsed Time
\Thread(svchost/12)\Elapsed Time
\Thread(svchost/13)\Elapsed Time
\Thread(svchost/14)\Elapsed Time
\Thread(svchost/0)\Elapsed Time
\Thread(svchost/1)\Elapsed Time
\Thread(svchost/2)\Elapsed Time
\Thread(svchost/3)\Elapsed Time
\Thread(svchost/4)\Elapsed Time
\Thread(kxedefend/0)\Elapsed Time
\Thread(kxedefend/1)\Elapsed Time
\Thread(kxedefend/2)\Elapsed Time
\Thread(kxedefend/3)\Elapsed Time
\Thread(kxedefend/4)\Elapsed Time
\Thread(kxedefend/5)\Elapsed Time
\Thread(kxedefend/6)\Elapsed Time
\Thread(kxedefend/7)\Elapsed Time
\Thread(kxedefend/8)\Elapsed Time
\Thread(kxedefend/9)\Elapsed Time
\Thread(kxedefend/10)\Elapsed Time
\Thread(kxedefend/11)\Elapsed Time
\Thread(kxedefend/12)\Elapsed Time
\Thread(kxedefend/13)\Elapsed Time
\Thread(kxedefend/14)\Elapsed Time
\Thread(kxedefend/15)\Elapsed Time
\Thread(kxedefend/16)\Elapsed Time
\Thread(kxedefend/17)\Elapsed Time
\Thread(kxedefend/18)\Elapsed Time
\Thread(kxedefend/19)\Elapsed Time
\Thread(kxedefend/20)\Elapsed Time
\Thread(kxedefend/21)\Elapsed Time
\Thread(kxedefend/22)\Elapsed Time
\Thread(kxedefend/23)\Elapsed Time
\Thread(kxedefend/24)\Elapsed Time
\Thread(kxedefend/25)\Elapsed Time
\Thread(kxedefend/26)\Elapsed Time
\Thread(kxedefend/27)\Elapsed Time
\Thread(kxescore/0)\Elapsed Time
\Thread(kxescore/1)\Elapsed Time
\Thread(kxescore/2)\Elapsed Time
\Thread(kxescore/3)\Elapsed Time
\Thread(kxescore/4)\Elapsed Time
\Thread(kxescore/5)\Elapsed Time
\Thread(kxescore/6)\Elapsed Time
\Thread(kxescore/7)\Elapsed Time
\Thread(kxescore/8)\Elapsed Time
\Thread(kxescore/9)\Elapsed Time
\Thread(kxescore/10)\Elapsed Time
\Thread(kxescore/11)\Elapsed Time
\Thread(kxescore/12)\Elapsed Time
\Thread(kxescore/13)\Elapsed Time
\Thread(kxescore/14)\Elapsed Time
\Thread(kxescore/15)\Elapsed Time
\Thread(kxescore/16)\Elapsed Time
\Thread(kxescore/17)\Elapsed Time
\Thread(kxescore/18)\Elapsed Time
\Thread(kxescore/19)\Elapsed Time
\Thread(kxescore/20)\Elapsed Time
\Thread(kxescore/21)\Elapsed Time
\Thread(kxescore/22)\Elapsed Time
\Thread(kxescore/23)\Elapsed Time
\Thread(kxescore/24)\Elapsed Time
\Thread(kxescore/25)\Elapsed Time
\Thread(kxescore/26)\Elapsed Time
\Thread(kxescore/27)\Elapsed Time
\Thread(kxescore/28)\Elapsed Time
\Thread(kxescore/29)\Elapsed Time
\Thread(kxescore/30)\Elapsed Time
\Thread(kxescore/31)\Elapsed Time
\Thread(kxescore/32)\Elapsed Time
\Thread(kxescore/33)\Elapsed Time
\Thread(kxescore/34)\Elapsed Time
\Thread(kxescore/35)\Elapsed Time
\Thread(kxescore/36)\Elapsed Time
\Thread(kxescore/37)\Elapsed Time
\Thread(kxescore/38)\Elapsed Time
\Thread(kxescore/39)\Elapsed Time
\Thread(kxescore/40)\Elapsed Time
\Thread(kxescore/41)\Elapsed Time
\Thread(kxescore/42)\Elapsed Time
\Thread(kxescore/43)\Elapsed Time
\Thread(kxescore/44)\Elapsed Time
\Thread(kxescore/45)\Elapsed Time
\Thread(kxescore/46)\Elapsed Time
\Thread(kxescore/47)\Elapsed Time
\Thread(kxescore/48)\Elapsed Time
\Thread(kxescore/49)\Elapsed Time
\Thread(kxescore/50)\Elapsed Time
\Thread(kxescore/51)\Elapsed Time
\Thread(kxescore/52)\Elapsed Time
\Thread(kxescore/53)\Elapsed Time
\Thread(kxescore/54)\Elapsed Time
\Thread(kxescore/55)\Elapsed Time
\Thread(kxescore/56)\Elapsed Time
\Thread(kxescore/57)\Elapsed Time
\Thread(kxescore/58)\Elapsed Time
\Thread(kxescore/59)\Elapsed Time
\Thread(kxescore/60)\Elapsed Time
\Thread(KSafeSvc/0)\Elapsed Time
\Thread(KSafeSvc/1)\Elapsed Time
\Thread(KSafeSvc/2)\Elapsed Time
\Thread(KSafeSvc/3)\Elapsed Time
\Thread(KSafeSvc/4)\Elapsed Time
\Thread(KSafeSvc/5)\Elapsed Time
\Thread(KSafeSvc/6)\Elapsed Time
\Thread(KSafeSvc/7)\Elapsed Time
\Thread(KSafeSvc/8)\Elapsed Time
\Thread(KSafeSvc/9)\Elapsed Time
\Thread(KSafeSvc/10)\Elapsed Time
\Thread(KSafeSvc/11)\Elapsed Time
\Thread(KSafeSvc/12)\Elapsed Time
\Thread(KSafeSvc/13)\Elapsed Time
\Thread(KSafeSvc/14)\Elapsed Time
\Thread(KSafeSvc/15)\Elapsed Time
\Thread(KSafeSvc/16)\Elapsed Time
\Thread(KSafeSvc/17)\Elapsed Time
\Thread(KSafeSvc/18)\Elapsed Time
\Thread(KSafeSvc/19)\Elapsed Time
\Thread(KSafeSvc/20)\Elapsed Time
\Thread(KSafeSvc/21)\Elapsed Time
\Thread(KSafeSvc/22)\Elapsed Time
\Thread(KSafeSvc/23)\Elapsed Time
\Thread(KSafeSvc/24)\Elapsed Time
\Thread(KSafeSvc/25)\Elapsed Time
\Thread(KSafeSvc/26)\Elapsed Time
\Thread(KSafeSvc/27)\Elapsed Time
\Thread(KSafeSvc/28)\Elapsed Time
\Thread(KSafeSvc/29)\Elapsed Time
\Thread(KSafeSvc/30)\Elapsed Time
\Thread(KSafeSvc/31)\Elapsed Time
\Thread(KSafeSvc/32)\Elapsed Time
\Thread(KSafeSvc/33)\Elapsed Time
\Thread(KSafeSvc/34)\Elapsed Time
\Thread(KSafeSvc/35)\Elapsed Time
\Thread(KSafeSvc/36)\Elapsed Time
\Thread(KSafeSvc/37)\Elapsed Time
\Thread(KSafeSvc/38)\Elapsed Time
\Thread(KSafeSvc/39)\Elapsed Time
\Thread(KSafeSvc/40)\Elapsed Time
\Thread(KSafeSvc/41)\Elapsed Time
\Thread(KSafeSvc/42)\Elapsed Time
\Thread(KSafeSvc/43)\Elapsed Time
\Thread(KSafeSvc/44)\Elapsed Time
\Thread(KSafeSvc/45)\Elapsed Time
\Thread(KSafeSvc/46)\Elapsed Time
\Thread(KSafeSvc/47)\Elapsed Time
\Thread(KSafeSvc/48)\Elapsed Time
\Thread(KSafeSvc/49)\Elapsed Time
\Thread(KSafeSvc/50)\Elapsed Time
\Thread(KSafeSvc/51)\Elapsed Time
\Thread(KSafeSvc/52)\Elapsed Time
\Thread(KSafeSvc/53)\Elapsed Time
\Thread(kxesapp/0)\Elapsed Time
\Thread(kxesapp/1)\Elapsed Time
\Thread(kxesapp/2)\Elapsed Time
\Thread(kxesapp/3)\Elapsed Time
\Thread(kxesapp/4)\Elapsed Time
\Thread(kxesapp/5)\Elapsed Time
\Thread(kxesapp/6)\Elapsed Time
\Thread(kxesapp/7)\Elapsed Time
\Thread(kxesapp/8)\Elapsed Time
\Thread(kxesapp/9)\Elapsed Time
\Thread(kxesapp/10)\Elapsed Time
\Thread(kxesapp/11)\Elapsed Time
\Thread(kxesapp/12)\Elapsed Time
\Thread(kxesapp/13)\Elapsed Time
\Thread(kxesapp/14)\Elapsed Time
\Thread(kxesapp/15)\Elapsed Time
\Thread(kxesapp/16)\Elapsed Time
\Thread(kxesapp/17)\Elapsed Time
\Thread(kxesapp/18)\Elapsed Time
\Thread(kxesapp/19)\Elapsed Time
\Thread(kxesapp/20)\Elapsed Time
\Thread(kxesapp/21)\Elapsed Time
\Thread(kxesapp/22)\Elapsed Time
\Thread(spoolsv/0)\Elapsed Time
\Thread(spoolsv/1)\Elapsed Time
\Thread(spoolsv/2)\Elapsed Time
\Thread(spoolsv/3)\Elapsed Time
\Thread(spoolsv/4)\Elapsed Time
\Thread(spoolsv/5)\Elapsed Time
\Thread(spoolsv/6)\Elapsed Time
\Thread(spoolsv/7)\Elapsed Time
\Thread(spoolsv/8)\Elapsed Time
\Thread(spoolsv/9)\Elapsed Time
\Thread(spoolsv/10)\Elapsed Time
\Thread(spoolsv/11)\Elapsed Time
\Thread(spoolsv/12)\Elapsed Time
\Thread(spoolsv/13)\Elapsed Time
\Thread(alg/0)\Elapsed Time
\Thread(alg/1)\Elapsed Time
\Thread(alg/2)\Elapsed Time
\Thread(alg/3)\Elapsed Time
\Thread(alg/4)\Elapsed Time
\Thread(AsistService/0)\Elapsed Time
\Thread(AsistService/1)\Elapsed Time
\Thread(AsistService/2)\Elapsed Time
\Thread(DSRSvc/0)\Elapsed Time
\Thread(DSRSvc/1)\Elapsed Time
\Thread(DSRSvc/2)\Elapsed Time
\Thread(DSRSvc/3)\Elapsed Time
\Thread(DSRSvc/4)\Elapsed Time
\Thread(DSRSvc/5)\Elapsed Time
\Thread(DSRSvc/6)\Elapsed Time
\Thread(DSRSvc/7)\Elapsed Time
\Thread(DSRSvc/8)\Elapsed Time
\Thread(DSRSvc/9)\Elapsed Time
\Thread(DSRSvc/10)\Elapsed Time
\Thread(DSRSvc/11)\Elapsed Time
\Thread(DSRSvc/12)\Elapsed Time
\Thread(FolderSizeSvc/0)\Elapsed Time
\Thread(FolderSizeSvc/1)\Elapsed Time
\Thread(FolderSizeSvc/2)\Elapsed Time
\Thread(FolderSizeSvc/3)\Elapsed Time
\Thread(FolderSizeSvc/4)\Elapsed Time
\Thread(FolderSizeSvc/5)\Elapsed Time
\Thread(FolderSizeSvc/6)\Elapsed Time
\Thread(FolderSizeSvc/7)\Elapsed Time
\Thread(FolderSizeSvc/8)\Elapsed Time
\Thread(FolderSizeSvc/9)\Elapsed Time
\Thread(FolderSizeSvc/10)\Elapsed Time
\Thread(FolderSizeSvc/11)\Elapsed Time
\Thread(FolderSizeSvc/12)\Elapsed Time
\Thread(FolderSizeSvc/13)\Elapsed Time
\Thread(FolderSizeSvc/14)\Elapsed Time
\Thread(FolderSizeSvc/15)\Elapsed Time
\Thread(FolderSizeSvc/16)\Elapsed Time
\Thread(FolderSizeSvc/17)\Elapsed Time
\Thread(FolderSizeSvc/18)\Elapsed Time
\Thread(FolderSizeSvc/19)\Elapsed Time
\Thread(FolderSizeSvc/20)\Elapsed Time
\Thread(FolderSizeSvc/21)\Elapsed Time
\Thread(FolderSizeSvc/22)\Elapsed Time
\Thread(FolderSizeSvc/23)\Elapsed Time
\Thread(FolderSizeSvc/24)\Elapsed Time
\Thread(FolderSizeSvc/25)\Elapsed Time
\Thread(FolderSizeSvc/26)\Elapsed Time
\Thread(FolderSizeSvc/27)\Elapsed Time
\Thread(FolderSizeSvc/28)\Elapsed Time
\Thread(FolderSizeSvc/29)\Elapsed Time
\Thread(FolderSizeSvc/30)\Elapsed Time
\Thread(FolderSizeSvc/31)\Elapsed Time
\Thread(FolderSizeSvc/32)\Elapsed Time
\Thread(FolderSizeSvc/33)\Elapsed Time
\Thread(FolderSizeSvc/34)\Elapsed Time
\Thread(FolderSizeSvc/35)\Elapsed Time
\Thread(FolderSizeSvc/36)\Elapsed Time
\Thread(FolderSizeSvc/37)\Elapsed Time
\Thread(FolderSizeSvc/38)\Elapsed Time
\Thread(FolderSizeSvc/39)\Elapsed Time
\Thread(FolderSizeSvc/40)\Elapsed Time
\Thread(FolderSizeSvc/41)\Elapsed Time
\Thread(FolderSizeSvc/42)\Elapsed Time
\Thread(FolderSizeSvc/43)\Elapsed Time
\Thread(FolderSizeSvc/44)\Elapsed Time
\Thread(FolderSizeSvc/45)\Elapsed Time
\Thread(FolderSizeSvc/46)\Elapsed Time
\Thread(GSGIOSRV/0)\Elapsed Time
\Thread(GSGIOSRV/1)\Elapsed Time
\Thread(GSGIOSRV/2)\Elapsed Time
\Thread(upsvc/0)\Elapsed Time
\Thread(upsvc/1)\Elapsed Time
\Thread(upsvc/2)\Elapsed Time
\Thread(upsvc/3)\Elapsed Time
\Thread(upsvc/4)\Elapsed Time
\Thread(mdm/0)\Elapsed Time
\Thread(mdm/1)\Elapsed Time
\Thread(mdm/2)\Elapsed Time
\Thread(mdm/3)\Elapsed Time
\Thread(mdm/4)\Elapsed Time
\Thread(rtiosrv/0)\Elapsed Time
\Thread(rtiosrv/1)\Elapsed Time
\Thread(rtiosrv/2)\Elapsed Time
\Thread(rtiosrv/3)\Elapsed Time
\Thread(ManagerClient/0)\Elapsed Time
\Thread(ManagerClient/1)\Elapsed Time
\Thread(sqlwriter/0)\Elapsed Time
\Thread(sqlwriter/1)\Elapsed Time
\Thread(sqlwriter/2)\Elapsed Time
\Thread(vmware-usbarbitrator/0)\Elapsed Time
\Thread(vmware-usbarbitrator/1)\Elapsed Time
\Thread(vmnat/0)\Elapsed Time
\Thread(vmnat/1)\Elapsed Time
\Thread(vmnat/2)\Elapsed Time
\Thread(vmnetdhcp/0)\Elapsed Time
\Thread(vmnetdhcp/1)\Elapsed Time
\Thread(vmware-authd/0)\Elapsed Time
\Thread(vmware-authd/1)\Elapsed Time
\Thread(vmware-authd/2)\Elapsed Time
\Thread(vmware-authd/3)\Elapsed Time
\Thread(vmware-authd/4)\Elapsed Time
\Thread(vmware-authd/5)\Elapsed Time
\Thread(vmware-authd/6)\Elapsed Time
\Thread(explorer/0)\Elapsed Time
\Thread(explorer/1)\Elapsed Time
\Thread(explorer/2)\Elapsed Time
\Thread(explorer/3)\Elapsed Time
\Thread(explorer/4)\Elapsed Time
\Thread(explorer/5)\Elapsed Time
\Thread(explorer/6)\Elapsed Time
\Thread(explorer/7)\Elapsed Time
\Thread(explorer/8)\Elapsed Time
\Thread(explorer/9)\Elapsed Time
\Thread(explorer/10)\Elapsed Time
\Thread(explorer/11)\Elapsed Time
\Thread(explorer/12)\Elapsed Time
\Thread(explorer/13)\Elapsed Time
\Thread(explorer/14)\Elapsed Time
\Thread(explorer/15)\Elapsed Time
\Thread(explorer/16)\Elapsed Time
\Thread(explorer/17)\Elapsed Time
\Thread(explorer/18)\Elapsed Time
\Thread(explorer/19)\Elapsed Time
\Thread(explorer/20)\Elapsed Time
\Thread(explorer/21)\Elapsed Time
\Thread(explorer/22)\Elapsed Time
\Thread(TSVNCache/0)\Elapsed Time
\Thread(TSVNCache/1)\Elapsed Time
\Thread(TSVNCache/2)\Elapsed Time
\Thread(TSVNCache/3)\Elapsed Time
\Thread(TSVNCache/4)\Elapsed Time
\Thread(TSVNCache/5)\Elapsed Time
\Thread(TSVNCache/6)\Elapsed Time
\Thread(TSVNCache/7)\Elapsed Time
\Thread(TSVNCache/8)\Elapsed Time
\Thread(TSVNCache/9)\Elapsed Time
\Thread(TSVNCache/10)\Elapsed Time
\Thread(igfxtray/0)\Elapsed Time
\Thread(igfxtray/1)\Elapsed Time
\Thread(hkcmd/0)\Elapsed Time
\Thread(hkcmd/1)\Elapsed Time
\Thread(hkcmd/2)\Elapsed Time
\Thread(igfxpers/0)\Elapsed Time
\Thread(igfxpers/1)\Elapsed Time
\Thread(KSafeTray/0)\Elapsed Time
\Thread(KSafeTray/1)\Elapsed Time
\Thread(KSafeTray/2)\Elapsed Time
\Thread(KSafeTray/3)\Elapsed Time
\Thread(KSafeTray/4)\Elapsed Time
\Thread(KSafeTray/5)\Elapsed Time
\Thread(KSafeTray/6)\Elapsed Time
\Thread(KSafeTray/7)\Elapsed Time
\Thread(KSafeTray/8)\Elapsed Time
\Thread(KSafeTray/9)\Elapsed Time
\Thread(KSafeTray/10)\Elapsed Time
\Thread(KSafeTray/11)\Elapsed Time
\Thread(KSafeTray/12)\Elapsed Time
\Thread(KSafeTray/13)\Elapsed Time
\Thread(KSafeTray/14)\Elapsed Time
\Thread(KSafeTray/15)\Elapsed Time
\Thread(KSafeTray/16)\Elapsed Time
\Thread(KSafeTray/17)\Elapsed Time
\Thread(KSafeTray/18)\Elapsed Time
\Thread(KSafeTray/19)\Elapsed Time
\Thread(KSafeTray/20)\Elapsed Time
\Thread(KSafeTray/21)\Elapsed Time
\Thread(KSafeTray/22)\Elapsed Time
\Thread(KSafeTray/23)\Elapsed Time
\Thread(kxetray/0)\Elapsed Time
\Thread(kxetray/1)\Elapsed Time
\Thread(kxetray/2)\Elapsed Time
\Thread(kxetray/3)\Elapsed Time
\Thread(kxetray/4)\Elapsed Time
\Thread(kxetray/5)\Elapsed Time
\Thread(kxetray/6)\Elapsed Time
\Thread(kxetray/7)\Elapsed Time
\Thread(kxetray/8)\Elapsed Time
\Thread(kxetray/9)\Elapsed Time
\Thread(kxetray/10)\Elapsed Time
\Thread(kxetray/11)\Elapsed Time
\Thread(kxetray/12)\Elapsed Time
\Thread(kxetray/13)\Elapsed Time
\Thread(kxetray/14)\Elapsed Time
\Thread(kxetray/15)\Elapsed Time
\Thread(kxetray/16)\Elapsed Time
\Thread(kxetray/17)\Elapsed Time
\Thread(kxetray/18)\Elapsed Time
\Thread(kxetray/19)\Elapsed Time
\Thread(kxetray/20)\Elapsed Time
\Thread(kxetray/21)\Elapsed Time
\Thread(kxetray/22)\Elapsed Time
\Thread(kxetray/23)\Elapsed Time
\Thread(igfxsrvc/0)\Elapsed Time
\Thread(igfxsrvc/1)\Elapsed Time
\Thread(igfxsrvc/2)\Elapsed Time
\Thread(igfxsrvc/3)\Elapsed Time
\Thread(Ext2Mgr/0)\Elapsed Time
\Thread(RTHDCPL/0)\Elapsed Time
\Thread(RTHDCPL/1)\Elapsed Time
\Thread(RTHDCPL/2)\Elapsed Time
\Thread(RTHDCPL/3)\Elapsed Time
\Thread(OfficeIM/0)\Elapsed Time
\Thread(OfficeIM/1)\Elapsed Time
\Thread(OfficeIM/2)\Elapsed Time
\Thread(OfficeIM/3)\Elapsed Time
\Thread(OfficeIM/4)\Elapsed Time
\Thread(OfficeIM/5)\Elapsed Time
\Thread(OfficeIM/6)\Elapsed Time
\Thread(OfficeIM/7)\Elapsed Time
\Thread(OfficeIM/8)\Elapsed Time
\Thread(OfficeIM/9)\Elapsed Time
\Thread(OfficeIM/10)\Elapsed Time
\Thread(OfficeIM/11)\Elapsed Time
\Thread(OfficeIM/12)\Elapsed Time
\Thread(OfficeIM/13)\Elapsed Time
\Thread(OfficeIM/14)\Elapsed Time
\Thread(vmware-tray/0)\Elapsed Time
\Thread(vmware-tray/1)\Elapsed Time
\Thread(vmware-tray/2)\Elapsed Time
\Thread(msnmsgr/0)\Elapsed Time
\Thread(msnmsgr/1)\Elapsed Time
\Thread(msnmsgr/2)\Elapsed Time
\Thread(msnmsgr/3)\Elapsed Time
\Thread(msnmsgr/4)\Elapsed Time
\Thread(msnmsgr/5)\Elapsed Time
\Thread(msnmsgr/6)\Elapsed Time
\Thread(msnmsgr/7)\Elapsed Time
\Thread(msnmsgr/8)\Elapsed Time
\Thread(msnmsgr/9)\Elapsed Time
\Thread(msnmsgr/10)\Elapsed Time
\Thread(msnmsgr/11)\Elapsed Time
\Thread(msnmsgr/12)\Elapsed Time
\Thread(msnmsgr/13)\Elapsed Time
\Thread(msnmsgr/14)\Elapsed Time
\Thread(msnmsgr/15)\Elapsed Time
\Thread(msnmsgr/16)\Elapsed Time
\Thread(msnmsgr/17)\Elapsed Time
\Thread(msnmsgr/18)\Elapsed Time
\Thread(msnmsgr/19)\Elapsed Time
\Thread(msnmsgr/20)\Elapsed Time
\Thread(msnmsgr/21)\Elapsed Time
\Thread(msnmsgr/22)\Elapsed Time
\Thread(msnmsgr/23)\Elapsed Time
\Thread(msnmsgr/24)\Elapsed Time
\Thread(msnmsgr/25)\Elapsed Time
\Thread(msnmsgr/26)\Elapsed Time
\Thread(msnmsgr/27)\Elapsed Time
\Thread(msnmsgr/28)\Elapsed Time
\Thread(msnmsgr/29)\Elapsed Time
\Thread(msnmsgr/30)\Elapsed Time
\Thread(msnmsgr/31)\Elapsed Time
\Thread(msnmsgr/32)\Elapsed Time
\Thread(msnmsgr/33)\Elapsed Time
\Thread(msnmsgr/34)\Elapsed Time
\Thread(msnmsgr/35)\Elapsed Time
\Thread(msnmsgr/36)\Elapsed Time
\Thread(msnmsgr/37)\Elapsed Time
\Thread(msnmsgr/38)\Elapsed Time
\Thread(msnmsgr/39)\Elapsed Time
\Thread(ctfmon/0)\Elapsed Time
\Thread(VVCap/0)\Elapsed Time
\Thread(VVCap/1)\Elapsed Time
\Thread(wlcomm/0)\Elapsed Time
\Thread(wlcomm/1)\Elapsed Time
\Thread(wlcomm/2)\Elapsed Time
\Thread(wlcomm/3)\Elapsed Time
\Thread(wlcomm/4)\Elapsed Time
\Thread(wlcomm/5)\Elapsed Time
\Thread(wlcomm/6)\Elapsed Time
\Thread(wlcomm/7)\Elapsed Time
\Thread(wlcomm/8)\Elapsed Time
\Thread(wlcomm/9)\Elapsed Time
\Thread(wlcomm/10)\Elapsed Time
\Thread(wlcomm/11)\Elapsed Time
\Thread(wlcomm/12)\Elapsed Time
\Thread(wlcomm/13)\Elapsed Time
\Thread(wlcomm/14)\Elapsed Time
\Thread(WPFFontCache_v0400/0)\Elapsed Time
\Thread(WPFFontCache_v0400/1)\Elapsed Time
\Thread(WPFFontCache_v0400/2)\Elapsed Time
\Thread(WPFFontCache_v0400/3)\Elapsed Time
\Thread(WPFFontCache_v0400/4)\Elapsed Time
\Thread(WPFFontCache_v0400/5)\Elapsed Time
\Thread(WPFFontCache_v0400/6)\Elapsed Time
\Thread(KuGoo/0)\Elapsed Time
\Thread(KuGoo/1)\Elapsed Time
\Thread(KuGoo/2)\Elapsed Time
\Thread(KuGoo/3)\Elapsed Time
\Thread(KuGoo/4)\Elapsed Time
\Thread(KuGoo/5)\Elapsed Time
\Thread(KuGoo/6)\Elapsed Time
\Thread(KuGoo/7)\Elapsed Time
\Thread(KuGoo/8)\Elapsed Time
\Thread(KuGoo/9)\Elapsed Time
\Thread(KuGoo/10)\Elapsed Time
\Thread(KuGoo/11)\Elapsed Time
\Thread(KuGoo/12)\Elapsed Time
\Thread(KuGoo/13)\Elapsed Time
\Thread(KuGoo/14)\Elapsed Time
\Thread(KuGoo/15)\Elapsed Time
\Thread(KuGoo/16)\Elapsed Time
\Thread(KuGoo/17)\Elapsed Time
\Thread(KuGoo/18)\Elapsed Time
\Thread(KuGoo/19)\Elapsed Time
\Thread(KuGoo/20)\Elapsed Time
\Thread(KuGoo/21)\Elapsed Time
\Thread(KuGoo/22)\Elapsed Time
\Thread(KuGoo/23)\Elapsed Time
\Thread(KuGoo/24)\Elapsed Time
\Thread(KuGoo/25)\Elapsed Time
\Thread(KuGoo/26)\Elapsed Time
\Thread(KuGoo/27)\Elapsed Time
\Thread(KuGoo/28)\Elapsed Time
\Thread(KuGoo/29)\Elapsed Time
\Thread(KuGoo/30)\Elapsed Time
\Thread(KuGoo/31)\Elapsed Time
\Thread(KuGoo/32)\Elapsed Time
\Thread(KuGoo/33)\Elapsed Time
\Thread(KuGoo/34)\Elapsed Time
\Thread(KuGoo/35)\Elapsed Time
\Thread(KuGoo/36)\Elapsed Time
\Thread(KuGoo/37)\Elapsed Time
\Thread(KuGoo/38)\Elapsed Time
\Thread(KuGoo/39)\Elapsed Time
\Thread(KuGoo/40)\Elapsed Time
\Thread(KuGoo/41)\Elapsed Time
\Thread(KuGoo/42)\Elapsed Time
\Thread(KuGoo/43)\Elapsed Time
\Thread(KuGoo/44)\Elapsed Time
\Thread(KuGoo/45)\Elapsed Time
\Thread(KuGoo/46)\Elapsed Time
\Thread(KuGoo/47)\Elapsed Time
\Thread(KuGoo/48)\Elapsed Time
\Thread(KuGoo/49)\Elapsed Time
\Thread(KuGoo/50)\Elapsed Time
\Thread(KuGoo/51)\Elapsed Time
\Thread(KuGoo/52)\Elapsed Time
\Thread(KuGoo/53)\Elapsed Time
\Thread(KuGoo/54)\Elapsed Time
\Thread(KuGoo/55)\Elapsed Time
\Thread(KuGoo/56)\Elapsed Time
\Thread(KuGoo/57)\Elapsed Time
\Thread(KuGoo/58)\Elapsed Time
\Thread(KuGoo/59)\Elapsed Time
\Thread(firefox/0)\Elapsed Time
\Thread(firefox/1)\Elapsed Time
\Thread(firefox/2)\Elapsed Time
\Thread(firefox/3)\Elapsed Time
\Thread(firefox/4)\Elapsed Time
\Thread(firefox/5)\Elapsed Time
\Thread(firefox/6)\Elapsed Time
\Thread(firefox/7)\Elapsed Time
\Thread(firefox/8)\Elapsed Time
\Thread(firefox/9)\Elapsed Time
\Thread(firefox/10)\Elapsed Time
\Thread(firefox/11)\Elapsed Time
\Thread(firefox/12)\Elapsed Time
\Thread(firefox/13)\Elapsed Time
\Thread(firefox/14)\Elapsed Time
\Thread(firefox/15)\Elapsed Time
\Thread(firefox/16)\Elapsed Time
\Thread(firefox/17)\Elapsed Time
\Thread(firefox/18)\Elapsed Time
\Thread(firefox/19)\Elapsed Time
\Thread(firefox/20)\Elapsed Time
\Thread(firefox/21)\Elapsed Time
\Thread(firefox/22)\Elapsed Time
\Thread(firefox/23)\Elapsed Time
\Thread(firefox/24)\Elapsed Time
\Thread(vmware/0)\Elapsed Time
\Thread(vmware/1)\Elapsed Time
\Thread(vmware/2)\Elapsed Time
\Thread(vmware/3)\Elapsed Time
\Thread(vmware/4)\Elapsed Time
\Thread(vmware/5)\Elapsed Time
\Thread(vmware/6)\Elapsed Time
\Thread(vmware/7)\Elapsed Time
\Thread(taskmgr/0)\Elapsed Time
\Thread(taskmgr/1)\Elapsed Time
\Thread(taskmgr/2)\Elapsed Time
\Thread(SshClient/0)\Elapsed Time
\Thread(SshClient/1)\Elapsed Time
\Thread(SshClient/2)\Elapsed Time
\Thread(SshClient/3)\Elapsed Time
\Thread(SshClient/4)\Elapsed Time
\Thread(SshClient/5)\Elapsed Time
\Thread(SshClient/6)\Elapsed Time
\Thread(Thunder5/0)\Elapsed Time
\Thread(Thunder5/1)\Elapsed Time
\Thread(Thunder5/2)\Elapsed Time
\Thread(Thunder5/3)\Elapsed Time
\Thread(Thunder5/4)\Elapsed Time
\Thread(Thunder5/5)\Elapsed Time
\Thread(Thunder5/6)\Elapsed Time
\Thread(Thunder5/7)\Elapsed Time
\Thread(Thunder5/8)\Elapsed Time
\Thread(Thunder5/9)\Elapsed Time
\Thread(Thunder5/10)\Elapsed Time
\Thread(Thunder5/11)\Elapsed Time
\Thread(Thunder5/12)\Elapsed Time
\Thread(Thunder5/13)\Elapsed Time
\Thread(Thunder5/14)\Elapsed Time
\Thread(Thunder5/15)\Elapsed Time
\Thread(Thunder5/16)\Elapsed Time
\Thread(Thunder5/17)\Elapsed Time
\Thread(Thunder5/18)\Elapsed Time
\Thread(Thunder5/19)\Elapsed Time
\Thread(Thunder5/20)\Elapsed Time
\Thread(Thunder5/21)\Elapsed Time
\Thread(Thunder5/22)\Elapsed Time
\Thread(Thunder5/23)\Elapsed Time
\Thread(Thunder5/24)\Elapsed Time
\Thread(Thunder5/25)\Elapsed Time
\Thread(Thunder5/26)\Elapsed Time
\Thread(Thunder5/27)\Elapsed Time
\Thread(Thunder5/28)\Elapsed Time
\Thread(Thunder5/29)\Elapsed Time
\Thread(Thunder5/30)\Elapsed Time
\Thread(Thunder5/31)\Elapsed Time
\Thread(Thunder5/32)\Elapsed Time
\Thread(Thunder5/33)\Elapsed Time
\Thread(Thunder5/34)\Elapsed Time
\Thread(Thunder5/35)\Elapsed Time
\Thread(Thunder5/36)\Elapsed Time
\Thread(Thunder5/37)\Elapsed Time
\Thread(Thunder5/38)\Elapsed Time
\Thread(Thunder5/39)\Elapsed Time
\Thread(Thunder5/40)\Elapsed Time
\Thread(Thunder5/41)\Elapsed Time
\Thread(Thunder5/42)\Elapsed Time
\Thread(Thunder5/43)\Elapsed Time
\Thread(Thunder5/44)\Elapsed Time
\Thread(Thunder5/45)\Elapsed Time
\Thread(Thunder5/46)\Elapsed Time
\Thread(cmd/0)\Elapsed Time
\Thread(typeperf/0)\Elapsed Time
\Thread(typeperf/1)\Elapsed Time
\Thread(typeperf/2)\Elapsed Time
\Thread(typeperf/3)\Elapsed Time
\Thread(typeperf/4)\Elapsed Time
\Thread(typeperf/5)\Elapsed Time
\Thread(typeperf/6)\Elapsed Time
\Thread(typeperf/7)\Elapsed Time
\Thread(typeperf/8)\Elapsed Time
\Thread(typeperf/9)\Elapsed Time
\Thread(typeperf/10)\Elapsed Time
\Thread(_Total/_Total)\Elapsed Time
\Thread(Idle/0)\Priority Current
\Thread(Idle/1)\Priority Current
\Thread(System/0)\Priority Current
\Thread(System/1)\Priority Current
\Thread(System/2)\Priority Current
\Thread(System/3)\Priority Current
\Thread(System/4)\Priority Current
\Thread(System/5)\Priority Current
\Thread(System/6)\Priority Current
\Thread(System/7)\Priority Current
\Thread(System/8)\Priority Current
\Thread(System/9)\Priority Current
\Thread(System/10)\Priority Current
\Thread(System/11)\Priority Current
\Thread(System/12)\Priority Current
\Thread(System/13)\Priority Current
\Thread(System/14)\Priority Current
\Thread(System/15)\Priority Current
\Thread(System/16)\Priority Current
\Thread(System/17)\Priority Current
\Thread(System/18)\Priority Current
\Thread(System/19)\Priority Current
\Thread(System/20)\Priority Current
\Thread(System/21)\Priority Current
\Thread(System/22)\Priority Current
\Thread(System/23)\Priority Current
\Thread(System/24)\Priority Current
\Thread(System/25)\Priority Current
\Thread(System/26)\Priority Current
\Thread(System/27)\Priority Current
\Thread(System/28)\Priority Current
\Thread(System/29)\Priority Current
\Thread(System/30)\Priority Current
\Thread(System/31)\Priority Current
\Thread(System/32)\Priority Current
\Thread(System/33)\Priority Current
\Thread(System/34)\Priority Current
\Thread(System/35)\Priority Current
\Thread(System/36)\Priority Current
\Thread(System/37)\Priority Current
\Thread(System/38)\Priority Current
\Thread(System/39)\Priority Current
\Thread(System/40)\Priority Current
\Thread(System/41)\Priority Current
\Thread(System/42)\Priority Current
\Thread(System/43)\Priority Current
\Thread(System/44)\Priority Current
\Thread(System/45)\Priority Current
\Thread(System/46)\Priority Current
\Thread(System/47)\Priority Current
\Thread(System/48)\Priority Current
\Thread(System/49)\Priority Current
\Thread(System/50)\Priority Current
\Thread(System/51)\Priority Current
\Thread(System/52)\Priority Current
\Thread(System/53)\Priority Current
\Thread(System/54)\Priority Current
\Thread(System/55)\Priority Current
\Thread(System/56)\Priority Current
\Thread(System/57)\Priority Current
\Thread(System/58)\Priority Current
\Thread(System/59)\Priority Current
\Thread(System/60)\Priority Current
\Thread(System/61)\Priority Current
\Thread(System/62)\Priority Current
\Thread(System/63)\Priority Current
\Thread(System/64)\Priority Current
\Thread(System/65)\Priority Current
\Thread(System/66)\Priority Current
\Thread(System/67)\Priority Current
\Thread(System/68)\Priority Current
\Thread(System/69)\Priority Current
\Thread(System/70)\Priority Current
\Thread(System/71)\Priority Current
\Thread(System/72)\Priority Current
\Thread(System/73)\Priority Current
\Thread(System/74)\Priority Current
\Thread(System/75)\Priority Current
\Thread(System/76)\Priority Current
\Thread(System/77)\Priority Current
\Thread(System/78)\Priority Current
\Thread(System/79)\Priority Current
\Thread(System/80)\Priority Current
\Thread(System/81)\Priority Current
\Thread(System/82)\Priority Current
\Thread(System/83)\Priority Current
\Thread(System/84)\Priority Current
\Thread(System/85)\Priority Current
\Thread(System/86)\Priority Current
\Thread(System/87)\Priority Current
\Thread(System/88)\Priority Current
\Thread(System/89)\Priority Current
\Thread(System/90)\Priority Current
\Thread(System/91)\Priority Current
\Thread(System/92)\Priority Current
\Thread(System/93)\Priority Current
\Thread(System/94)\Priority Current
\Thread(System/95)\Priority Current
\Thread(System/96)\Priority Current
\Thread(System/97)\Priority Current
\Thread(smss/0)\Priority Current
\Thread(smss/1)\Priority Current
\Thread(smss/2)\Priority Current
\Thread(csrss/0)\Priority Current
\Thread(csrss/1)\Priority Current
\Thread(csrss/2)\Priority Current
\Thread(csrss/3)\Priority Current
\Thread(csrss/4)\Priority Current
\Thread(csrss/5)\Priority Current
\Thread(csrss/6)\Priority Current
\Thread(csrss/7)\Priority Current
\Thread(csrss/8)\Priority Current
\Thread(csrss/9)\Priority Current
\Thread(csrss/10)\Priority Current
\Thread(csrss/11)\Priority Current
\Thread(winlogon/0)\Priority Current
\Thread(winlogon/1)\Priority Current
\Thread(winlogon/2)\Priority Current
\Thread(winlogon/3)\Priority Current
\Thread(winlogon/4)\Priority Current
\Thread(winlogon/5)\Priority Current
\Thread(winlogon/6)\Priority Current
\Thread(winlogon/7)\Priority Current
\Thread(winlogon/8)\Priority Current
\Thread(winlogon/9)\Priority Current
\Thread(winlogon/10)\Priority Current
\Thread(winlogon/11)\Priority Current
\Thread(winlogon/12)\Priority Current
\Thread(winlogon/13)\Priority Current
\Thread(winlogon/14)\Priority Current
\Thread(winlogon/15)\Priority Current
\Thread(winlogon/16)\Priority Current
\Thread(winlogon/17)\Priority Current
\Thread(winlogon/18)\Priority Current
\Thread(winlogon/19)\Priority Current
\Thread(winlogon/20)\Priority Current
\Thread(winlogon/21)\Priority Current
\Thread(services/0)\Priority Current
\Thread(services/1)\Priority Current
\Thread(services/2)\Priority Current
\Thread(services/3)\Priority Current
\Thread(services/4)\Priority Current
\Thread(services/5)\Priority Current
\Thread(services/6)\Priority Current
\Thread(services/7)\Priority Current
\Thread(services/8)\Priority Current
\Thread(services/9)\Priority Current
\Thread(services/10)\Priority Current
\Thread(services/11)\Priority Current
\Thread(services/12)\Priority Current
\Thread(services/13)\Priority Current
\Thread(services/14)\Priority Current
\Thread(services/15)\Priority Current
\Thread(lsass/0)\Priority Current
\Thread(lsass/1)\Priority Current
\Thread(lsass/2)\Priority Current
\Thread(lsass/3)\Priority Current
\Thread(lsass/4)\Priority Current
\Thread(lsass/5)\Priority Current
\Thread(lsass/6)\Priority Current
\Thread(lsass/7)\Priority Current
\Thread(lsass/8)\Priority Current
\Thread(lsass/9)\Priority Current
\Thread(lsass/10)\Priority Current
\Thread(lsass/11)\Priority Current
\Thread(lsass/12)\Priority Current
\Thread(lsass/13)\Priority Current
\Thread(lsass/14)\Priority Current
\Thread(lsass/15)\Priority Current
\Thread(lsass/16)\Priority Current
\Thread(lsass/17)\Priority Current
\Thread(lsass/18)\Priority Current
\Thread(lsass/19)\Priority Current
\Thread(lsass/20)\Priority Current
\Thread(lsass/21)\Priority Current
\Thread(svchost/0)\Priority Current
\Thread(svchost/1)\Priority Current
\Thread(svchost/2)\Priority Current
\Thread(svchost/3)\Priority Current
\Thread(svchost/4)\Priority Current
\Thread(svchost/5)\Priority Current
\Thread(svchost/6)\Priority Current
\Thread(svchost/7)\Priority Current
\Thread(svchost/0)\Priority Current
\Thread(svchost/1)\Priority Current
\Thread(svchost/2)\Priority Current
\Thread(svchost/3)\Priority Current
\Thread(svchost/4)\Priority Current
\Thread(svchost/5)\Priority Current
\Thread(svchost/6)\Priority Current
\Thread(svchost/7)\Priority Current
\Thread(svchost/8)\Priority Current
\Thread(svchost/9)\Priority Current
\Thread(svchost/10)\Priority Current
\Thread(svchost/11)\Priority Current
\Thread(svchost/12)\Priority Current
\Thread(svchost/13)\Priority Current
\Thread(svchost/14)\Priority Current
\Thread(svchost/15)\Priority Current
\Thread(svchost/16)\Priority Current
\Thread(svchost/17)\Priority Current
\Thread(svchost/18)\Priority Current
\Thread(svchost/19)\Priority Current
\Thread(svchost/20)\Priority Current
\Thread(svchost/21)\Priority Current
\Thread(svchost/22)\Priority Current
\Thread(svchost/23)\Priority Current
\Thread(svchost/24)\Priority Current
\Thread(svchost/25)\Priority Current
\Thread(svchost/26)\Priority Current
\Thread(svchost/27)\Priority Current
\Thread(svchost/28)\Priority Current
\Thread(svchost/29)\Priority Current
\Thread(svchost/30)\Priority Current
\Thread(svchost/31)\Priority Current
\Thread(svchost/32)\Priority Current
\Thread(svchost/33)\Priority Current
\Thread(svchost/34)\Priority Current
\Thread(svchost/35)\Priority Current
\Thread(svchost/36)\Priority Current
\Thread(svchost/37)\Priority Current
\Thread(svchost/38)\Priority Current
\Thread(svchost/39)\Priority Current
\Thread(svchost/40)\Priority Current
\Thread(svchost/41)\Priority Current
\Thread(svchost/42)\Priority Current
\Thread(svchost/43)\Priority Current
\Thread(svchost/44)\Priority Current
\Thread(svchost/45)\Priority Current
\Thread(svchost/46)\Priority Current
\Thread(svchost/47)\Priority Current
\Thread(svchost/48)\Priority Current
\Thread(svchost/49)\Priority Current
\Thread(svchost/50)\Priority Current
\Thread(svchost/51)\Priority Current
\Thread(svchost/52)\Priority Current
\Thread(svchost/53)\Priority Current
\Thread(svchost/54)\Priority Current
\Thread(svchost/55)\Priority Current
\Thread(svchost/56)\Priority Current
\Thread(svchost/57)\Priority Current
\Thread(svchost/58)\Priority Current
\Thread(svchost/59)\Priority Current
\Thread(svchost/60)\Priority Current
\Thread(svchost/61)\Priority Current
\Thread(svchost/62)\Priority Current
\Thread(svchost/63)\Priority Current
\Thread(svchost/64)\Priority Current
\Thread(svchost/65)\Priority Current
\Thread(svchost/66)\Priority Current
\Thread(svchost/67)\Priority Current
\Thread(svchost/68)\Priority Current
\Thread(svchost/69)\Priority Current
\Thread(svchost/70)\Priority Current
\Thread(svchost/0)\Priority Current
\Thread(svchost/1)\Priority Current
\Thread(svchost/2)\Priority Current
\Thread(svchost/3)\Priority Current
\Thread(svchost/4)\Priority Current
\Thread(svchost/5)\Priority Current
\Thread(svchost/0)\Priority Current
\Thread(svchost/1)\Priority Current
\Thread(svchost/2)\Priority Current
\Thread(svchost/3)\Priority Current
\Thread(svchost/4)\Priority Current
\Thread(svchost/5)\Priority Current
\Thread(svchost/6)\Priority Current
\Thread(svchost/7)\Priority Current
\Thread(svchost/8)\Priority Current
\Thread(svchost/9)\Priority Current
\Thread(svchost/10)\Priority Current
\Thread(svchost/11)\Priority Current
\Thread(svchost/12)\Priority Current
\Thread(svchost/13)\Priority Current
\Thread(svchost/14)\Priority Current
\Thread(svchost/0)\Priority Current
\Thread(svchost/1)\Priority Current
\Thread(svchost/2)\Priority Current
\Thread(svchost/3)\Priority Current
\Thread(svchost/4)\Priority Current
\Thread(kxedefend/0)\Priority Current
\Thread(kxedefend/1)\Priority Current
\Thread(kxedefend/2)\Priority Current
\Thread(kxedefend/3)\Priority Current
\Thread(kxedefend/4)\Priority Current
\Thread(kxedefend/5)\Priority Current
\Thread(kxedefend/6)\Priority Current
\Thread(kxedefend/7)\Priority Current
\Thread(kxedefend/8)\Priority Current
\Thread(kxedefend/9)\Priority Current
\Thread(kxedefend/10)\Priority Current
\Thread(kxedefend/11)\Priority Current
\Thread(kxedefend/12)\Priority Current
\Thread(kxedefend/13)\Priority Current
\Thread(kxedefend/14)\Priority Current
\Thread(kxedefend/15)\Priority Current
\Thread(kxedefend/16)\Priority Current
\Thread(kxedefend/17)\Priority Current
\Thread(kxedefend/18)\Priority Current
\Thread(kxedefend/19)\Priority Current
\Thread(kxedefend/20)\Priority Current
\Thread(kxedefend/21)\Priority Current
\Thread(kxedefend/22)\Priority Current
\Thread(kxedefend/23)\Priority Current
\Thread(kxedefend/24)\Priority Current
\Thread(kxedefend/25)\Priority Current
\Thread(kxedefend/26)\Priority Current
\Thread(kxedefend/27)\Priority Current
\Thread(kxescore/0)\Priority Current
\Thread(kxescore/1)\Priority Current
\Thread(kxescore/2)\Priority Current
\Thread(kxescore/3)\Priority Current
\Thread(kxescore/4)\Priority Current
\Thread(kxescore/5)\Priority Current
\Thread(kxescore/6)\Priority Current
\Thread(kxescore/7)\Priority Current
\Thread(kxescore/8)\Priority Current
\Thread(kxescore/9)\Priority Current
\Thread(kxescore/10)\Priority Current
\Thread(kxescore/11)\Priority Current
\Thread(kxescore/12)\Priority Current
\Thread(kxescore/13)\Priority Current
\Thread(kxescore/14)\Priority Current
\Thread(kxescore/15)\Priority Current
\Thread(kxescore/16)\Priority Current
\Thread(kxescore/17)\Priority Current
\Thread(kxescore/18)\Priority Current
\Thread(kxescore/19)\Priority Current
\Thread(kxescore/20)\Priority Current
\Thread(kxescore/21)\Priority Current
\Thread(kxescore/22)\Priority Current
\Thread(kxescore/23)\Priority Current
\Thread(kxescore/24)\Priority Current
\Thread(kxescore/25)\Priority Current
\Thread(kxescore/26)\Priority Current
\Thread(kxescore/27)\Priority Current
\Thread(kxescore/28)\Priority Current
\Thread(kxescore/29)\Priority Current
\Thread(kxescore/30)\Priority Current
\Thread(kxescore/31)\Priority Current
\Thread(kxescore/32)\Priority Current
\Thread(kxescore/33)\Priority Current
\Thread(kxescore/34)\Priority Current
\Thread(kxescore/35)\Priority Current
\Thread(kxescore/36)\Priority Current
\Thread(kxescore/37)\Priority Current
\Thread(kxescore/38)\Priority Current
\Thread(kxescore/39)\Priority Current
\Thread(kxescore/40)\Priority Current
\Thread(kxescore/41)\Priority Current
\Thread(kxescore/42)\Priority Current
\Thread(kxescore/43)\Priority Current
\Thread(kxescore/44)\Priority Current
\Thread(kxescore/45)\Priority Current
\Thread(kxescore/46)\Priority Current
\Thread(kxescore/47)\Priority Current
\Thread(kxescore/48)\Priority Current
\Thread(kxescore/49)\Priority Current
\Thread(kxescore/50)\Priority Current
\Thread(kxescore/51)\Priority Current
\Thread(kxescore/52)\Priority Current
\Thread(kxescore/53)\Priority Current
\Thread(kxescore/54)\Priority Current
\Thread(kxescore/55)\Priority Current
\Thread(kxescore/56)\Priority Current
\Thread(kxescore/57)\Priority Current
\Thread(kxescore/58)\Priority Current
\Thread(kxescore/59)\Priority Current
\Thread(kxescore/60)\Priority Current
\Thread(KSafeSvc/0)\Priority Current
\Thread(KSafeSvc/1)\Priority Current
\Thread(KSafeSvc/2)\Priority Current
\Thread(KSafeSvc/3)\Priority Current
\Thread(KSafeSvc/4)\Priority Current
\Thread(KSafeSvc/5)\Priority Current
\Thread(KSafeSvc/6)\Priority Current
\Thread(KSafeSvc/7)\Priority Current
\Thread(KSafeSvc/8)\Priority Current
\Thread(KSafeSvc/9)\Priority Current
\Thread(KSafeSvc/10)\Priority Current
\Thread(KSafeSvc/11)\Priority Current
\Thread(KSafeSvc/12)\Priority Current
\Thread(KSafeSvc/13)\Priority Current
\Thread(KSafeSvc/14)\Priority Current
\Thread(KSafeSvc/15)\Priority Current
\Thread(KSafeSvc/16)\Priority Current
\Thread(KSafeSvc/17)\Priority Current
\Thread(KSafeSvc/18)\Priority Current
\Thread(KSafeSvc/19)\Priority Current
\Thread(KSafeSvc/20)\Priority Current
\Thread(KSafeSvc/21)\Priority Current
\Thread(KSafeSvc/22)\Priority Current
\Thread(KSafeSvc/23)\Priority Current
\Thread(KSafeSvc/24)\Priority Current
\Thread(KSafeSvc/25)\Priority Current
\Thread(KSafeSvc/26)\Priority Current
\Thread(KSafeSvc/27)\Priority Current
\Thread(KSafeSvc/28)\Priority Current
\Thread(KSafeSvc/29)\Priority Current
\Thread(KSafeSvc/30)\Priority Current
\Thread(KSafeSvc/31)\Priority Current
\Thread(KSafeSvc/32)\Priority Current
\Thread(KSafeSvc/33)\Priority Current
\Thread(KSafeSvc/34)\Priority Current
\Thread(KSafeSvc/35)\Priority Current
\Thread(KSafeSvc/36)\Priority Current
\Thread(KSafeSvc/37)\Priority Current
\Thread(KSafeSvc/38)\Priority Current
\Thread(KSafeSvc/39)\Priority Current
\Thread(KSafeSvc/40)\Priority Current
\Thread(KSafeSvc/41)\Priority Current
\Thread(KSafeSvc/42)\Priority Current
\Thread(KSafeSvc/43)\Priority Current
\Thread(KSafeSvc/44)\Priority Current
\Thread(KSafeSvc/45)\Priority Current
\Thread(KSafeSvc/46)\Priority Current
\Thread(KSafeSvc/47)\Priority Current
\Thread(KSafeSvc/48)\Priority Current
\Thread(KSafeSvc/49)\Priority Current
\Thread(KSafeSvc/50)\Priority Current
\Thread(KSafeSvc/51)\Priority Current
\Thread(KSafeSvc/52)\Priority Current
\Thread(KSafeSvc/53)\Priority Current
\Thread(kxesapp/0)\Priority Current
\Thread(kxesapp/1)\Priority Current
\Thread(kxesapp/2)\Priority Current
\Thread(kxesapp/3)\Priority Current
\Thread(kxesapp/4)\Priority Current
\Thread(kxesapp/5)\Priority Current
\Thread(kxesapp/6)\Priority Current
\Thread(kxesapp/7)\Priority Current
\Thread(kxesapp/8)\Priority Current
\Thread(kxesapp/9)\Priority Current
\Thread(kxesapp/10)\Priority Current
\Thread(kxesapp/11)\Priority Current
\Thread(kxesapp/12)\Priority Current
\Thread(kxesapp/13)\Priority Current
\Thread(kxesapp/14)\Priority Current
\Thread(kxesapp/15)\Priority Current
\Thread(kxesapp/16)\Priority Current
\Thread(kxesapp/17)\Priority Current
\Thread(kxesapp/18)\Priority Current
\Thread(kxesapp/19)\Priority Current
\Thread(kxesapp/20)\Priority Current
\Thread(kxesapp/21)\Priority Current
\Thread(kxesapp/22)\Priority Current
\Thread(spoolsv/0)\Priority Current
\Thread(spoolsv/1)\Priority Current
\Thread(spoolsv/2)\Priority Current
\Thread(spoolsv/3)\Priority Current
\Thread(spoolsv/4)\Priority Current
\Thread(spoolsv/5)\Priority Current
\Thread(spoolsv/6)\Priority Current
\Thread(spoolsv/7)\Priority Current
\Thread(spoolsv/8)\Priority Current
\Thread(spoolsv/9)\Priority Current
\Thread(spoolsv/10)\Priority Current
\Thread(spoolsv/11)\Priority Current
\Thread(spoolsv/12)\Priority Current
\Thread(spoolsv/13)\Priority Current
\Thread(alg/0)\Priority Current
\Thread(alg/1)\Priority Current
\Thread(alg/2)\Priority Current
\Thread(alg/3)\Priority Current
\Thread(alg/4)\Priority Current
\Thread(AsistService/0)\Priority Current
\Thread(AsistService/1)\Priority Current
\Thread(AsistService/2)\Priority Current
\Thread(DSRSvc/0)\Priority Current
\Thread(DSRSvc/1)\Priority Current
\Thread(DSRSvc/2)\Priority Current
\Thread(DSRSvc/3)\Priority Current
\Thread(DSRSvc/4)\Priority Current
\Thread(DSRSvc/5)\Priority Current
\Thread(DSRSvc/6)\Priority Current
\Thread(DSRSvc/7)\Priority Current
\Thread(DSRSvc/8)\Priority Current
\Thread(DSRSvc/9)\Priority Current
\Thread(DSRSvc/10)\Priority Current
\Thread(DSRSvc/11)\Priority Current
\Thread(DSRSvc/12)\Priority Current
\Thread(FolderSizeSvc/0)\Priority Current
\Thread(FolderSizeSvc/1)\Priority Current
\Thread(FolderSizeSvc/2)\Priority Current
\Thread(FolderSizeSvc/3)\Priority Current
\Thread(FolderSizeSvc/4)\Priority Current
\Thread(FolderSizeSvc/5)\Priority Current
\Thread(FolderSizeSvc/6)\Priority Current
\Thread(FolderSizeSvc/7)\Priority Current
\Thread(FolderSizeSvc/8)\Priority Current
\Thread(FolderSizeSvc/9)\Priority Current
\Thread(FolderSizeSvc/10)\Priority Current
\Thread(FolderSizeSvc/11)\Priority Current
\Thread(FolderSizeSvc/12)\Priority Current
\Thread(FolderSizeSvc/13)\Priority Current
\Thread(FolderSizeSvc/14)\Priority Current
\Thread(FolderSizeSvc/15)\Priority Current
\Thread(FolderSizeSvc/16)\Priority Current
\Thread(FolderSizeSvc/17)\Priority Current
\Thread(FolderSizeSvc/18)\Priority Current
\Thread(FolderSizeSvc/19)\Priority Current
\Thread(FolderSizeSvc/20)\Priority Current
\Thread(FolderSizeSvc/21)\Priority Current
\Thread(FolderSizeSvc/22)\Priority Current
\Thread(FolderSizeSvc/23)\Priority Current
\Thread(FolderSizeSvc/24)\Priority Current
\Thread(FolderSizeSvc/25)\Priority Current
\Thread(FolderSizeSvc/26)\Priority Current
\Thread(FolderSizeSvc/27)\Priority Current
\Thread(FolderSizeSvc/28)\Priority Current
\Thread(FolderSizeSvc/29)\Priority Current
\Thread(FolderSizeSvc/30)\Priority Current
\Thread(FolderSizeSvc/31)\Priority Current
\Thread(FolderSizeSvc/32)\Priority Current
\Thread(FolderSizeSvc/33)\Priority Current
\Thread(FolderSizeSvc/34)\Priority Current
\Thread(FolderSizeSvc/35)\Priority Current
\Thread(FolderSizeSvc/36)\Priority Current
\Thread(FolderSizeSvc/37)\Priority Current
\Thread(FolderSizeSvc/38)\Priority Current
\Thread(FolderSizeSvc/39)\Priority Current
\Thread(FolderSizeSvc/40)\Priority Current
\Thread(FolderSizeSvc/41)\Priority Current
\Thread(FolderSizeSvc/42)\Priority Current
\Thread(FolderSizeSvc/43)\Priority Current
\Thread(FolderSizeSvc/44)\Priority Current
\Thread(FolderSizeSvc/45)\Priority Current
\Thread(FolderSizeSvc/46)\Priority Current
\Thread(GSGIOSRV/0)\Priority Current
\Thread(GSGIOSRV/1)\Priority Current
\Thread(GSGIOSRV/2)\Priority Current
\Thread(upsvc/0)\Priority Current
\Thread(upsvc/1)\Priority Current
\Thread(upsvc/2)\Priority Current
\Thread(upsvc/3)\Priority Current
\Thread(upsvc/4)\Priority Current
\Thread(mdm/0)\Priority Current
\Thread(mdm/1)\Priority Current
\Thread(mdm/2)\Priority Current
\Thread(mdm/3)\Priority Current
\Thread(mdm/4)\Priority Current
\Thread(rtiosrv/0)\Priority Current
\Thread(rtiosrv/1)\Priority Current
\Thread(rtiosrv/2)\Priority Current
\Thread(rtiosrv/3)\Priority Current
\Thread(ManagerClient/0)\Priority Current
\Thread(ManagerClient/1)\Priority Current
\Thread(sqlwriter/0)\Priority Current
\Thread(sqlwriter/1)\Priority Current
\Thread(sqlwriter/2)\Priority Current
\Thread(vmware-usbarbitrator/0)\Priority Current
\Thread(vmware-usbarbitrator/1)\Priority Current
\Thread(vmnat/0)\Priority Current
\Thread(vmnat/1)\Priority Current
\Thread(vmnat/2)\Priority Current
\Thread(vmnetdhcp/0)\Priority Current
\Thread(vmnetdhcp/1)\Priority Current
\Thread(vmware-authd/0)\Priority Current
\Thread(vmware-authd/1)\Priority Current
\Thread(vmware-authd/2)\Priority Current
\Thread(vmware-authd/3)\Priority Current
\Thread(vmware-authd/4)\Priority Current
\Thread(vmware-authd/5)\Priority Current
\Thread(vmware-authd/6)\Priority Current
\Thread(explorer/0)\Priority Current
\Thread(explorer/1)\Priority Current
\Thread(explorer/2)\Priority Current
\Thread(explorer/3)\Priority Current
\Thread(explorer/4)\Priority Current
\Thread(explorer/5)\Priority Current
\Thread(explorer/6)\Priority Current
\Thread(explorer/7)\Priority Current
\Thread(explorer/8)\Priority Current
\Thread(explorer/9)\Priority Current
\Thread(explorer/10)\Priority Current
\Thread(explorer/11)\Priority Current
\Thread(explorer/12)\Priority Current
\Thread(explorer/13)\Priority Current
\Thread(explorer/14)\Priority Current
\Thread(explorer/15)\Priority Current
\Thread(explorer/16)\Priority Current
\Thread(explorer/17)\Priority Current
\Thread(explorer/18)\Priority Current
\Thread(explorer/19)\Priority Current
\Thread(explorer/20)\Priority Current
\Thread(explorer/21)\Priority Current
\Thread(explorer/22)\Priority Current
\Thread(TSVNCache/0)\Priority Current
\Thread(TSVNCache/1)\Priority Current
\Thread(TSVNCache/2)\Priority Current
\Thread(TSVNCache/3)\Priority Current
\Thread(TSVNCache/4)\Priority Current
\Thread(TSVNCache/5)\Priority Current
\Thread(TSVNCache/6)\Priority Current
\Thread(TSVNCache/7)\Priority Current
\Thread(TSVNCache/8)\Priority Current
\Thread(TSVNCache/9)\Priority Current
\Thread(TSVNCache/10)\Priority Current
\Thread(igfxtray/0)\Priority Current
\Thread(igfxtray/1)\Priority Current
\Thread(hkcmd/0)\Priority Current
\Thread(hkcmd/1)\Priority Current
\Thread(hkcmd/2)\Priority Current
\Thread(igfxpers/0)\Priority Current
\Thread(igfxpers/1)\Priority Current
\Thread(KSafeTray/0)\Priority Current
\Thread(KSafeTray/1)\Priority Current
\Thread(KSafeTray/2)\Priority Current
\Thread(KSafeTray/3)\Priority Current
\Thread(KSafeTray/4)\Priority Current
\Thread(KSafeTray/5)\Priority Current
\Thread(KSafeTray/6)\Priority Current
\Thread(KSafeTray/7)\Priority Current
\Thread(KSafeTray/8)\Priority Current
\Thread(KSafeTray/9)\Priority Current
\Thread(KSafeTray/10)\Priority Current
\Thread(KSafeTray/11)\Priority Current
\Thread(KSafeTray/12)\Priority Current
\Thread(KSafeTray/13)\Priority Current
\Thread(KSafeTray/14)\Priority Current
\Thread(KSafeTray/15)\Priority Current
\Thread(KSafeTray/16)\Priority Current
\Thread(KSafeTray/17)\Priority Current
\Thread(KSafeTray/18)\Priority Current
\Thread(KSafeTray/19)\Priority Current
\Thread(KSafeTray/20)\Priority Current
\Thread(KSafeTray/21)\Priority Current
\Thread(KSafeTray/22)\Priority Current
\Thread(KSafeTray/23)\Priority Current
\Thread(kxetray/0)\Priority Current
\Thread(kxetray/1)\Priority Current
\Thread(kxetray/2)\Priority Current
\Thread(kxetray/3)\Priority Current
\Thread(kxetray/4)\Priority Current
\Thread(kxetray/5)\Priority Current
\Thread(kxetray/6)\Priority Current
\Thread(kxetray/7)\Priority Current
\Thread(kxetray/8)\Priority Current
\Thread(kxetray/9)\Priority Current
\Thread(kxetray/10)\Priority Current
\Thread(kxetray/11)\Priority Current
\Thread(kxetray/12)\Priority Current
\Thread(kxetray/13)\Priority Current
\Thread(kxetray/14)\Priority Current
\Thread(kxetray/15)\Priority Current
\Thread(kxetray/16)\Priority Current
\Thread(kxetray/17)\Priority Current
\Thread(kxetray/18)\Priority Current
\Thread(kxetray/19)\Priority Current
\Thread(kxetray/20)\Priority Current
\Thread(kxetray/21)\Priority Current
\Thread(kxetray/22)\Priority Current
\Thread(kxetray/23)\Priority Current
\Thread(igfxsrvc/0)\Priority Current
\Thread(igfxsrvc/1)\Priority Current
\Thread(igfxsrvc/2)\Priority Current
\Thread(igfxsrvc/3)\Priority Current
\Thread(Ext2Mgr/0)\Priority Current
\Thread(RTHDCPL/0)\Priority Current
\Thread(RTHDCPL/1)\Priority Current
\Thread(RTHDCPL/2)\Priority Current
\Thread(RTHDCPL/3)\Priority Current
\Thread(OfficeIM/0)\Priority Current
\Thread(OfficeIM/1)\Priority Current
\Thread(OfficeIM/2)\Priority Current
\Thread(OfficeIM/3)\Priority Current
\Thread(OfficeIM/4)\Priority Current
\Thread(OfficeIM/5)\Priority Current
\Thread(OfficeIM/6)\Priority Current
\Thread(OfficeIM/7)\Priority Current
\Thread(OfficeIM/8)\Priority Current
\Thread(OfficeIM/9)\Priority Current
\Thread(OfficeIM/10)\Priority Current
\Thread(OfficeIM/11)\Priority Current
\Thread(OfficeIM/12)\Priority Current
\Thread(OfficeIM/13)\Priority Current
\Thread(OfficeIM/14)\Priority Current
\Thread(vmware-tray/0)\Priority Current
\Thread(vmware-tray/1)\Priority Current
\Thread(vmware-tray/2)\Priority Current
\Thread(msnmsgr/0)\Priority Current
\Thread(msnmsgr/1)\Priority Current
\Thread(msnmsgr/2)\Priority Current
\Thread(msnmsgr/3)\Priority Current
\Thread(msnmsgr/4)\Priority Current
\Thread(msnmsgr/5)\Priority Current
\Thread(msnmsgr/6)\Priority Current
\Thread(msnmsgr/7)\Priority Current
\Thread(msnmsgr/8)\Priority Current
\Thread(msnmsgr/9)\Priority Current
\Thread(msnmsgr/10)\Priority Current
\Thread(msnmsgr/11)\Priority Current
\Thread(msnmsgr/12)\Priority Current
\Thread(msnmsgr/13)\Priority Current
\Thread(msnmsgr/14)\Priority Current
\Thread(msnmsgr/15)\Priority Current
\Thread(msnmsgr/16)\Priority Current
\Thread(msnmsgr/17)\Priority Current
\Thread(msnmsgr/18)\Priority Current
\Thread(msnmsgr/19)\Priority Current
\Thread(msnmsgr/20)\Priority Current
\Thread(msnmsgr/21)\Priority Current
\Thread(msnmsgr/22)\Priority Current
\Thread(msnmsgr/23)\Priority Current
\Thread(msnmsgr/24)\Priority Current
\Thread(msnmsgr/25)\Priority Current
\Thread(msnmsgr/26)\Priority Current
\Thread(msnmsgr/27)\Priority Current
\Thread(msnmsgr/28)\Priority Current
\Thread(msnmsgr/29)\Priority Current
\Thread(msnmsgr/30)\Priority Current
\Thread(msnmsgr/31)\Priority Current
\Thread(msnmsgr/32)\Priority Current
\Thread(msnmsgr/33)\Priority Current
\Thread(msnmsgr/34)\Priority Current
\Thread(msnmsgr/35)\Priority Current
\Thread(msnmsgr/36)\Priority Current
\Thread(msnmsgr/37)\Priority Current
\Thread(msnmsgr/38)\Priority Current
\Thread(msnmsgr/39)\Priority Current
\Thread(ctfmon/0)\Priority Current
\Thread(VVCap/0)\Priority Current
\Thread(VVCap/1)\Priority Current
\Thread(wlcomm/0)\Priority Current
\Thread(wlcomm/1)\Priority Current
\Thread(wlcomm/2)\Priority Current
\Thread(wlcomm/3)\Priority Current
\Thread(wlcomm/4)\Priority Current
\Thread(wlcomm/5)\Priority Current
\Thread(wlcomm/6)\Priority Current
\Thread(wlcomm/7)\Priority Current
\Thread(wlcomm/8)\Priority Current
\Thread(wlcomm/9)\Priority Current
\Thread(wlcomm/10)\Priority Current
\Thread(wlcomm/11)\Priority Current
\Thread(wlcomm/12)\Priority Current
\Thread(wlcomm/13)\Priority Current
\Thread(wlcomm/14)\Priority Current
\Thread(WPFFontCache_v0400/0)\Priority Current
\Thread(WPFFontCache_v0400/1)\Priority Current
\Thread(WPFFontCache_v0400/2)\Priority Current
\Thread(WPFFontCache_v0400/3)\Priority Current
\Thread(WPFFontCache_v0400/4)\Priority Current
\Thread(WPFFontCache_v0400/5)\Priority Current
\Thread(WPFFontCache_v0400/6)\Priority Current
\Thread(KuGoo/0)\Priority Current
\Thread(KuGoo/1)\Priority Current
\Thread(KuGoo/2)\Priority Current
\Thread(KuGoo/3)\Priority Current
\Thread(KuGoo/4)\Priority Current
\Thread(KuGoo/5)\Priority Current
\Thread(KuGoo/6)\Priority Current
\Thread(KuGoo/7)\Priority Current
\Thread(KuGoo/8)\Priority Current
\Thread(KuGoo/9)\Priority Current
\Thread(KuGoo/10)\Priority Current
\Thread(KuGoo/11)\Priority Current
\Thread(KuGoo/12)\Priority Current
\Thread(KuGoo/13)\Priority Current
\Thread(KuGoo/14)\Priority Current
\Thread(KuGoo/15)\Priority Current
\Thread(KuGoo/16)\Priority Current
\Thread(KuGoo/17)\Priority Current
\Thread(KuGoo/18)\Priority Current
\Thread(KuGoo/19)\Priority Current
\Thread(KuGoo/20)\Priority Current
\Thread(KuGoo/21)\Priority Current
\Thread(KuGoo/22)\Priority Current
\Thread(KuGoo/23)\Priority Current
\Thread(KuGoo/24)\Priority Current
\Thread(KuGoo/25)\Priority Current
\Thread(KuGoo/26)\Priority Current
\Thread(KuGoo/27)\Priority Current
\Thread(KuGoo/28)\Priority Current
\Thread(KuGoo/29)\Priority Current
\Thread(KuGoo/30)\Priority Current
\Thread(KuGoo/31)\Priority Current
\Thread(KuGoo/32)\Priority Current
\Thread(KuGoo/33)\Priority Current
\Thread(KuGoo/34)\Priority Current
\Thread(KuGoo/35)\Priority Current
\Thread(KuGoo/36)\Priority Current
\Thread(KuGoo/37)\Priority Current
\Thread(KuGoo/38)\Priority Current
\Thread(KuGoo/39)\Priority Current
\Thread(KuGoo/40)\Priority Current
\Thread(KuGoo/41)\Priority Current
\Thread(KuGoo/42)\Priority Current
\Thread(KuGoo/43)\Priority Current
\Thread(KuGoo/44)\Priority Current
\Thread(KuGoo/45)\Priority Current
\Thread(KuGoo/46)\Priority Current
\Thread(KuGoo/47)\Priority Current
\Thread(KuGoo/48)\Priority Current
\Thread(KuGoo/49)\Priority Current
\Thread(KuGoo/50)\Priority Current
\Thread(KuGoo/51)\Priority Current
\Thread(KuGoo/52)\Priority Current
\Thread(KuGoo/53)\Priority Current
\Thread(KuGoo/54)\Priority Current
\Thread(KuGoo/55)\Priority Current
\Thread(KuGoo/56)\Priority Current
\Thread(KuGoo/57)\Priority Current
\Thread(KuGoo/58)\Priority Current
\Thread(KuGoo/59)\Priority Current
\Thread(firefox/0)\Priority Current
\Thread(firefox/1)\Priority Current
\Thread(firefox/2)\Priority Current
\Thread(firefox/3)\Priority Current
\Thread(firefox/4)\Priority Current
\Thread(firefox/5)\Priority Current
\Thread(firefox/6)\Priority Current
\Thread(firefox/7)\Priority Current
\Thread(firefox/8)\Priority Current
\Thread(firefox/9)\Priority Current
\Thread(firefox/10)\Priority Current
\Thread(firefox/11)\Priority Current
\Thread(firefox/12)\Priority Current
\Thread(firefox/13)\Priority Current
\Thread(firefox/14)\Priority Current
\Thread(firefox/15)\Priority Current
\Thread(firefox/16)\Priority Current
\Thread(firefox/17)\Priority Current
\Thread(firefox/18)\Priority Current
\Thread(firefox/19)\Priority Current
\Thread(firefox/20)\Priority Current
\Thread(firefox/21)\Priority Current
\Thread(firefox/22)\Priority Current
\Thread(firefox/23)\Priority Current
\Thread(firefox/24)\Priority Current
\Thread(vmware/0)\Priority Current
\Thread(vmware/1)\Priority Current
\Thread(vmware/2)\Priority Current
\Thread(vmware/3)\Priority Current
\Thread(vmware/4)\Priority Current
\Thread(vmware/5)\Priority Current
\Thread(vmware/6)\Priority Current
\Thread(vmware/7)\Priority Current
\Thread(taskmgr/0)\Priority Current
\Thread(taskmgr/1)\Priority Current
\Thread(taskmgr/2)\Priority Current
\Thread(SshClient/0)\Priority Current
\Thread(SshClient/1)\Priority Current
\Thread(SshClient/2)\Priority Current
\Thread(SshClient/3)\Priority Current
\Thread(SshClient/4)\Priority Current
\Thread(SshClient/5)\Priority Current
\Thread(SshClient/6)\Priority Current
\Thread(Thunder5/0)\Priority Current
\Thread(Thunder5/1)\Priority Current
\Thread(Thunder5/2)\Priority Current
\Thread(Thunder5/3)\Priority Current
\Thread(Thunder5/4)\Priority Current
\Thread(Thunder5/5)\Priority Current
\Thread(Thunder5/6)\Priority Current
\Thread(Thunder5/7)\Priority Current
\Thread(Thunder5/8)\Priority Current
\Thread(Thunder5/9)\Priority Current
\Thread(Thunder5/10)\Priority Current
\Thread(Thunder5/11)\Priority Current
\Thread(Thunder5/12)\Priority Current
\Thread(Thunder5/13)\Priority Current
\Thread(Thunder5/14)\Priority Current
\Thread(Thunder5/15)\Priority Current
\Thread(Thunder5/16)\Priority Current
\Thread(Thunder5/17)\Priority Current
\Thread(Thunder5/18)\Priority Current
\Thread(Thunder5/19)\Priority Current
\Thread(Thunder5/20)\Priority Current
\Thread(Thunder5/21)\Priority Current
\Thread(Thunder5/22)\Priority Current
\Thread(Thunder5/23)\Priority Current
\Thread(Thunder5/24)\Priority Current
\Thread(Thunder5/25)\Priority Current
\Thread(Thunder5/26)\Priority Current
\Thread(Thunder5/27)\Priority Current
\Thread(Thunder5/28)\Priority Current
\Thread(Thunder5/29)\Priority Current
\Thread(Thunder5/30)\Priority Current
\Thread(Thunder5/31)\Priority Current
\Thread(Thunder5/32)\Priority Current
\Thread(Thunder5/33)\Priority Current
\Thread(Thunder5/34)\Priority Current
\Thread(Thunder5/35)\Priority Current
\Thread(Thunder5/36)\Priority Current
\Thread(Thunder5/37)\Priority Current
\Thread(Thunder5/38)\Priority Current
\Thread(Thunder5/39)\Priority Current
\Thread(Thunder5/40)\Priority Current
\Thread(Thunder5/41)\Priority Current
\Thread(Thunder5/42)\Priority Current
\Thread(Thunder5/43)\Priority Current
\Thread(Thunder5/44)\Priority Current
\Thread(Thunder5/45)\Priority Current
\Thread(Thunder5/46)\Priority Current
\Thread(cmd/0)\Priority Current
\Thread(typeperf/0)\Priority Current
\Thread(typeperf/1)\Priority Current
\Thread(typeperf/2)\Priority Current
\Thread(typeperf/3)\Priority Current
\Thread(typeperf/4)\Priority Current
\Thread(typeperf/5)\Priority Current
\Thread(typeperf/6)\Priority Current
\Thread(typeperf/7)\Priority Current
\Thread(typeperf/8)\Priority Current
\Thread(typeperf/9)\Priority Current
\Thread(typeperf/10)\Priority Current
\Thread(_Total/_Total)\Priority Current
\Thread(Idle/0)\Priority Base
\Thread(Idle/1)\Priority Base
\Thread(System/0)\Priority Base
\Thread(System/1)\Priority Base
\Thread(System/2)\Priority Base
\Thread(System/3)\Priority Base
\Thread(System/4)\Priority Base
\Thread(System/5)\Priority Base
\Thread(System/6)\Priority Base
\Thread(System/7)\Priority Base
\Thread(System/8)\Priority Base
\Thread(System/9)\Priority Base
\Thread(System/10)\Priority Base
\Thread(System/11)\Priority Base
\Thread(System/12)\Priority Base
\Thread(System/13)\Priority Base
\Thread(System/14)\Priority Base
\Thread(System/15)\Priority Base
\Thread(System/16)\Priority Base
\Thread(System/17)\Priority Base
\Thread(System/18)\Priority Base
\Thread(System/19)\Priority Base
\Thread(System/20)\Priority Base
\Thread(System/21)\Priority Base
\Thread(System/22)\Priority Base
\Thread(System/23)\Priority Base
\Thread(System/24)\Priority Base
\Thread(System/25)\Priority Base
\Thread(System/26)\Priority Base
\Thread(System/27)\Priority Base
\Thread(System/28)\Priority Base
\Thread(System/29)\Priority Base
\Thread(System/30)\Priority Base
\Thread(System/31)\Priority Base
\Thread(System/32)\Priority Base
\Thread(System/33)\Priority Base
\Thread(System/34)\Priority Base
\Thread(System/35)\Priority Base
\Thread(System/36)\Priority Base
\Thread(System/37)\Priority Base
\Thread(System/38)\Priority Base
\Thread(System/39)\Priority Base
\Thread(System/40)\Priority Base
\Thread(System/41)\Priority Base
\Thread(System/42)\Priority Base
\Thread(System/43)\Priority Base
\Thread(System/44)\Priority Base
\Thread(System/45)\Priority Base
\Thread(System/46)\Priority Base
\Thread(System/47)\Priority Base
\Thread(System/48)\Priority Base
\Thread(System/49)\Priority Base
\Thread(System/50)\Priority Base
\Thread(System/51)\Priority Base
\Thread(System/52)\Priority Base
\Thread(System/53)\Priority Base
\Thread(System/54)\Priority Base
\Thread(System/55)\Priority Base
\Thread(System/56)\Priority Base
\Thread(System/57)\Priority Base
\Thread(System/58)\Priority Base
\Thread(System/59)\Priority Base
\Thread(System/60)\Priority Base
\Thread(System/61)\Priority Base
\Thread(System/62)\Priority Base
\Thread(System/63)\Priority Base
\Thread(System/64)\Priority Base
\Thread(System/65)\Priority Base
\Thread(System/66)\Priority Base
\Thread(System/67)\Priority Base
\Thread(System/68)\Priority Base
\Thread(System/69)\Priority Base
\Thread(System/70)\Priority Base
\Thread(System/71)\Priority Base
\Thread(System/72)\Priority Base
\Thread(System/73)\Priority Base
\Thread(System/74)\Priority Base
\Thread(System/75)\Priority Base
\Thread(System/76)\Priority Base
\Thread(System/77)\Priority Base
\Thread(System/78)\Priority Base
\Thread(System/79)\Priority Base
\Thread(System/80)\Priority Base
\Thread(System/81)\Priority Base
\Thread(System/82)\Priority Base
\Thread(System/83)\Priority Base
\Thread(System/84)\Priority Base
\Thread(System/85)\Priority Base
\Thread(System/86)\Priority Base
\Thread(System/87)\Priority Base
\Thread(System/88)\Priority Base
\Thread(System/89)\Priority Base
\Thread(System/90)\Priority Base
\Thread(System/91)\Priority Base
\Thread(System/92)\Priority Base
\Thread(System/93)\Priority Base
\Thread(System/94)\Priority Base
\Thread(System/95)\Priority Base
\Thread(System/96)\Priority Base
\Thread(System/97)\Priority Base
\Thread(smss/0)\Priority Base
\Thread(smss/1)\Priority Base
\Thread(smss/2)\Priority Base
\Thread(csrss/0)\Priority Base
\Thread(csrss/1)\Priority Base
\Thread(csrss/2)\Priority Base
\Thread(csrss/3)\Priority Base
\Thread(csrss/4)\Priority Base
\Thread(csrss/5)\Priority Base
\Thread(csrss/6)\Priority Base
\Thread(csrss/7)\Priority Base
\Thread(csrss/8)\Priority Base
\Thread(csrss/9)\Priority Base
\Thread(csrss/10)\Priority Base
\Thread(csrss/11)\Priority Base
\Thread(winlogon/0)\Priority Base
\Thread(winlogon/1)\Priority Base
\Thread(winlogon/2)\Priority Base
\Thread(winlogon/3)\Priority Base
\Thread(winlogon/4)\Priority Base
\Thread(winlogon/5)\Priority Base
\Thread(winlogon/6)\Priority Base
\Thread(winlogon/7)\Priority Base
\Thread(winlogon/8)\Priority Base
\Thread(winlogon/9)\Priority Base
\Thread(winlogon/10)\Priority Base
\Thread(winlogon/11)\Priority Base
\Thread(winlogon/12)\Priority Base
\Thread(winlogon/13)\Priority Base
\Thread(winlogon/14)\Priority Base
\Thread(winlogon/15)\Priority Base
\Thread(winlogon/16)\Priority Base
\Thread(winlogon/17)\Priority Base
\Thread(winlogon/18)\Priority Base
\Thread(winlogon/19)\Priority Base
\Thread(winlogon/20)\Priority Base
\Thread(winlogon/21)\Priority Base
\Thread(services/0)\Priority Base
\Thread(services/1)\Priority Base
\Thread(services/2)\Priority Base
\Thread(services/3)\Priority Base
\Thread(services/4)\Priority Base
\Thread(services/5)\Priority Base
\Thread(services/6)\Priority Base
\Thread(services/7)\Priority Base
\Thread(services/8)\Priority Base
\Thread(services/9)\Priority Base
\Thread(services/10)\Priority Base
\Thread(services/11)\Priority Base
\Thread(services/12)\Priority Base
\Thread(services/13)\Priority Base
\Thread(services/14)\Priority Base
\Thread(services/15)\Priority Base
\Thread(lsass/0)\Priority Base
\Thread(lsass/1)\Priority Base
\Thread(lsass/2)\Priority Base
\Thread(lsass/3)\Priority Base
\Thread(lsass/4)\Priority Base
\Thread(lsass/5)\Priority Base
\Thread(lsass/6)\Priority Base
\Thread(lsass/7)\Priority Base
\Thread(lsass/8)\Priority Base
\Thread(lsass/9)\Priority Base
\Thread(lsass/10)\Priority Base
\Thread(lsass/11)\Priority Base
\Thread(lsass/12)\Priority Base
\Thread(lsass/13)\Priority Base
\Thread(lsass/14)\Priority Base
\Thread(lsass/15)\Priority Base
\Thread(lsass/16)\Priority Base
\Thread(lsass/17)\Priority Base
\Thread(lsass/18)\Priority Base
\Thread(lsass/19)\Priority Base
\Thread(lsass/20)\Priority Base
\Thread(lsass/21)\Priority Base
\Thread(svchost/0)\Priority Base
\Thread(svchost/1)\Priority Base
\Thread(svchost/2)\Priority Base
\Thread(svchost/3)\Priority Base
\Thread(svchost/4)\Priority Base
\Thread(svchost/5)\Priority Base
\Thread(svchost/6)\Priority Base
\Thread(svchost/7)\Priority Base
\Thread(svchost/0)\Priority Base
\Thread(svchost/1)\Priority Base
\Thread(svchost/2)\Priority Base
\Thread(svchost/3)\Priority Base
\Thread(svchost/4)\Priority Base
\Thread(svchost/5)\Priority Base
\Thread(svchost/6)\Priority Base
\Thread(svchost/7)\Priority Base
\Thread(svchost/8)\Priority Base
\Thread(svchost/9)\Priority Base
\Thread(svchost/10)\Priority Base
\Thread(svchost/11)\Priority Base
\Thread(svchost/12)\Priority Base
\Thread(svchost/13)\Priority Base
\Thread(svchost/14)\Priority Base
\Thread(svchost/15)\Priority Base
\Thread(svchost/16)\Priority Base
\Thread(svchost/17)\Priority Base
\Thread(svchost/18)\Priority Base
\Thread(svchost/19)\Priority Base
\Thread(svchost/20)\Priority Base
\Thread(svchost/21)\Priority Base
\Thread(svchost/22)\Priority Base
\Thread(svchost/23)\Priority Base
\Thread(svchost/24)\Priority Base
\Thread(svchost/25)\Priority Base
\Thread(svchost/26)\Priority Base
\Thread(svchost/27)\Priority Base
\Thread(svchost/28)\Priority Base
\Thread(svchost/29)\Priority Base
\Thread(svchost/30)\Priority Base
\Thread(svchost/31)\Priority Base
\Thread(svchost/32)\Priority Base
\Thread(svchost/33)\Priority Base
\Thread(svchost/34)\Priority Base
\Thread(svchost/35)\Priority Base
\Thread(svchost/36)\Priority Base
\Thread(svchost/37)\Priority Base
\Thread(svchost/38)\Priority Base
\Thread(svchost/39)\Priority Base
\Thread(svchost/40)\Priority Base
\Thread(svchost/41)\Priority Base
\Thread(svchost/42)\Priority Base
\Thread(svchost/43)\Priority Base
\Thread(svchost/44)\Priority Base
\Thread(svchost/45)\Priority Base
\Thread(svchost/46)\Priority Base
\Thread(svchost/47)\Priority Base
\Thread(svchost/48)\Priority Base
\Thread(svchost/49)\Priority Base
\Thread(svchost/50)\Priority Base
\Thread(svchost/51)\Priority Base
\Thread(svchost/52)\Priority Base
\Thread(svchost/53)\Priority Base
\Thread(svchost/54)\Priority Base
\Thread(svchost/55)\Priority Base
\Thread(svchost/56)\Priority Base
\Thread(svchost/57)\Priority Base
\Thread(svchost/58)\Priority Base
\Thread(svchost/59)\Priority Base
\Thread(svchost/60)\Priority Base
\Thread(svchost/61)\Priority Base
\Thread(svchost/62)\Priority Base
\Thread(svchost/63)\Priority Base
\Thread(svchost/64)\Priority Base
\Thread(svchost/65)\Priority Base
\Thread(svchost/66)\Priority Base
\Thread(svchost/67)\Priority Base
\Thread(svchost/68)\Priority Base
\Thread(svchost/69)\Priority Base
\Thread(svchost/70)\Priority Base
\Thread(svchost/0)\Priority Base
\Thread(svchost/1)\Priority Base
\Thread(svchost/2)\Priority Base
\Thread(svchost/3)\Priority Base
\Thread(svchost/4)\Priority Base
\Thread(svchost/5)\Priority Base
\Thread(svchost/0)\Priority Base
\Thread(svchost/1)\Priority Base
\Thread(svchost/2)\Priority Base
\Thread(svchost/3)\Priority Base
\Thread(svchost/4)\Priority Base
\Thread(svchost/5)\Priority Base
\Thread(svchost/6)\Priority Base
\Thread(svchost/7)\Priority Base
\Thread(svchost/8)\Priority Base
\Thread(svchost/9)\Priority Base
\Thread(svchost/10)\Priority Base
\Thread(svchost/11)\Priority Base
\Thread(svchost/12)\Priority Base
\Thread(svchost/13)\Priority Base
\Thread(svchost/14)\Priority Base
\Thread(svchost/0)\Priority Base
\Thread(svchost/1)\Priority Base
\Thread(svchost/2)\Priority Base
\Thread(svchost/3)\Priority Base
\Thread(svchost/4)\Priority Base
\Thread(kxedefend/0)\Priority Base
\Thread(kxedefend/1)\Priority Base
\Thread(kxedefend/2)\Priority Base
\Thread(kxedefend/3)\Priority Base
\Thread(kxedefend/4)\Priority Base
\Thread(kxedefend/5)\Priority Base
\Thread(kxedefend/6)\Priority Base
\Thread(kxedefend/7)\Priority Base
\Thread(kxedefend/8)\Priority Base
\Thread(kxedefend/9)\Priority Base
\Thread(kxedefend/10)\Priority Base
\Thread(kxedefend/11)\Priority Base
\Thread(kxedefend/12)\Priority Base
\Thread(kxedefend/13)\Priority Base
\Thread(kxedefend/14)\Priority Base
\Thread(kxedefend/15)\Priority Base
\Thread(kxedefend/16)\Priority Base
\Thread(kxedefend/17)\Priority Base
\Thread(kxedefend/18)\Priority Base
\Thread(kxedefend/19)\Priority Base
\Thread(kxedefend/20)\Priority Base
\Thread(kxedefend/21)\Priority Base
\Thread(kxedefend/22)\Priority Base
\Thread(kxedefend/23)\Priority Base
\Thread(kxedefend/24)\Priority Base
\Thread(kxedefend/25)\Priority Base
\Thread(kxedefend/26)\Priority Base
\Thread(kxedefend/27)\Priority Base
\Thread(kxescore/0)\Priority Base
\Thread(kxescore/1)\Priority Base
\Thread(kxescore/2)\Priority Base
\Thread(kxescore/3)\Priority Base
\Thread(kxescore/4)\Priority Base
\Thread(kxescore/5)\Priority Base
\Thread(kxescore/6)\Priority Base
\Thread(kxescore/7)\Priority Base
\Thread(kxescore/8)\Priority Base
\Thread(kxescore/9)\Priority Base
\Thread(kxescore/10)\Priority Base
\Thread(kxescore/11)\Priority Base
\Thread(kxescore/12)\Priority Base
\Thread(kxescore/13)\Priority Base
\Thread(kxescore/14)\Priority Base
\Thread(kxescore/15)\Priority Base
\Thread(kxescore/16)\Priority Base
\Thread(kxescore/17)\Priority Base
\Thread(kxescore/18)\Priority Base
\Thread(kxescore/19)\Priority Base
\Thread(kxescore/20)\Priority Base
\Thread(kxescore/21)\Priority Base
\Thread(kxescore/22)\Priority Base
\Thread(kxescore/23)\Priority Base
\Thread(kxescore/24)\Priority Base
\Thread(kxescore/25)\Priority Base
\Thread(kxescore/26)\Priority Base
\Thread(kxescore/27)\Priority Base
\Thread(kxescore/28)\Priority Base
\Thread(kxescore/29)\Priority Base
\Thread(kxescore/30)\Priority Base
\Thread(kxescore/31)\Priority Base
\Thread(kxescore/32)\Priority Base
\Thread(kxescore/33)\Priority Base
\Thread(kxescore/34)\Priority Base
\Thread(kxescore/35)\Priority Base
\Thread(kxescore/36)\Priority Base
\Thread(kxescore/37)\Priority Base
\Thread(kxescore/38)\Priority Base
\Thread(kxescore/39)\Priority Base
\Thread(kxescore/40)\Priority Base
\Thread(kxescore/41)\Priority Base
\Thread(kxescore/42)\Priority Base
\Thread(kxescore/43)\Priority Base
\Thread(kxescore/44)\Priority Base
\Thread(kxescore/45)\Priority Base
\Thread(kxescore/46)\Priority Base
\Thread(kxescore/47)\Priority Base
\Thread(kxescore/48)\Priority Base
\Thread(kxescore/49)\Priority Base
\Thread(kxescore/50)\Priority Base
\Thread(kxescore/51)\Priority Base
\Thread(kxescore/52)\Priority Base
\Thread(kxescore/53)\Priority Base
\Thread(kxescore/54)\Priority Base
\Thread(kxescore/55)\Priority Base
\Thread(kxescore/56)\Priority Base
\Thread(kxescore/57)\Priority Base
\Thread(kxescore/58)\Priority Base
\Thread(kxescore/59)\Priority Base
\Thread(kxescore/60)\Priority Base
\Thread(KSafeSvc/0)\Priority Base
\Thread(KSafeSvc/1)\Priority Base
\Thread(KSafeSvc/2)\Priority Base
\Thread(KSafeSvc/3)\Priority Base
\Thread(KSafeSvc/4)\Priority Base
\Thread(KSafeSvc/5)\Priority Base
\Thread(KSafeSvc/6)\Priority Base
\Thread(KSafeSvc/7)\Priority Base
\Thread(KSafeSvc/8)\Priority Base
\Thread(KSafeSvc/9)\Priority Base
\Thread(KSafeSvc/10)\Priority Base
\Thread(KSafeSvc/11)\Priority Base
\Thread(KSafeSvc/12)\Priority Base
\Thread(KSafeSvc/13)\Priority Base
\Thread(KSafeSvc/14)\Priority Base
\Thread(KSafeSvc/15)\Priority Base
\Thread(KSafeSvc/16)\Priority Base
\Thread(KSafeSvc/17)\Priority Base
\Thread(KSafeSvc/18)\Priority Base
\Thread(KSafeSvc/19)\Priority Base
\Thread(KSafeSvc/20)\Priority Base
\Thread(KSafeSvc/21)\Priority Base
\Thread(KSafeSvc/22)\Priority Base
\Thread(KSafeSvc/23)\Priority Base
\Thread(KSafeSvc/24)\Priority Base
\Thread(KSafeSvc/25)\Priority Base
\Thread(KSafeSvc/26)\Priority Base
\Thread(KSafeSvc/27)\Priority Base
\Thread(KSafeSvc/28)\Priority Base
\Thread(KSafeSvc/29)\Priority Base
\Thread(KSafeSvc/30)\Priority Base
\Thread(KSafeSvc/31)\Priority Base
\Thread(KSafeSvc/32)\Priority Base
\Thread(KSafeSvc/33)\Priority Base
\Thread(KSafeSvc/34)\Priority Base
\Thread(KSafeSvc/35)\Priority Base
\Thread(KSafeSvc/36)\Priority Base
\Thread(KSafeSvc/37)\Priority Base
\Thread(KSafeSvc/38)\Priority Base
\Thread(KSafeSvc/39)\Priority Base
\Thread(KSafeSvc/40)\Priority Base
\Thread(KSafeSvc/41)\Priority Base
\Thread(KSafeSvc/42)\Priority Base
\Thread(KSafeSvc/43)\Priority Base
\Thread(KSafeSvc/44)\Priority Base
\Thread(KSafeSvc/45)\Priority Base
\Thread(KSafeSvc/46)\Priority Base
\Thread(KSafeSvc/47)\Priority Base
\Thread(KSafeSvc/48)\Priority Base
\Thread(KSafeSvc/49)\Priority Base
\Thread(KSafeSvc/50)\Priority Base
\Thread(KSafeSvc/51)\Priority Base
\Thread(KSafeSvc/52)\Priority Base
\Thread(KSafeSvc/53)\Priority Base
\Thread(kxesapp/0)\Priority Base
\Thread(kxesapp/1)\Priority Base
\Thread(kxesapp/2)\Priority Base
\Thread(kxesapp/3)\Priority Base
\Thread(kxesapp/4)\Priority Base
\Thread(kxesapp/5)\Priority Base
\Thread(kxesapp/6)\Priority Base
\Thread(kxesapp/7)\Priority Base
\Thread(kxesapp/8)\Priority Base
\Thread(kxesapp/9)\Priority Base
\Thread(kxesapp/10)\Priority Base
\Thread(kxesapp/11)\Priority Base
\Thread(kxesapp/12)\Priority Base
\Thread(kxesapp/13)\Priority Base
\Thread(kxesapp/14)\Priority Base
\Thread(kxesapp/15)\Priority Base
\Thread(kxesapp/16)\Priority Base
\Thread(kxesapp/17)\Priority Base
\Thread(kxesapp/18)\Priority Base
\Thread(kxesapp/19)\Priority Base
\Thread(kxesapp/20)\Priority Base
\Thread(kxesapp/21)\Priority Base
\Thread(kxesapp/22)\Priority Base
\Thread(spoolsv/0)\Priority Base
\Thread(spoolsv/1)\Priority Base
\Thread(spoolsv/2)\Priority Base
\Thread(spoolsv/3)\Priority Base
\Thread(spoolsv/4)\Priority Base
\Thread(spoolsv/5)\Priority Base
\Thread(spoolsv/6)\Priority Base
\Thread(spoolsv/7)\Priority Base
\Thread(spoolsv/8)\Priority Base
\Thread(spoolsv/9)\Priority Base
\Thread(spoolsv/10)\Priority Base
\Thread(spoolsv/11)\Priority Base
\Thread(spoolsv/12)\Priority Base
\Thread(spoolsv/13)\Priority Base
\Thread(alg/0)\Priority Base
\Thread(alg/1)\Priority Base
\Thread(alg/2)\Priority Base
\Thread(alg/3)\Priority Base
\Thread(alg/4)\Priority Base
\Thread(AsistService/0)\Priority Base
\Thread(AsistService/1)\Priority Base
\Thread(AsistService/2)\Priority Base
\Thread(DSRSvc/0)\Priority Base
\Thread(DSRSvc/1)\Priority Base
\Thread(DSRSvc/2)\Priority Base
\Thread(DSRSvc/3)\Priority Base
\Thread(DSRSvc/4)\Priority Base
\Thread(DSRSvc/5)\Priority Base
\Thread(DSRSvc/6)\Priority Base
\Thread(DSRSvc/7)\Priority Base
\Thread(DSRSvc/8)\Priority Base
\Thread(DSRSvc/9)\Priority Base
\Thread(DSRSvc/10)\Priority Base
\Thread(DSRSvc/11)\Priority Base
\Thread(DSRSvc/12)\Priority Base
\Thread(FolderSizeSvc/0)\Priority Base
\Thread(FolderSizeSvc/1)\Priority Base
\Thread(FolderSizeSvc/2)\Priority Base
\Thread(FolderSizeSvc/3)\Priority Base
\Thread(FolderSizeSvc/4)\Priority Base
\Thread(FolderSizeSvc/5)\Priority Base
\Thread(FolderSizeSvc/6)\Priority Base
\Thread(FolderSizeSvc/7)\Priority Base
\Thread(FolderSizeSvc/8)\Priority Base
\Thread(FolderSizeSvc/9)\Priority Base
\Thread(FolderSizeSvc/10)\Priority Base
\Thread(FolderSizeSvc/11)\Priority Base
\Thread(FolderSizeSvc/12)\Priority Base
\Thread(FolderSizeSvc/13)\Priority Base
\Thread(FolderSizeSvc/14)\Priority Base
\Thread(FolderSizeSvc/15)\Priority Base
\Thread(FolderSizeSvc/16)\Priority Base
\Thread(FolderSizeSvc/17)\Priority Base
\Thread(FolderSizeSvc/18)\Priority Base
\Thread(FolderSizeSvc/19)\Priority Base
\Thread(FolderSizeSvc/20)\Priority Base
\Thread(FolderSizeSvc/21)\Priority Base
\Thread(FolderSizeSvc/22)\Priority Base
\Thread(FolderSizeSvc/23)\Priority Base
\Thread(FolderSizeSvc/24)\Priority Base
\Thread(FolderSizeSvc/25)\Priority Base
\Thread(FolderSizeSvc/26)\Priority Base
\Thread(FolderSizeSvc/27)\Priority Base
\Thread(FolderSizeSvc/28)\Priority Base
\Thread(FolderSizeSvc/29)\Priority Base
\Thread(FolderSizeSvc/30)\Priority Base
\Thread(FolderSizeSvc/31)\Priority Base
\Thread(FolderSizeSvc/32)\Priority Base
\Thread(FolderSizeSvc/33)\Priority Base
\Thread(FolderSizeSvc/34)\Priority Base
\Thread(FolderSizeSvc/35)\Priority Base
\Thread(FolderSizeSvc/36)\Priority Base
\Thread(FolderSizeSvc/37)\Priority Base
\Thread(FolderSizeSvc/38)\Priority Base
\Thread(FolderSizeSvc/39)\Priority Base
\Thread(FolderSizeSvc/40)\Priority Base
\Thread(FolderSizeSvc/41)\Priority Base
\Thread(FolderSizeSvc/42)\Priority Base
\Thread(FolderSizeSvc/43)\Priority Base
\Thread(FolderSizeSvc/44)\Priority Base
\Thread(FolderSizeSvc/45)\Priority Base
\Thread(FolderSizeSvc/46)\Priority Base
\Thread(GSGIOSRV/0)\Priority Base
\Thread(GSGIOSRV/1)\Priority Base
\Thread(GSGIOSRV/2)\Priority Base
\Thread(upsvc/0)\Priority Base
\Thread(upsvc/1)\Priority Base
\Thread(upsvc/2)\Priority Base
\Thread(upsvc/3)\Priority Base
\Thread(upsvc/4)\Priority Base
\Thread(mdm/0)\Priority Base
\Thread(mdm/1)\Priority Base
\Thread(mdm/2)\Priority Base
\Thread(mdm/3)\Priority Base
\Thread(mdm/4)\Priority Base
\Thread(rtiosrv/0)\Priority Base
\Thread(rtiosrv/1)\Priority Base
\Thread(rtiosrv/2)\Priority Base
\Thread(rtiosrv/3)\Priority Base
\Thread(ManagerClient/0)\Priority Base
\Thread(ManagerClient/1)\Priority Base
\Thread(sqlwriter/0)\Priority Base
\Thread(sqlwriter/1)\Priority Base
\Thread(sqlwriter/2)\Priority Base
\Thread(vmware-usbarbitrator/0)\Priority Base
\Thread(vmware-usbarbitrator/1)\Priority Base
\Thread(vmnat/0)\Priority Base
\Thread(vmnat/1)\Priority Base
\Thread(vmnat/2)\Priority Base
\Thread(vmnetdhcp/0)\Priority Base
\Thread(vmnetdhcp/1)\Priority Base
\Thread(vmware-authd/0)\Priority Base
\Thread(vmware-authd/1)\Priority Base
\Thread(vmware-authd/2)\Priority Base
\Thread(vmware-authd/3)\Priority Base
\Thread(vmware-authd/4)\Priority Base
\Thread(vmware-authd/5)\Priority Base
\Thread(vmware-authd/6)\Priority Base
\Thread(explorer/0)\Priority Base
\Thread(explorer/1)\Priority Base
\Thread(explorer/2)\Priority Base
\Thread(explorer/3)\Priority Base
\Thread(explorer/4)\Priority Base
\Thread(explorer/5)\Priority Base
\Thread(explorer/6)\Priority Base
\Thread(explorer/7)\Priority Base
\Thread(explorer/8)\Priority Base
\Thread(explorer/9)\Priority Base
\Thread(explorer/10)\Priority Base
\Thread(explorer/11)\Priority Base
\Thread(explorer/12)\Priority Base
\Thread(explorer/13)\Priority Base
\Thread(explorer/14)\Priority Base
\Thread(explorer/15)\Priority Base
\Thread(explorer/16)\Priority Base
\Thread(explorer/17)\Priority Base
\Thread(explorer/18)\Priority Base
\Thread(explorer/19)\Priority Base
\Thread(explorer/20)\Priority Base
\Thread(explorer/21)\Priority Base
\Thread(explorer/22)\Priority Base
\Thread(TSVNCache/0)\Priority Base
\Thread(TSVNCache/1)\Priority Base
\Thread(TSVNCache/2)\Priority Base
\Thread(TSVNCache/3)\Priority Base
\Thread(TSVNCache/4)\Priority Base
\Thread(TSVNCache/5)\Priority Base
\Thread(TSVNCache/6)\Priority Base
\Thread(TSVNCache/7)\Priority Base
\Thread(TSVNCache/8)\Priority Base
\Thread(TSVNCache/9)\Priority Base
\Thread(TSVNCache/10)\Priority Base
\Thread(igfxtray/0)\Priority Base
\Thread(igfxtray/1)\Priority Base
\Thread(hkcmd/0)\Priority Base
\Thread(hkcmd/1)\Priority Base
\Thread(hkcmd/2)\Priority Base
\Thread(igfxpers/0)\Priority Base
\Thread(igfxpers/1)\Priority Base
\Thread(KSafeTray/0)\Priority Base
\Thread(KSafeTray/1)\Priority Base
\Thread(KSafeTray/2)\Priority Base
\Thread(KSafeTray/3)\Priority Base
\Thread(KSafeTray/4)\Priority Base
\Thread(KSafeTray/5)\Priority Base
\Thread(KSafeTray/6)\Priority Base
\Thread(KSafeTray/7)\Priority Base
\Thread(KSafeTray/8)\Priority Base
\Thread(KSafeTray/9)\Priority Base
\Thread(KSafeTray/10)\Priority Base
\Thread(KSafeTray/11)\Priority Base
\Thread(KSafeTray/12)\Priority Base
\Thread(KSafeTray/13)\Priority Base
\Thread(KSafeTray/14)\Priority Base
\Thread(KSafeTray/15)\Priority Base
\Thread(KSafeTray/16)\Priority Base
\Thread(KSafeTray/17)\Priority Base
\Thread(KSafeTray/18)\Priority Base
\Thread(KSafeTray/19)\Priority Base
\Thread(KSafeTray/20)\Priority Base
\Thread(KSafeTray/21)\Priority Base
\Thread(KSafeTray/22)\Priority Base
\Thread(KSafeTray/23)\Priority Base
\Thread(kxetray/0)\Priority Base
\Thread(kxetray/1)\Priority Base
\Thread(kxetray/2)\Priority Base
\Thread(kxetray/3)\Priority Base
\Thread(kxetray/4)\Priority Base
\Thread(kxetray/5)\Priority Base
\Thread(kxetray/6)\Priority Base
\Thread(kxetray/7)\Priority Base
\Thread(kxetray/8)\Priority Base
\Thread(kxetray/9)\Priority Base
\Thread(kxetray/10)\Priority Base
\Thread(kxetray/11)\Priority Base
\Thread(kxetray/12)\Priority Base
\Thread(kxetray/13)\Priority Base
\Thread(kxetray/14)\Priority Base
\Thread(kxetray/15)\Priority Base
\Thread(kxetray/16)\Priority Base
\Thread(kxetray/17)\Priority Base
\Thread(kxetray/18)\Priority Base
\Thread(kxetray/19)\Priority Base
\Thread(kxetray/20)\Priority Base
\Thread(kxetray/21)\Priority Base
\Thread(kxetray/22)\Priority Base
\Thread(kxetray/23)\Priority Base
\Thread(igfxsrvc/0)\Priority Base
\Thread(igfxsrvc/1)\Priority Base
\Thread(igfxsrvc/2)\Priority Base
\Thread(igfxsrvc/3)\Priority Base
\Thread(Ext2Mgr/0)\Priority Base
\Thread(RTHDCPL/0)\Priority Base
\Thread(RTHDCPL/1)\Priority Base
\Thread(RTHDCPL/2)\Priority Base
\Thread(RTHDCPL/3)\Priority Base
\Thread(OfficeIM/0)\Priority Base
\Thread(OfficeIM/1)\Priority Base
\Thread(OfficeIM/2)\Priority Base
\Thread(OfficeIM/3)\Priority Base
\Thread(OfficeIM/4)\Priority Base
\Thread(OfficeIM/5)\Priority Base
\Thread(OfficeIM/6)\Priority Base
\Thread(OfficeIM/7)\Priority Base
\Thread(OfficeIM/8)\Priority Base
\Thread(OfficeIM/9)\Priority Base
\Thread(OfficeIM/10)\Priority Base
\Thread(OfficeIM/11)\Priority Base
\Thread(OfficeIM/12)\Priority Base
\Thread(OfficeIM/13)\Priority Base
\Thread(OfficeIM/14)\Priority Base
\Thread(vmware-tray/0)\Priority Base
\Thread(vmware-tray/1)\Priority Base
\Thread(vmware-tray/2)\Priority Base
\Thread(msnmsgr/0)\Priority Base
\Thread(msnmsgr/1)\Priority Base
\Thread(msnmsgr/2)\Priority Base
\Thread(msnmsgr/3)\Priority Base
\Thread(msnmsgr/4)\Priority Base
\Thread(msnmsgr/5)\Priority Base
\Thread(msnmsgr/6)\Priority Base
\Thread(msnmsgr/7)\Priority Base
\Thread(msnmsgr/8)\Priority Base
\Thread(msnmsgr/9)\Priority Base
\Thread(msnmsgr/10)\Priority Base
\Thread(msnmsgr/11)\Priority Base
\Thread(msnmsgr/12)\Priority Base
\Thread(msnmsgr/13)\Priority Base
\Thread(msnmsgr/14)\Priority Base
\Thread(msnmsgr/15)\Priority Base
\Thread(msnmsgr/16)\Priority Base
\Thread(msnmsgr/17)\Priority Base
\Thread(msnmsgr/18)\Priority Base
\Thread(msnmsgr/19)\Priority Base
\Thread(msnmsgr/20)\Priority Base
\Thread(msnmsgr/21)\Priority Base
\Thread(msnmsgr/22)\Priority Base
\Thread(msnmsgr/23)\Priority Base
\Thread(msnmsgr/24)\Priority Base
\Thread(msnmsgr/25)\Priority Base
\Thread(msnmsgr/26)\Priority Base
\Thread(msnmsgr/27)\Priority Base
\Thread(msnmsgr/28)\Priority Base
\Thread(msnmsgr/29)\Priority Base
\Thread(msnmsgr/30)\Priority Base
\Thread(msnmsgr/31)\Priority Base
\Thread(msnmsgr/32)\Priority Base
\Thread(msnmsgr/33)\Priority Base
\Thread(msnmsgr/34)\Priority Base
\Thread(msnmsgr/35)\Priority Base
\Thread(msnmsgr/36)\Priority Base
\Thread(msnmsgr/37)\Priority Base
\Thread(msnmsgr/38)\Priority Base
\Thread(msnmsgr/39)\Priority Base
\Thread(ctfmon/0)\Priority Base
\Thread(VVCap/0)\Priority Base
\Thread(VVCap/1)\Priority Base
\Thread(wlcomm/0)\Priority Base
\Thread(wlcomm/1)\Priority Base
\Thread(wlcomm/2)\Priority Base
\Thread(wlcomm/3)\Priority Base
\Thread(wlcomm/4)\Priority Base
\Thread(wlcomm/5)\Priority Base
\Thread(wlcomm/6)\Priority Base
\Thread(wlcomm/7)\Priority Base
\Thread(wlcomm/8)\Priority Base
\Thread(wlcomm/9)\Priority Base
\Thread(wlcomm/10)\Priority Base
\Thread(wlcomm/11)\Priority Base
\Thread(wlcomm/12)\Priority Base
\Thread(wlcomm/13)\Priority Base
\Thread(wlcomm/14)\Priority Base
\Thread(WPFFontCache_v0400/0)\Priority Base
\Thread(WPFFontCache_v0400/1)\Priority Base
\Thread(WPFFontCache_v0400/2)\Priority Base
\Thread(WPFFontCache_v0400/3)\Priority Base
\Thread(WPFFontCache_v0400/4)\Priority Base
\Thread(WPFFontCache_v0400/5)\Priority Base
\Thread(WPFFontCache_v0400/6)\Priority Base
\Thread(KuGoo/0)\Priority Base
\Thread(KuGoo/1)\Priority Base
\Thread(KuGoo/2)\Priority Base
\Thread(KuGoo/3)\Priority Base
\Thread(KuGoo/4)\Priority Base
\Thread(KuGoo/5)\Priority Base
\Thread(KuGoo/6)\Priority Base
\Thread(KuGoo/7)\Priority Base
\Thread(KuGoo/8)\Priority Base
\Thread(KuGoo/9)\Priority Base
\Thread(KuGoo/10)\Priority Base
\Thread(KuGoo/11)\Priority Base
\Thread(KuGoo/12)\Priority Base
\Thread(KuGoo/13)\Priority Base
\Thread(KuGoo/14)\Priority Base
\Thread(KuGoo/15)\Priority Base
\Thread(KuGoo/16)\Priority Base
\Thread(KuGoo/17)\Priority Base
\Thread(KuGoo/18)\Priority Base
\Thread(KuGoo/19)\Priority Base
\Thread(KuGoo/20)\Priority Base
\Thread(KuGoo/21)\Priority Base
\Thread(KuGoo/22)\Priority Base
\Thread(KuGoo/23)\Priority Base
\Thread(KuGoo/24)\Priority Base
\Thread(KuGoo/25)\Priority Base
\Thread(KuGoo/26)\Priority Base
\Thread(KuGoo/27)\Priority Base
\Thread(KuGoo/28)\Priority Base
\Thread(KuGoo/29)\Priority Base
\Thread(KuGoo/30)\Priority Base
\Thread(KuGoo/31)\Priority Base
\Thread(KuGoo/32)\Priority Base
\Thread(KuGoo/33)\Priority Base
\Thread(KuGoo/34)\Priority Base
\Thread(KuGoo/35)\Priority Base
\Thread(KuGoo/36)\Priority Base
\Thread(KuGoo/37)\Priority Base
\Thread(KuGoo/38)\Priority Base
\Thread(KuGoo/39)\Priority Base
\Thread(KuGoo/40)\Priority Base
\Thread(KuGoo/41)\Priority Base
\Thread(KuGoo/42)\Priority Base
\Thread(KuGoo/43)\Priority Base
\Thread(KuGoo/44)\Priority Base
\Thread(KuGoo/45)\Priority Base
\Thread(KuGoo/46)\Priority Base
\Thread(KuGoo/47)\Priority Base
\Thread(KuGoo/48)\Priority Base
\Thread(KuGoo/49)\Priority Base
\Thread(KuGoo/50)\Priority Base
\Thread(KuGoo/51)\Priority Base
\Thread(KuGoo/52)\Priority Base
\Thread(KuGoo/53)\Priority Base
\Thread(KuGoo/54)\Priority Base
\Thread(KuGoo/55)\Priority Base
\Thread(KuGoo/56)\Priority Base
\Thread(KuGoo/57)\Priority Base
\Thread(KuGoo/58)\Priority Base
\Thread(KuGoo/59)\Priority Base
\Thread(firefox/0)\Priority Base
\Thread(firefox/1)\Priority Base
\Thread(firefox/2)\Priority Base
\Thread(firefox/3)\Priority Base
\Thread(firefox/4)\Priority Base
\Thread(firefox/5)\Priority Base
\Thread(firefox/6)\Priority Base
\Thread(firefox/7)\Priority Base
\Thread(firefox/8)\Priority Base
\Thread(firefox/9)\Priority Base
\Thread(firefox/10)\Priority Base
\Thread(firefox/11)\Priority Base
\Thread(firefox/12)\Priority Base
\Thread(firefox/13)\Priority Base
\Thread(firefox/14)\Priority Base
\Thread(firefox/15)\Priority Base
\Thread(firefox/16)\Priority Base
\Thread(firefox/17)\Priority Base
\Thread(firefox/18)\Priority Base
\Thread(firefox/19)\Priority Base
\Thread(firefox/20)\Priority Base
\Thread(firefox/21)\Priority Base
\Thread(firefox/22)\Priority Base
\Thread(firefox/23)\Priority Base
\Thread(firefox/24)\Priority Base
\Thread(vmware/0)\Priority Base
\Thread(vmware/1)\Priority Base
\Thread(vmware/2)\Priority Base
\Thread(vmware/3)\Priority Base
\Thread(vmware/4)\Priority Base
\Thread(vmware/5)\Priority Base
\Thread(vmware/6)\Priority Base
\Thread(vmware/7)\Priority Base
\Thread(taskmgr/0)\Priority Base
\Thread(taskmgr/1)\Priority Base
\Thread(taskmgr/2)\Priority Base
\Thread(SshClient/0)\Priority Base
\Thread(SshClient/1)\Priority Base
\Thread(SshClient/2)\Priority Base
\Thread(SshClient/3)\Priority Base
\Thread(SshClient/4)\Priority Base
\Thread(SshClient/5)\Priority Base
\Thread(SshClient/6)\Priority Base
\Thread(Thunder5/0)\Priority Base
\Thread(Thunder5/1)\Priority Base
\Thread(Thunder5/2)\Priority Base
\Thread(Thunder5/3)\Priority Base
\Thread(Thunder5/4)\Priority Base
\Thread(Thunder5/5)\Priority Base
\Thread(Thunder5/6)\Priority Base
\Thread(Thunder5/7)\Priority Base
\Thread(Thunder5/8)\Priority Base
\Thread(Thunder5/9)\Priority Base
\Thread(Thunder5/10)\Priority Base
\Thread(Thunder5/11)\Priority Base
\Thread(Thunder5/12)\Priority Base
\Thread(Thunder5/13)\Priority Base
\Thread(Thunder5/14)\Priority Base
\Thread(Thunder5/15)\Priority Base
\Thread(Thunder5/16)\Priority Base
\Thread(Thunder5/17)\Priority Base
\Thread(Thunder5/18)\Priority Base
\Thread(Thunder5/19)\Priority Base
\Thread(Thunder5/20)\Priority Base
\Thread(Thunder5/21)\Priority Base
\Thread(Thunder5/22)\Priority Base
\Thread(Thunder5/23)\Priority Base
\Thread(Thunder5/24)\Priority Base
\Thread(Thunder5/25)\Priority Base
\Thread(Thunder5/26)\Priority Base
\Thread(Thunder5/27)\Priority Base
\Thread(Thunder5/28)\Priority Base
\Thread(Thunder5/29)\Priority Base
\Thread(Thunder5/30)\Priority Base
\Thread(Thunder5/31)\Priority Base
\Thread(Thunder5/32)\Priority Base
\Thread(Thunder5/33)\Priority Base
\Thread(Thunder5/34)\Priority Base
\Thread(Thunder5/35)\Priority Base
\Thread(Thunder5/36)\Priority Base
\Thread(Thunder5/37)\Priority Base
\Thread(Thunder5/38)\Priority Base
\Thread(Thunder5/39)\Priority Base
\Thread(Thunder5/40)\Priority Base
\Thread(Thunder5/41)\Priority Base
\Thread(Thunder5/42)\Priority Base
\Thread(Thunder5/43)\Priority Base
\Thread(Thunder5/44)\Priority Base
\Thread(Thunder5/45)\Priority Base
\Thread(Thunder5/46)\Priority Base
\Thread(cmd/0)\Priority Base
\Thread(typeperf/0)\Priority Base
\Thread(typeperf/1)\Priority Base
\Thread(typeperf/2)\Priority Base
\Thread(typeperf/3)\Priority Base
\Thread(typeperf/4)\Priority Base
\Thread(typeperf/5)\Priority Base
\Thread(typeperf/6)\Priority Base
\Thread(typeperf/7)\Priority Base
\Thread(typeperf/8)\Priority Base
\Thread(typeperf/9)\Priority Base
\Thread(typeperf/10)\Priority Base
\Thread(_Total/_Total)\Priority Base
\Thread(Idle/0)\Start Address
\Thread(Idle/1)\Start Address
\Thread(System/0)\Start Address
\Thread(System/1)\Start Address
\Thread(System/2)\Start Address
\Thread(System/3)\Start Address
\Thread(System/4)\Start Address
\Thread(System/5)\Start Address
\Thread(System/6)\Start Address
\Thread(System/7)\Start Address
\Thread(System/8)\Start Address
\Thread(System/9)\Start Address
\Thread(System/10)\Start Address
\Thread(System/11)\Start Address
\Thread(System/12)\Start Address
\Thread(System/13)\Start Address
\Thread(System/14)\Start Address
\Thread(System/15)\Start Address
\Thread(System/16)\Start Address
\Thread(System/17)\Start Address
\Thread(System/18)\Start Address
\Thread(System/19)\Start Address
\Thread(System/20)\Start Address
\Thread(System/21)\Start Address
\Thread(System/22)\Start Address
\Thread(System/23)\Start Address
\Thread(System/24)\Start Address
\Thread(System/25)\Start Address
\Thread(System/26)\Start Address
\Thread(System/27)\Start Address
\Thread(System/28)\Start Address
\Thread(System/29)\Start Address
\Thread(System/30)\Start Address
\Thread(System/31)\Start Address
\Thread(System/32)\Start Address
\Thread(System/33)\Start Address
\Thread(System/34)\Start Address
\Thread(System/35)\Start Address
\Thread(System/36)\Start Address
\Thread(System/37)\Start Address
\Thread(System/38)\Start Address
\Thread(System/39)\Start Address
\Thread(System/40)\Start Address
\Thread(System/41)\Start Address
\Thread(System/42)\Start Address
\Thread(System/43)\Start Address
\Thread(System/44)\Start Address
\Thread(System/45)\Start Address
\Thread(System/46)\Start Address
\Thread(System/47)\Start Address
\Thread(System/48)\Start Address
\Thread(System/49)\Start Address
\Thread(System/50)\Start Address
\Thread(System/51)\Start Address
\Thread(System/52)\Start Address
\Thread(System/53)\Start Address
\Thread(System/54)\Start Address
\Thread(System/55)\Start Address
\Thread(System/56)\Start Address
\Thread(System/57)\Start Address
\Thread(System/58)\Start Address
\Thread(System/59)\Start Address
\Thread(System/60)\Start Address
\Thread(System/61)\Start Address
\Thread(System/62)\Start Address
\Thread(System/63)\Start Address
\Thread(System/64)\Start Address
\Thread(System/65)\Start Address
\Thread(System/66)\Start Address
\Thread(System/67)\Start Address
\Thread(System/68)\Start Address
\Thread(System/69)\Start Address
\Thread(System/70)\Start Address
\Thread(System/71)\Start Address
\Thread(System/72)\Start Address
\Thread(System/73)\Start Address
\Thread(System/74)\Start Address
\Thread(System/75)\Start Address
\Thread(System/76)\Start Address
\Thread(System/77)\Start Address
\Thread(System/78)\Start Address
\Thread(System/79)\Start Address
\Thread(System/80)\Start Address
\Thread(System/81)\Start Address
\Thread(System/82)\Start Address
\Thread(System/83)\Start Address
\Thread(System/84)\Start Address
\Thread(System/85)\Start Address
\Thread(System/86)\Start Address
\Thread(System/87)\Start Address
\Thread(System/88)\Start Address
\Thread(System/89)\Start Address
\Thread(System/90)\Start Address
\Thread(System/91)\Start Address
\Thread(System/92)\Start Address
\Thread(System/93)\Start Address
\Thread(System/94)\Start Address
\Thread(System/95)\Start Address
\Thread(System/96)\Start Address
\Thread(System/97)\Start Address
\Thread(smss/0)\Start Address
\Thread(smss/1)\Start Address
\Thread(smss/2)\Start Address
\Thread(csrss/0)\Start Address
\Thread(csrss/1)\Start Address
\Thread(csrss/2)\Start Address
\Thread(csrss/3)\Start Address
\Thread(csrss/4)\Start Address
\Thread(csrss/5)\Start Address
\Thread(csrss/6)\Start Address
\Thread(csrss/7)\Start Address
\Thread(csrss/8)\Start Address
\Thread(csrss/9)\Start Address
\Thread(csrss/10)\Start Address
\Thread(csrss/11)\Start Address
\Thread(winlogon/0)\Start Address
\Thread(winlogon/1)\Start Address
\Thread(winlogon/2)\Start Address
\Thread(winlogon/3)\Start Address
\Thread(winlogon/4)\Start Address
\Thread(winlogon/5)\Start Address
\Thread(winlogon/6)\Start Address
\Thread(winlogon/7)\Start Address
\Thread(winlogon/8)\Start Address
\Thread(winlogon/9)\Start Address
\Thread(winlogon/10)\Start Address
\Thread(winlogon/11)\Start Address
\Thread(winlogon/12)\Start Address
\Thread(winlogon/13)\Start Address
\Thread(winlogon/14)\Start Address
\Thread(winlogon/15)\Start Address
\Thread(winlogon/16)\Start Address
\Thread(winlogon/17)\Start Address
\Thread(winlogon/18)\Start Address
\Thread(winlogon/19)\Start Address
\Thread(winlogon/20)\Start Address
\Thread(winlogon/21)\Start Address
\Thread(services/0)\Start Address
\Thread(services/1)\Start Address
\Thread(services/2)\Start Address
\Thread(services/3)\Start Address
\Thread(services/4)\Start Address
\Thread(services/5)\Start Address
\Thread(services/6)\Start Address
\Thread(services/7)\Start Address
\Thread(services/8)\Start Address
\Thread(services/9)\Start Address
\Thread(services/10)\Start Address
\Thread(services/11)\Start Address
\Thread(services/12)\Start Address
\Thread(services/13)\Start Address
\Thread(services/14)\Start Address
\Thread(services/15)\Start Address
\Thread(lsass/0)\Start Address
\Thread(lsass/1)\Start Address
\Thread(lsass/2)\Start Address
\Thread(lsass/3)\Start Address
\Thread(lsass/4)\Start Address
\Thread(lsass/5)\Start Address
\Thread(lsass/6)\Start Address
\Thread(lsass/7)\Start Address
\Thread(lsass/8)\Start Address
\Thread(lsass/9)\Start Address
\Thread(lsass/10)\Start Address
\Thread(lsass/11)\Start Address
\Thread(lsass/12)\Start Address
\Thread(lsass/13)\Start Address
\Thread(lsass/14)\Start Address
\Thread(lsass/15)\Start Address
\Thread(lsass/16)\Start Address
\Thread(lsass/17)\Start Address
\Thread(lsass/18)\Start Address
\Thread(lsass/19)\Start Address
\Thread(lsass/20)\Start Address
\Thread(lsass/21)\Start Address
\Thread(svchost/0)\Start Address
\Thread(svchost/1)\Start Address
\Thread(svchost/2)\Start Address
\Thread(svchost/3)\Start Address
\Thread(svchost/4)\Start Address
\Thread(svchost/5)\Start Address
\Thread(svchost/6)\Start Address
\Thread(svchost/7)\Start Address
\Thread(svchost/0)\Start Address
\Thread(svchost/1)\Start Address
\Thread(svchost/2)\Start Address
\Thread(svchost/3)\Start Address
\Thread(svchost/4)\Start Address
\Thread(svchost/5)\Start Address
\Thread(svchost/6)\Start Address
\Thread(svchost/7)\Start Address
\Thread(svchost/8)\Start Address
\Thread(svchost/9)\Start Address
\Thread(svchost/10)\Start Address
\Thread(svchost/11)\Start Address
\Thread(svchost/12)\Start Address
\Thread(svchost/13)\Start Address
\Thread(svchost/14)\Start Address
\Thread(svchost/15)\Start Address
\Thread(svchost/16)\Start Address
\Thread(svchost/17)\Start Address
\Thread(svchost/18)\Start Address
\Thread(svchost/19)\Start Address
\Thread(svchost/20)\Start Address
\Thread(svchost/21)\Start Address
\Thread(svchost/22)\Start Address
\Thread(svchost/23)\Start Address
\Thread(svchost/24)\Start Address
\Thread(svchost/25)\Start Address
\Thread(svchost/26)\Start Address
\Thread(svchost/27)\Start Address
\Thread(svchost/28)\Start Address
\Thread(svchost/29)\Start Address
\Thread(svchost/30)\Start Address
\Thread(svchost/31)\Start Address
\Thread(svchost/32)\Start Address
\Thread(svchost/33)\Start Address
\Thread(svchost/34)\Start Address
\Thread(svchost/35)\Start Address
\Thread(svchost/36)\Start Address
\Thread(svchost/37)\Start Address
\Thread(svchost/38)\Start Address
\Thread(svchost/39)\Start Address
\Thread(svchost/40)\Start Address
\Thread(svchost/41)\Start Address
\Thread(svchost/42)\Start Address
\Thread(svchost/43)\Start Address
\Thread(svchost/44)\Start Address
\Thread(svchost/45)\Start Address
\Thread(svchost/46)\Start Address
\Thread(svchost/47)\Start Address
\Thread(svchost/48)\Start Address
\Thread(svchost/49)\Start Address
\Thread(svchost/50)\Start Address
\Thread(svchost/51)\Start Address
\Thread(svchost/52)\Start Address
\Thread(svchost/53)\Start Address
\Thread(svchost/54)\Start Address
\Thread(svchost/55)\Start Address
\Thread(svchost/56)\Start Address
\Thread(svchost/57)\Start Address
\Thread(svchost/58)\Start Address
\Thread(svchost/59)\Start Address
\Thread(svchost/60)\Start Address
\Thread(svchost/61)\Start Address
\Thread(svchost/62)\Start Address
\Thread(svchost/63)\Start Address
\Thread(svchost/64)\Start Address
\Thread(svchost/65)\Start Address
\Thread(svchost/66)\Start Address
\Thread(svchost/67)\Start Address
\Thread(svchost/68)\Start Address
\Thread(svchost/69)\Start Address
\Thread(svchost/70)\Start Address
\Thread(svchost/0)\Start Address
\Thread(svchost/1)\Start Address
\Thread(svchost/2)\Start Address
\Thread(svchost/3)\Start Address
\Thread(svchost/4)\Start Address
\Thread(svchost/5)\Start Address
\Thread(svchost/0)\Start Address
\Thread(svchost/1)\Start Address
\Thread(svchost/2)\Start Address
\Thread(svchost/3)\Start Address
\Thread(svchost/4)\Start Address
\Thread(svchost/5)\Start Address
\Thread(svchost/6)\Start Address
\Thread(svchost/7)\Start Address
\Thread(svchost/8)\Start Address
\Thread(svchost/9)\Start Address
\Thread(svchost/10)\Start Address
\Thread(svchost/11)\Start Address
\Thread(svchost/12)\Start Address
\Thread(svchost/13)\Start Address
\Thread(svchost/14)\Start Address
\Thread(svchost/0)\Start Address
\Thread(svchost/1)\Start Address
\Thread(svchost/2)\Start Address
\Thread(svchost/3)\Start Address
\Thread(svchost/4)\Start Address
\Thread(kxedefend/0)\Start Address
\Thread(kxedefend/1)\Start Address
\Thread(kxedefend/2)\Start Address
\Thread(kxedefend/3)\Start Address
\Thread(kxedefend/4)\Start Address
\Thread(kxedefend/5)\Start Address
\Thread(kxedefend/6)\Start Address
\Thread(kxedefend/7)\Start Address
\Thread(kxedefend/8)\Start Address
\Thread(kxedefend/9)\Start Address
\Thread(kxedefend/10)\Start Address
\Thread(kxedefend/11)\Start Address
\Thread(kxedefend/12)\Start Address
\Thread(kxedefend/13)\Start Address
\Thread(kxedefend/14)\Start Address
\Thread(kxedefend/15)\Start Address
\Thread(kxedefend/16)\Start Address
\Thread(kxedefend/17)\Start Address
\Thread(kxedefend/18)\Start Address
\Thread(kxedefend/19)\Start Address
\Thread(kxedefend/20)\Start Address
\Thread(kxedefend/21)\Start Address
\Thread(kxedefend/22)\Start Address
\Thread(kxedefend/23)\Start Address
\Thread(kxedefend/24)\Start Address
\Thread(kxedefend/25)\Start Address
\Thread(kxedefend/26)\Start Address
\Thread(kxedefend/27)\Start Address
\Thread(kxescore/0)\Start Address
\Thread(kxescore/1)\Start Address
\Thread(kxescore/2)\Start Address
\Thread(kxescore/3)\Start Address
\Thread(kxescore/4)\Start Address
\Thread(kxescore/5)\Start Address
\Thread(kxescore/6)\Start Address
\Thread(kxescore/7)\Start Address
\Thread(kxescore/8)\Start Address
\Thread(kxescore/9)\Start Address
\Thread(kxescore/10)\Start Address
\Thread(kxescore/11)\Start Address
\Thread(kxescore/12)\Start Address
\Thread(kxescore/13)\Start Address
\Thread(kxescore/14)\Start Address
\Thread(kxescore/15)\Start Address
\Thread(kxescore/16)\Start Address
\Thread(kxescore/17)\Start Address
\Thread(kxescore/18)\Start Address
\Thread(kxescore/19)\Start Address
\Thread(kxescore/20)\Start Address
\Thread(kxescore/21)\Start Address
\Thread(kxescore/22)\Start Address
\Thread(kxescore/23)\Start Address
\Thread(kxescore/24)\Start Address
\Thread(kxescore/25)\Start Address
\Thread(kxescore/26)\Start Address
\Thread(kxescore/27)\Start Address
\Thread(kxescore/28)\Start Address
\Thread(kxescore/29)\Start Address
\Thread(kxescore/30)\Start Address
\Thread(kxescore/31)\Start Address
\Thread(kxescore/32)\Start Address
\Thread(kxescore/33)\Start Address
\Thread(kxescore/34)\Start Address
\Thread(kxescore/35)\Start Address
\Thread(kxescore/36)\Start Address
\Thread(kxescore/37)\Start Address
\Thread(kxescore/38)\Start Address
\Thread(kxescore/39)\Start Address
\Thread(kxescore/40)\Start Address
\Thread(kxescore/41)\Start Address
\Thread(kxescore/42)\Start Address
\Thread(kxescore/43)\Start Address
\Thread(kxescore/44)\Start Address
\Thread(kxescore/45)\Start Address
\Thread(kxescore/46)\Start Address
\Thread(kxescore/47)\Start Address
\Thread(kxescore/48)\Start Address
\Thread(kxescore/49)\Start Address
\Thread(kxescore/50)\Start Address
\Thread(kxescore/51)\Start Address
\Thread(kxescore/52)\Start Address
\Thread(kxescore/53)\Start Address
\Thread(kxescore/54)\Start Address
\Thread(kxescore/55)\Start Address
\Thread(kxescore/56)\Start Address
\Thread(kxescore/57)\Start Address
\Thread(kxescore/58)\Start Address
\Thread(kxescore/59)\Start Address
\Thread(kxescore/60)\Start Address
\Thread(KSafeSvc/0)\Start Address
\Thread(KSafeSvc/1)\Start Address
\Thread(KSafeSvc/2)\Start Address
\Thread(KSafeSvc/3)\Start Address
\Thread(KSafeSvc/4)\Start Address
\Thread(KSafeSvc/5)\Start Address
\Thread(KSafeSvc/6)\Start Address
\Thread(KSafeSvc/7)\Start Address
\Thread(KSafeSvc/8)\Start Address
\Thread(KSafeSvc/9)\Start Address
\Thread(KSafeSvc/10)\Start Address
\Thread(KSafeSvc/11)\Start Address
\Thread(KSafeSvc/12)\Start Address
\Thread(KSafeSvc/13)\Start Address
\Thread(KSafeSvc/14)\Start Address
\Thread(KSafeSvc/15)\Start Address
\Thread(KSafeSvc/16)\Start Address
\Thread(KSafeSvc/17)\Start Address
\Thread(KSafeSvc/18)\Start Address
\Thread(KSafeSvc/19)\Start Address
\Thread(KSafeSvc/20)\Start Address
\Thread(KSafeSvc/21)\Start Address
\Thread(KSafeSvc/22)\Start Address
\Thread(KSafeSvc/23)\Start Address
\Thread(KSafeSvc/24)\Start Address
\Thread(KSafeSvc/25)\Start Address
\Thread(KSafeSvc/26)\Start Address
\Thread(KSafeSvc/27)\Start Address
\Thread(KSafeSvc/28)\Start Address
\Thread(KSafeSvc/29)\Start Address
\Thread(KSafeSvc/30)\Start Address
\Thread(KSafeSvc/31)\Start Address
\Thread(KSafeSvc/32)\Start Address
\Thread(KSafeSvc/33)\Start Address
\Thread(KSafeSvc/34)\Start Address
\Thread(KSafeSvc/35)\Start Address
\Thread(KSafeSvc/36)\Start Address
\Thread(KSafeSvc/37)\Start Address
\Thread(KSafeSvc/38)\Start Address
\Thread(KSafeSvc/39)\Start Address
\Thread(KSafeSvc/40)\Start Address
\Thread(KSafeSvc/41)\Start Address
\Thread(KSafeSvc/42)\Start Address
\Thread(KSafeSvc/43)\Start Address
\Thread(KSafeSvc/44)\Start Address
\Thread(KSafeSvc/45)\Start Address
\Thread(KSafeSvc/46)\Start Address
\Thread(KSafeSvc/47)\Start Address
\Thread(KSafeSvc/48)\Start Address
\Thread(KSafeSvc/49)\Start Address
\Thread(KSafeSvc/50)\Start Address
\Thread(KSafeSvc/51)\Start Address
\Thread(KSafeSvc/52)\Start Address
\Thread(KSafeSvc/53)\Start Address
\Thread(kxesapp/0)\Start Address
\Thread(kxesapp/1)\Start Address
\Thread(kxesapp/2)\Start Address
\Thread(kxesapp/3)\Start Address
\Thread(kxesapp/4)\Start Address
\Thread(kxesapp/5)\Start Address
\Thread(kxesapp/6)\Start Address
\Thread(kxesapp/7)\Start Address
\Thread(kxesapp/8)\Start Address
\Thread(kxesapp/9)\Start Address
\Thread(kxesapp/10)\Start Address
\Thread(kxesapp/11)\Start Address
\Thread(kxesapp/12)\Start Address
\Thread(kxesapp/13)\Start Address
\Thread(kxesapp/14)\Start Address
\Thread(kxesapp/15)\Start Address
\Thread(kxesapp/16)\Start Address
\Thread(kxesapp/17)\Start Address
\Thread(kxesapp/18)\Start Address
\Thread(kxesapp/19)\Start Address
\Thread(kxesapp/20)\Start Address
\Thread(kxesapp/21)\Start Address
\Thread(kxesapp/22)\Start Address
\Thread(spoolsv/0)\Start Address
\Thread(spoolsv/1)\Start Address
\Thread(spoolsv/2)\Start Address
\Thread(spoolsv/3)\Start Address
\Thread(spoolsv/4)\Start Address
\Thread(spoolsv/5)\Start Address
\Thread(spoolsv/6)\Start Address
\Thread(spoolsv/7)\Start Address
\Thread(spoolsv/8)\Start Address
\Thread(spoolsv/9)\Start Address
\Thread(spoolsv/10)\Start Address
\Thread(spoolsv/11)\Start Address
\Thread(spoolsv/12)\Start Address
\Thread(spoolsv/13)\Start Address
\Thread(alg/0)\Start Address
\Thread(alg/1)\Start Address
\Thread(alg/2)\Start Address
\Thread(alg/3)\Start Address
\Thread(alg/4)\Start Address
\Thread(AsistService/0)\Start Address
\Thread(AsistService/1)\Start Address
\Thread(AsistService/2)\Start Address
\Thread(DSRSvc/0)\Start Address
\Thread(DSRSvc/1)\Start Address
\Thread(DSRSvc/2)\Start Address
\Thread(DSRSvc/3)\Start Address
\Thread(DSRSvc/4)\Start Address
\Thread(DSRSvc/5)\Start Address
\Thread(DSRSvc/6)\Start Address
\Thread(DSRSvc/7)\Start Address
\Thread(DSRSvc/8)\Start Address
\Thread(DSRSvc/9)\Start Address
\Thread(DSRSvc/10)\Start Address
\Thread(DSRSvc/11)\Start Address
\Thread(DSRSvc/12)\Start Address
\Thread(FolderSizeSvc/0)\Start Address
\Thread(FolderSizeSvc/1)\Start Address
\Thread(FolderSizeSvc/2)\Start Address
\Thread(FolderSizeSvc/3)\Start Address
\Thread(FolderSizeSvc/4)\Start Address
\Thread(FolderSizeSvc/5)\Start Address
\Thread(FolderSizeSvc/6)\Start Address
\Thread(FolderSizeSvc/7)\Start Address
\Thread(FolderSizeSvc/8)\Start Address
\Thread(FolderSizeSvc/9)\Start Address
\Thread(FolderSizeSvc/10)\Start Address
\Thread(FolderSizeSvc/11)\Start Address
\Thread(FolderSizeSvc/12)\Start Address
\Thread(FolderSizeSvc/13)\Start Address
\Thread(FolderSizeSvc/14)\Start Address
\Thread(FolderSizeSvc/15)\Start Address
\Thread(FolderSizeSvc/16)\Start Address
\Thread(FolderSizeSvc/17)\Start Address
\Thread(FolderSizeSvc/18)\Start Address
\Thread(FolderSizeSvc/19)\Start Address
\Thread(FolderSizeSvc/20)\Start Address
\Thread(FolderSizeSvc/21)\Start Address
\Thread(FolderSizeSvc/22)\Start Address
\Thread(FolderSizeSvc/23)\Start Address
\Thread(FolderSizeSvc/24)\Start Address
\Thread(FolderSizeSvc/25)\Start Address
\Thread(FolderSizeSvc/26)\Start Address
\Thread(FolderSizeSvc/27)\Start Address
\Thread(FolderSizeSvc/28)\Start Address
\Thread(FolderSizeSvc/29)\Start Address
\Thread(FolderSizeSvc/30)\Start Address
\Thread(FolderSizeSvc/31)\Start Address
\Thread(FolderSizeSvc/32)\Start Address
\Thread(FolderSizeSvc/33)\Start Address
\Thread(FolderSizeSvc/34)\Start Address
\Thread(FolderSizeSvc/35)\Start Address
\Thread(FolderSizeSvc/36)\Start Address
\Thread(FolderSizeSvc/37)\Start Address
\Thread(FolderSizeSvc/38)\Start Address
\Thread(FolderSizeSvc/39)\Start Address
\Thread(FolderSizeSvc/40)\Start Address
\Thread(FolderSizeSvc/41)\Start Address
\Thread(FolderSizeSvc/42)\Start Address
\Thread(FolderSizeSvc/43)\Start Address
\Thread(FolderSizeSvc/44)\Start Address
\Thread(FolderSizeSvc/45)\Start Address
\Thread(FolderSizeSvc/46)\Start Address
\Thread(GSGIOSRV/0)\Start Address
\Thread(GSGIOSRV/1)\Start Address
\Thread(GSGIOSRV/2)\Start Address
\Thread(upsvc/0)\Start Address
\Thread(upsvc/1)\Start Address
\Thread(upsvc/2)\Start Address
\Thread(upsvc/3)\Start Address
\Thread(upsvc/4)\Start Address
\Thread(mdm/0)\Start Address
\Thread(mdm/1)\Start Address
\Thread(mdm/2)\Start Address
\Thread(mdm/3)\Start Address
\Thread(mdm/4)\Start Address
\Thread(rtiosrv/0)\Start Address
\Thread(rtiosrv/1)\Start Address
\Thread(rtiosrv/2)\Start Address
\Thread(rtiosrv/3)\Start Address
\Thread(ManagerClient/0)\Start Address
\Thread(ManagerClient/1)\Start Address
\Thread(sqlwriter/0)\Start Address
\Thread(sqlwriter/1)\Start Address
\Thread(sqlwriter/2)\Start Address
\Thread(vmware-usbarbitrator/0)\Start Address
\Thread(vmware-usbarbitrator/1)\Start Address
\Thread(vmnat/0)\Start Address
\Thread(vmnat/1)\Start Address
\Thread(vmnat/2)\Start Address
\Thread(vmnetdhcp/0)\Start Address
\Thread(vmnetdhcp/1)\Start Address
\Thread(vmware-authd/0)\Start Address
\Thread(vmware-authd/1)\Start Address
\Thread(vmware-authd/2)\Start Address
\Thread(vmware-authd/3)\Start Address
\Thread(vmware-authd/4)\Start Address
\Thread(vmware-authd/5)\Start Address
\Thread(vmware-authd/6)\Start Address
\Thread(explorer/0)\Start Address
\Thread(explorer/1)\Start Address
\Thread(explorer/2)\Start Address
\Thread(explorer/3)\Start Address
\Thread(explorer/4)\Start Address
\Thread(explorer/5)\Start Address
\Thread(explorer/6)\Start Address
\Thread(explorer/7)\Start Address
\Thread(explorer/8)\Start Address
\Thread(explorer/9)\Start Address
\Thread(explorer/10)\Start Address
\Thread(explorer/11)\Start Address
\Thread(explorer/12)\Start Address
\Thread(explorer/13)\Start Address
\Thread(explorer/14)\Start Address
\Thread(explorer/15)\Start Address
\Thread(explorer/16)\Start Address
\Thread(explorer/17)\Start Address
\Thread(explorer/18)\Start Address
\Thread(explorer/19)\Start Address
\Thread(explorer/20)\Start Address
\Thread(explorer/21)\Start Address
\Thread(explorer/22)\Start Address
\Thread(TSVNCache/0)\Start Address
\Thread(TSVNCache/1)\Start Address
\Thread(TSVNCache/2)\Start Address
\Thread(TSVNCache/3)\Start Address
\Thread(TSVNCache/4)\Start Address
\Thread(TSVNCache/5)\Start Address
\Thread(TSVNCache/6)\Start Address
\Thread(TSVNCache/7)\Start Address
\Thread(TSVNCache/8)\Start Address
\Thread(TSVNCache/9)\Start Address
\Thread(TSVNCache/10)\Start Address
\Thread(igfxtray/0)\Start Address
\Thread(igfxtray/1)\Start Address
\Thread(hkcmd/0)\Start Address
\Thread(hkcmd/1)\Start Address
\Thread(hkcmd/2)\Start Address
\Thread(igfxpers/0)\Start Address
\Thread(igfxpers/1)\Start Address
\Thread(KSafeTray/0)\Start Address
\Thread(KSafeTray/1)\Start Address
\Thread(KSafeTray/2)\Start Address
\Thread(KSafeTray/3)\Start Address
\Thread(KSafeTray/4)\Start Address
\Thread(KSafeTray/5)\Start Address
\Thread(KSafeTray/6)\Start Address
\Thread(KSafeTray/7)\Start Address
\Thread(KSafeTray/8)\Start Address
\Thread(KSafeTray/9)\Start Address
\Thread(KSafeTray/10)\Start Address
\Thread(KSafeTray/11)\Start Address
\Thread(KSafeTray/12)\Start Address
\Thread(KSafeTray/13)\Start Address
\Thread(KSafeTray/14)\Start Address
\Thread(KSafeTray/15)\Start Address
\Thread(KSafeTray/16)\Start Address
\Thread(KSafeTray/17)\Start Address
\Thread(KSafeTray/18)\Start Address
\Thread(KSafeTray/19)\Start Address
\Thread(KSafeTray/20)\Start Address
\Thread(KSafeTray/21)\Start Address
\Thread(KSafeTray/22)\Start Address
\Thread(KSafeTray/23)\Start Address
\Thread(kxetray/0)\Start Address
\Thread(kxetray/1)\Start Address
\Thread(kxetray/2)\Start Address
\Thread(kxetray/3)\Start Address
\Thread(kxetray/4)\Start Address
\Thread(kxetray/5)\Start Address
\Thread(kxetray/6)\Start Address
\Thread(kxetray/7)\Start Address
\Thread(kxetray/8)\Start Address
\Thread(kxetray/9)\Start Address
\Thread(kxetray/10)\Start Address
\Thread(kxetray/11)\Start Address
\Thread(kxetray/12)\Start Address
\Thread(kxetray/13)\Start Address
\Thread(kxetray/14)\Start Address
\Thread(kxetray/15)\Start Address
\Thread(kxetray/16)\Start Address
\Thread(kxetray/17)\Start Address
\Thread(kxetray/18)\Start Address
\Thread(kxetray/19)\Start Address
\Thread(kxetray/20)\Start Address
\Thread(kxetray/21)\Start Address
\Thread(kxetray/22)\Start Address
\Thread(kxetray/23)\Start Address
\Thread(igfxsrvc/0)\Start Address
\Thread(igfxsrvc/1)\Start Address
\Thread(igfxsrvc/2)\Start Address
\Thread(igfxsrvc/3)\Start Address
\Thread(Ext2Mgr/0)\Start Address
\Thread(RTHDCPL/0)\Start Address
\Thread(RTHDCPL/1)\Start Address
\Thread(RTHDCPL/2)\Start Address
\Thread(RTHDCPL/3)\Start Address
\Thread(OfficeIM/0)\Start Address
\Thread(OfficeIM/1)\Start Address
\Thread(OfficeIM/2)\Start Address
\Thread(OfficeIM/3)\Start Address
\Thread(OfficeIM/4)\Start Address
\Thread(OfficeIM/5)\Start Address
\Thread(OfficeIM/6)\Start Address
\Thread(OfficeIM/7)\Start Address
\Thread(OfficeIM/8)\Start Address
\Thread(OfficeIM/9)\Start Address
\Thread(OfficeIM/10)\Start Address
\Thread(OfficeIM/11)\Start Address
\Thread(OfficeIM/12)\Start Address
\Thread(OfficeIM/13)\Start Address
\Thread(OfficeIM/14)\Start Address
\Thread(vmware-tray/0)\Start Address
\Thread(vmware-tray/1)\Start Address
\Thread(vmware-tray/2)\Start Address
\Thread(msnmsgr/0)\Start Address
\Thread(msnmsgr/1)\Start Address
\Thread(msnmsgr/2)\Start Address
\Thread(msnmsgr/3)\Start Address
\Thread(msnmsgr/4)\Start Address
\Thread(msnmsgr/5)\Start Address
\Thread(msnmsgr/6)\Start Address
\Thread(msnmsgr/7)\Start Address
\Thread(msnmsgr/8)\Start Address
\Thread(msnmsgr/9)\Start Address
\Thread(msnmsgr/10)\Start Address
\Thread(msnmsgr/11)\Start Address
\Thread(msnmsgr/12)\Start Address
\Thread(msnmsgr/13)\Start Address
\Thread(msnmsgr/14)\Start Address
\Thread(msnmsgr/15)\Start Address
\Thread(msnmsgr/16)\Start Address
\Thread(msnmsgr/17)\Start Address
\Thread(msnmsgr/18)\Start Address
\Thread(msnmsgr/19)\Start Address
\Thread(msnmsgr/20)\Start Address
\Thread(msnmsgr/21)\Start Address
\Thread(msnmsgr/22)\Start Address
\Thread(msnmsgr/23)\Start Address
\Thread(msnmsgr/24)\Start Address
\Thread(msnmsgr/25)\Start Address
\Thread(msnmsgr/26)\Start Address
\Thread(msnmsgr/27)\Start Address
\Thread(msnmsgr/28)\Start Address
\Thread(msnmsgr/29)\Start Address
\Thread(msnmsgr/30)\Start Address
\Thread(msnmsgr/31)\Start Address
\Thread(msnmsgr/32)\Start Address
\Thread(msnmsgr/33)\Start Address
\Thread(msnmsgr/34)\Start Address
\Thread(msnmsgr/35)\Start Address
\Thread(msnmsgr/36)\Start Address
\Thread(msnmsgr/37)\Start Address
\Thread(msnmsgr/38)\Start Address
\Thread(msnmsgr/39)\Start Address
\Thread(ctfmon/0)\Start Address
\Thread(VVCap/0)\Start Address
\Thread(VVCap/1)\Start Address
\Thread(wlcomm/0)\Start Address
\Thread(wlcomm/1)\Start Address
\Thread(wlcomm/2)\Start Address
\Thread(wlcomm/3)\Start Address
\Thread(wlcomm/4)\Start Address
\Thread(wlcomm/5)\Start Address
\Thread(wlcomm/6)\Start Address
\Thread(wlcomm/7)\Start Address
\Thread(wlcomm/8)\Start Address
\Thread(wlcomm/9)\Start Address
\Thread(wlcomm/10)\Start Address
\Thread(wlcomm/11)\Start Address
\Thread(wlcomm/12)\Start Address
\Thread(wlcomm/13)\Start Address
\Thread(wlcomm/14)\Start Address
\Thread(WPFFontCache_v0400/0)\Start Address
\Thread(WPFFontCache_v0400/1)\Start Address
\Thread(WPFFontCache_v0400/2)\Start Address
\Thread(WPFFontCache_v0400/3)\Start Address
\Thread(WPFFontCache_v0400/4)\Start Address
\Thread(WPFFontCache_v0400/5)\Start Address
\Thread(WPFFontCache_v0400/6)\Start Address
\Thread(KuGoo/0)\Start Address
\Thread(KuGoo/1)\Start Address
\Thread(KuGoo/2)\Start Address
\Thread(KuGoo/3)\Start Address
\Thread(KuGoo/4)\Start Address
\Thread(KuGoo/5)\Start Address
\Thread(KuGoo/6)\Start Address
\Thread(KuGoo/7)\Start Address
\Thread(KuGoo/8)\Start Address
\Thread(KuGoo/9)\Start Address
\Thread(KuGoo/10)\Start Address
\Thread(KuGoo/11)\Start Address
\Thread(KuGoo/12)\Start Address
\Thread(KuGoo/13)\Start Address
\Thread(KuGoo/14)\Start Address
\Thread(KuGoo/15)\Start Address
\Thread(KuGoo/16)\Start Address
\Thread(KuGoo/17)\Start Address
\Thread(KuGoo/18)\Start Address
\Thread(KuGoo/19)\Start Address
\Thread(KuGoo/20)\Start Address
\Thread(KuGoo/21)\Start Address
\Thread(KuGoo/22)\Start Address
\Thread(KuGoo/23)\Start Address
\Thread(KuGoo/24)\Start Address
\Thread(KuGoo/25)\Start Address
\Thread(KuGoo/26)\Start Address
\Thread(KuGoo/27)\Start Address
\Thread(KuGoo/28)\Start Address
\Thread(KuGoo/29)\Start Address
\Thread(KuGoo/30)\Start Address
\Thread(KuGoo/31)\Start Address
\Thread(KuGoo/32)\Start Address
\Thread(KuGoo/33)\Start Address
\Thread(KuGoo/34)\Start Address
\Thread(KuGoo/35)\Start Address
\Thread(KuGoo/36)\Start Address
\Thread(KuGoo/37)\Start Address
\Thread(KuGoo/38)\Start Address
\Thread(KuGoo/39)\Start Address
\Thread(KuGoo/40)\Start Address
\Thread(KuGoo/41)\Start Address
\Thread(KuGoo/42)\Start Address
\Thread(KuGoo/43)\Start Address
\Thread(KuGoo/44)\Start Address
\Thread(KuGoo/45)\Start Address
\Thread(KuGoo/46)\Start Address
\Thread(KuGoo/47)\Start Address
\Thread(KuGoo/48)\Start Address
\Thread(KuGoo/49)\Start Address
\Thread(KuGoo/50)\Start Address
\Thread(KuGoo/51)\Start Address
\Thread(KuGoo/52)\Start Address
\Thread(KuGoo/53)\Start Address
\Thread(KuGoo/54)\Start Address
\Thread(KuGoo/55)\Start Address
\Thread(KuGoo/56)\Start Address
\Thread(KuGoo/57)\Start Address
\Thread(KuGoo/58)\Start Address
\Thread(KuGoo/59)\Start Address
\Thread(firefox/0)\Start Address
\Thread(firefox/1)\Start Address
\Thread(firefox/2)\Start Address
\Thread(firefox/3)\Start Address
\Thread(firefox/4)\Start Address
\Thread(firefox/5)\Start Address
\Thread(firefox/6)\Start Address
\Thread(firefox/7)\Start Address
\Thread(firefox/8)\Start Address
\Thread(firefox/9)\Start Address
\Thread(firefox/10)\Start Address
\Thread(firefox/11)\Start Address
\Thread(firefox/12)\Start Address
\Thread(firefox/13)\Start Address
\Thread(firefox/14)\Start Address
\Thread(firefox/15)\Start Address
\Thread(firefox/16)\Start Address
\Thread(firefox/17)\Start Address
\Thread(firefox/18)\Start Address
\Thread(firefox/19)\Start Address
\Thread(firefox/20)\Start Address
\Thread(firefox/21)\Start Address
\Thread(firefox/22)\Start Address
\Thread(firefox/23)\Start Address
\Thread(firefox/24)\Start Address
\Thread(vmware/0)\Start Address
\Thread(vmware/1)\Start Address
\Thread(vmware/2)\Start Address
\Thread(vmware/3)\Start Address
\Thread(vmware/4)\Start Address
\Thread(vmware/5)\Start Address
\Thread(vmware/6)\Start Address
\Thread(vmware/7)\Start Address
\Thread(taskmgr/0)\Start Address
\Thread(taskmgr/1)\Start Address
\Thread(taskmgr/2)\Start Address
\Thread(SshClient/0)\Start Address
\Thread(SshClient/1)\Start Address
\Thread(SshClient/2)\Start Address
\Thread(SshClient/3)\Start Address
\Thread(SshClient/4)\Start Address
\Thread(SshClient/5)\Start Address
\Thread(SshClient/6)\Start Address
\Thread(Thunder5/0)\Start Address
\Thread(Thunder5/1)\Start Address
\Thread(Thunder5/2)\Start Address
\Thread(Thunder5/3)\Start Address
\Thread(Thunder5/4)\Start Address
\Thread(Thunder5/5)\Start Address
\Thread(Thunder5/6)\Start Address
\Thread(Thunder5/7)\Start Address
\Thread(Thunder5/8)\Start Address
\Thread(Thunder5/9)\Start Address
\Thread(Thunder5/10)\Start Address
\Thread(Thunder5/11)\Start Address
\Thread(Thunder5/12)\Start Address
\Thread(Thunder5/13)\Start Address
\Thread(Thunder5/14)\Start Address
\Thread(Thunder5/15)\Start Address
\Thread(Thunder5/16)\Start Address
\Thread(Thunder5/17)\Start Address
\Thread(Thunder5/18)\Start Address
\Thread(Thunder5/19)\Start Address
\Thread(Thunder5/20)\Start Address
\Thread(Thunder5/21)\Start Address
\Thread(Thunder5/22)\Start Address
\Thread(Thunder5/23)\Start Address
\Thread(Thunder5/24)\Start Address
\Thread(Thunder5/25)\Start Address
\Thread(Thunder5/26)\Start Address
\Thread(Thunder5/27)\Start Address
\Thread(Thunder5/28)\Start Address
\Thread(Thunder5/29)\Start Address
\Thread(Thunder5/30)\Start Address
\Thread(Thunder5/31)\Start Address
\Thread(Thunder5/32)\Start Address
\Thread(Thunder5/33)\Start Address
\Thread(Thunder5/34)\Start Address
\Thread(Thunder5/35)\Start Address
\Thread(Thunder5/36)\Start Address
\Thread(Thunder5/37)\Start Address
\Thread(Thunder5/38)\Start Address
\Thread(Thunder5/39)\Start Address
\Thread(Thunder5/40)\Start Address
\Thread(Thunder5/41)\Start Address
\Thread(Thunder5/42)\Start Address
\Thread(Thunder5/43)\Start Address
\Thread(Thunder5/44)\Start Address
\Thread(Thunder5/45)\Start Address
\Thread(Thunder5/46)\Start Address
\Thread(cmd/0)\Start Address
\Thread(typeperf/0)\Start Address
\Thread(typeperf/1)\Start Address
\Thread(typeperf/2)\Start Address
\Thread(typeperf/3)\Start Address
\Thread(typeperf/4)\Start Address
\Thread(typeperf/5)\Start Address
\Thread(typeperf/6)\Start Address
\Thread(typeperf/7)\Start Address
\Thread(typeperf/8)\Start Address
\Thread(typeperf/9)\Start Address
\Thread(typeperf/10)\Start Address
\Thread(_Total/_Total)\Start Address
\Thread(Idle/0)\Thread State
\Thread(Idle/1)\Thread State
\Thread(System/0)\Thread State
\Thread(System/1)\Thread State
\Thread(System/2)\Thread State
\Thread(System/3)\Thread State
\Thread(System/4)\Thread State
\Thread(System/5)\Thread State
\Thread(System/6)\Thread State
\Thread(System/7)\Thread State
\Thread(System/8)\Thread State
\Thread(System/9)\Thread State
\Thread(System/10)\Thread State
\Thread(System/11)\Thread State
\Thread(System/12)\Thread State
\Thread(System/13)\Thread State
\Thread(System/14)\Thread State
\Thread(System/15)\Thread State
\Thread(System/16)\Thread State
\Thread(System/17)\Thread State
\Thread(System/18)\Thread State
\Thread(System/19)\Thread State
\Thread(System/20)\Thread State
\Thread(System/21)\Thread State
\Thread(System/22)\Thread State
\Thread(System/23)\Thread State
\Thread(System/24)\Thread State
\Thread(System/25)\Thread State
\Thread(System/26)\Thread State
\Thread(System/27)\Thread State
\Thread(System/28)\Thread State
\Thread(System/29)\Thread State
\Thread(System/30)\Thread State
\Thread(System/31)\Thread State
\Thread(System/32)\Thread State
\Thread(System/33)\Thread State
\Thread(System/34)\Thread State
\Thread(System/35)\Thread State
\Thread(System/36)\Thread State
\Thread(System/37)\Thread State
\Thread(System/38)\Thread State
\Thread(System/39)\Thread State
\Thread(System/40)\Thread State
\Thread(System/41)\Thread State
\Thread(System/42)\Thread State
\Thread(System/43)\Thread State
\Thread(System/44)\Thread State
\Thread(System/45)\Thread State
\Thread(System/46)\Thread State
\Thread(System/47)\Thread State
\Thread(System/48)\Thread State
\Thread(System/49)\Thread State
\Thread(System/50)\Thread State
\Thread(System/51)\Thread State
\Thread(System/52)\Thread State
\Thread(System/53)\Thread State
\Thread(System/54)\Thread State
\Thread(System/55)\Thread State
\Thread(System/56)\Thread State
\Thread(System/57)\Thread State
\Thread(System/58)\Thread State
\Thread(System/59)\Thread State
\Thread(System/60)\Thread State
\Thread(System/61)\Thread State
\Thread(System/62)\Thread State
\Thread(System/63)\Thread State
\Thread(System/64)\Thread State
\Thread(System/65)\Thread State
\Thread(System/66)\Thread State
\Thread(System/67)\Thread State
\Thread(System/68)\Thread State
\Thread(System/69)\Thread State
\Thread(System/70)\Thread State
\Thread(System/71)\Thread State
\Thread(System/72)\Thread State
\Thread(System/73)\Thread State
\Thread(System/74)\Thread State
\Thread(System/75)\Thread State
\Thread(System/76)\Thread State
\Thread(System/77)\Thread State
\Thread(System/78)\Thread State
\Thread(System/79)\Thread State
\Thread(System/80)\Thread State
\Thread(System/81)\Thread State
\Thread(System/82)\Thread State
\Thread(System/83)\Thread State
\Thread(System/84)\Thread State
\Thread(System/85)\Thread State
\Thread(System/86)\Thread State
\Thread(System/87)\Thread State
\Thread(System/88)\Thread State
\Thread(System/89)\Thread State
\Thread(System/90)\Thread State
\Thread(System/91)\Thread State
\Thread(System/92)\Thread State
\Thread(System/93)\Thread State
\Thread(System/94)\Thread State
\Thread(System/95)\Thread State
\Thread(System/96)\Thread State
\Thread(System/97)\Thread State
\Thread(smss/0)\Thread State
\Thread(smss/1)\Thread State
\Thread(smss/2)\Thread State
\Thread(csrss/0)\Thread State
\Thread(csrss/1)\Thread State
\Thread(csrss/2)\Thread State
\Thread(csrss/3)\Thread State
\Thread(csrss/4)\Thread State
\Thread(csrss/5)\Thread State
\Thread(csrss/6)\Thread State
\Thread(csrss/7)\Thread State
\Thread(csrss/8)\Thread State
\Thread(csrss/9)\Thread State
\Thread(csrss/10)\Thread State
\Thread(csrss/11)\Thread State
\Thread(winlogon/0)\Thread State
\Thread(winlogon/1)\Thread State
\Thread(winlogon/2)\Thread State
\Thread(winlogon/3)\Thread State
\Thread(winlogon/4)\Thread State
\Thread(winlogon/5)\Thread State
\Thread(winlogon/6)\Thread State
\Thread(winlogon/7)\Thread State
\Thread(winlogon/8)\Thread State
\Thread(winlogon/9)\Thread State
\Thread(winlogon/10)\Thread State
\Thread(winlogon/11)\Thread State
\Thread(winlogon/12)\Thread State
\Thread(winlogon/13)\Thread State
\Thread(winlogon/14)\Thread State
\Thread(winlogon/15)\Thread State
\Thread(winlogon/16)\Thread State
\Thread(winlogon/17)\Thread State
\Thread(winlogon/18)\Thread State
\Thread(winlogon/19)\Thread State
\Thread(winlogon/20)\Thread State
\Thread(winlogon/21)\Thread State
\Thread(services/0)\Thread State
\Thread(services/1)\Thread State
\Thread(services/2)\Thread State
\Thread(services/3)\Thread State
\Thread(services/4)\Thread State
\Thread(services/5)\Thread State
\Thread(services/6)\Thread State
\Thread(services/7)\Thread State
\Thread(services/8)\Thread State
\Thread(services/9)\Thread State
\Thread(services/10)\Thread State
\Thread(services/11)\Thread State
\Thread(services/12)\Thread State
\Thread(services/13)\Thread State
\Thread(services/14)\Thread State
\Thread(services/15)\Thread State
\Thread(lsass/0)\Thread State
\Thread(lsass/1)\Thread State
\Thread(lsass/2)\Thread State
\Thread(lsass/3)\Thread State
\Thread(lsass/4)\Thread State
\Thread(lsass/5)\Thread State
\Thread(lsass/6)\Thread State
\Thread(lsass/7)\Thread State
\Thread(lsass/8)\Thread State
\Thread(lsass/9)\Thread State
\Thread(lsass/10)\Thread State
\Thread(lsass/11)\Thread State
\Thread(lsass/12)\Thread State
\Thread(lsass/13)\Thread State
\Thread(lsass/14)\Thread State
\Thread(lsass/15)\Thread State
\Thread(lsass/16)\Thread State
\Thread(lsass/17)\Thread State
\Thread(lsass/18)\Thread State
\Thread(lsass/19)\Thread State
\Thread(lsass/20)\Thread State
\Thread(lsass/21)\Thread State
\Thread(svchost/0)\Thread State
\Thread(svchost/1)\Thread State
\Thread(svchost/2)\Thread State
\Thread(svchost/3)\Thread State
\Thread(svchost/4)\Thread State
\Thread(svchost/5)\Thread State
\Thread(svchost/6)\Thread State
\Thread(svchost/7)\Thread State
\Thread(svchost/0)\Thread State
\Thread(svchost/1)\Thread State
\Thread(svchost/2)\Thread State
\Thread(svchost/3)\Thread State
\Thread(svchost/4)\Thread State
\Thread(svchost/5)\Thread State
\Thread(svchost/6)\Thread State
\Thread(svchost/7)\Thread State
\Thread(svchost/8)\Thread State
\Thread(svchost/9)\Thread State
\Thread(svchost/10)\Thread State
\Thread(svchost/11)\Thread State
\Thread(svchost/12)\Thread State
\Thread(svchost/13)\Thread State
\Thread(svchost/14)\Thread State
\Thread(svchost/15)\Thread State
\Thread(svchost/16)\Thread State
\Thread(svchost/17)\Thread State
\Thread(svchost/18)\Thread State
\Thread(svchost/19)\Thread State
\Thread(svchost/20)\Thread State
\Thread(svchost/21)\Thread State
\Thread(svchost/22)\Thread State
\Thread(svchost/23)\Thread State
\Thread(svchost/24)\Thread State
\Thread(svchost/25)\Thread State
\Thread(svchost/26)\Thread State
\Thread(svchost/27)\Thread State
\Thread(svchost/28)\Thread State
\Thread(svchost/29)\Thread State
\Thread(svchost/30)\Thread State
\Thread(svchost/31)\Thread State
\Thread(svchost/32)\Thread State
\Thread(svchost/33)\Thread State
\Thread(svchost/34)\Thread State
\Thread(svchost/35)\Thread State
\Thread(svchost/36)\Thread State
\Thread(svchost/37)\Thread State
\Thread(svchost/38)\Thread State
\Thread(svchost/39)\Thread State
\Thread(svchost/40)\Thread State
\Thread(svchost/41)\Thread State
\Thread(svchost/42)\Thread State
\Thread(svchost/43)\Thread State
\Thread(svchost/44)\Thread State
\Thread(svchost/45)\Thread State
\Thread(svchost/46)\Thread State
\Thread(svchost/47)\Thread State
\Thread(svchost/48)\Thread State
\Thread(svchost/49)\Thread State
\Thread(svchost/50)\Thread State
\Thread(svchost/51)\Thread State
\Thread(svchost/52)\Thread State
\Thread(svchost/53)\Thread State
\Thread(svchost/54)\Thread State
\Thread(svchost/55)\Thread State
\Thread(svchost/56)\Thread State
\Thread(svchost/57)\Thread State
\Thread(svchost/58)\Thread State
\Thread(svchost/59)\Thread State
\Thread(svchost/60)\Thread State
\Thread(svchost/61)\Thread State
\Thread(svchost/62)\Thread State
\Thread(svchost/63)\Thread State
\Thread(svchost/64)\Thread State
\Thread(svchost/65)\Thread State
\Thread(svchost/66)\Thread State
\Thread(svchost/67)\Thread State
\Thread(svchost/68)\Thread State
\Thread(svchost/69)\Thread State
\Thread(svchost/70)\Thread State
\Thread(svchost/0)\Thread State
\Thread(svchost/1)\Thread State
\Thread(svchost/2)\Thread State
\Thread(svchost/3)\Thread State
\Thread(svchost/4)\Thread State
\Thread(svchost/5)\Thread State
\Thread(svchost/0)\Thread State
\Thread(svchost/1)\Thread State
\Thread(svchost/2)\Thread State
\Thread(svchost/3)\Thread State
\Thread(svchost/4)\Thread State
\Thread(svchost/5)\Thread State
\Thread(svchost/6)\Thread State
\Thread(svchost/7)\Thread State
\Thread(svchost/8)\Thread State
\Thread(svchost/9)\Thread State
\Thread(svchost/10)\Thread State
\Thread(svchost/11)\Thread State
\Thread(svchost/12)\Thread State
\Thread(svchost/13)\Thread State
\Thread(svchost/14)\Thread State
\Thread(svchost/0)\Thread State
\Thread(svchost/1)\Thread State
\Thread(svchost/2)\Thread State
\Thread(svchost/3)\Thread State
\Thread(svchost/4)\Thread State
\Thread(kxedefend/0)\Thread State
\Thread(kxedefend/1)\Thread State
\Thread(kxedefend/2)\Thread State
\Thread(kxedefend/3)\Thread State
\Thread(kxedefend/4)\Thread State
\Thread(kxedefend/5)\Thread State
\Thread(kxedefend/6)\Thread State
\Thread(kxedefend/7)\Thread State
\Thread(kxedefend/8)\Thread State
\Thread(kxedefend/9)\Thread State
\Thread(kxedefend/10)\Thread State
\Thread(kxedefend/11)\Thread State
\Thread(kxedefend/12)\Thread State
\Thread(kxedefend/13)\Thread State
\Thread(kxedefend/14)\Thread State
\Thread(kxedefend/15)\Thread State
\Thread(kxedefend/16)\Thread State
\Thread(kxedefend/17)\Thread State
\Thread(kxedefend/18)\Thread State
\Thread(kxedefend/19)\Thread State
\Thread(kxedefend/20)\Thread State
\Thread(kxedefend/21)\Thread State
\Thread(kxedefend/22)\Thread State
\Thread(kxedefend/23)\Thread State
\Thread(kxedefend/24)\Thread State
\Thread(kxedefend/25)\Thread State
\Thread(kxedefend/26)\Thread State
\Thread(kxedefend/27)\Thread State
\Thread(kxescore/0)\Thread State
\Thread(kxescore/1)\Thread State
\Thread(kxescore/2)\Thread State
\Thread(kxescore/3)\Thread State
\Thread(kxescore/4)\Thread State
\Thread(kxescore/5)\Thread State
\Thread(kxescore/6)\Thread State
\Thread(kxescore/7)\Thread State
\Thread(kxescore/8)\Thread State
\Thread(kxescore/9)\Thread State
\Thread(kxescore/10)\Thread State
\Thread(kxescore/11)\Thread State
\Thread(kxescore/12)\Thread State
\Thread(kxescore/13)\Thread State
\Thread(kxescore/14)\Thread State
\Thread(kxescore/15)\Thread State
\Thread(kxescore/16)\Thread State
\Thread(kxescore/17)\Thread State
\Thread(kxescore/18)\Thread State
\Thread(kxescore/19)\Thread State
\Thread(kxescore/20)\Thread State
\Thread(kxescore/21)\Thread State
\Thread(kxescore/22)\Thread State
\Thread(kxescore/23)\Thread State
\Thread(kxescore/24)\Thread State
\Thread(kxescore/25)\Thread State
\Thread(kxescore/26)\Thread State
\Thread(kxescore/27)\Thread State
\Thread(kxescore/28)\Thread State
\Thread(kxescore/29)\Thread State
\Thread(kxescore/30)\Thread State
\Thread(kxescore/31)\Thread State
\Thread(kxescore/32)\Thread State
\Thread(kxescore/33)\Thread State
\Thread(kxescore/34)\Thread State
\Thread(kxescore/35)\Thread State
\Thread(kxescore/36)\Thread State
\Thread(kxescore/37)\Thread State
\Thread(kxescore/38)\Thread State
\Thread(kxescore/39)\Thread State
\Thread(kxescore/40)\Thread State
\Thread(kxescore/41)\Thread State
\Thread(kxescore/42)\Thread State
\Thread(kxescore/43)\Thread State
\Thread(kxescore/44)\Thread State
\Thread(kxescore/45)\Thread State
\Thread(kxescore/46)\Thread State
\Thread(kxescore/47)\Thread State
\Thread(kxescore/48)\Thread State
\Thread(kxescore/49)\Thread State
\Thread(kxescore/50)\Thread State
\Thread(kxescore/51)\Thread State
\Thread(kxescore/52)\Thread State
\Thread(kxescore/53)\Thread State
\Thread(kxescore/54)\Thread State
\Thread(kxescore/55)\Thread State
\Thread(kxescore/56)\Thread State
\Thread(kxescore/57)\Thread State
\Thread(kxescore/58)\Thread State
\Thread(kxescore/59)\Thread State
\Thread(kxescore/60)\Thread State
\Thread(KSafeSvc/0)\Thread State
\Thread(KSafeSvc/1)\Thread State
\Thread(KSafeSvc/2)\Thread State
\Thread(KSafeSvc/3)\Thread State
\Thread(KSafeSvc/4)\Thread State
\Thread(KSafeSvc/5)\Thread State
\Thread(KSafeSvc/6)\Thread State
\Thread(KSafeSvc/7)\Thread State
\Thread(KSafeSvc/8)\Thread State
\Thread(KSafeSvc/9)\Thread State
\Thread(KSafeSvc/10)\Thread State
\Thread(KSafeSvc/11)\Thread State
\Thread(KSafeSvc/12)\Thread State
\Thread(KSafeSvc/13)\Thread State
\Thread(KSafeSvc/14)\Thread State
\Thread(KSafeSvc/15)\Thread State
\Thread(KSafeSvc/16)\Thread State
\Thread(KSafeSvc/17)\Thread State
\Thread(KSafeSvc/18)\Thread State
\Thread(KSafeSvc/19)\Thread State
\Thread(KSafeSvc/20)\Thread State
\Thread(KSafeSvc/21)\Thread State
\Thread(KSafeSvc/22)\Thread State
\Thread(KSafeSvc/23)\Thread State
\Thread(KSafeSvc/24)\Thread State
\Thread(KSafeSvc/25)\Thread State
\Thread(KSafeSvc/26)\Thread State
\Thread(KSafeSvc/27)\Thread State
\Thread(KSafeSvc/28)\Thread State
\Thread(KSafeSvc/29)\Thread State
\Thread(KSafeSvc/30)\Thread State
\Thread(KSafeSvc/31)\Thread State
\Thread(KSafeSvc/32)\Thread State
\Thread(KSafeSvc/33)\Thread State
\Thread(KSafeSvc/34)\Thread State
\Thread(KSafeSvc/35)\Thread State
\Thread(KSafeSvc/36)\Thread State
\Thread(KSafeSvc/37)\Thread State
\Thread(KSafeSvc/38)\Thread State
\Thread(KSafeSvc/39)\Thread State
\Thread(KSafeSvc/40)\Thread State
\Thread(KSafeSvc/41)\Thread State
\Thread(KSafeSvc/42)\Thread State
\Thread(KSafeSvc/43)\Thread State
\Thread(KSafeSvc/44)\Thread State
\Thread(KSafeSvc/45)\Thread State
\Thread(KSafeSvc/46)\Thread State
\Thread(KSafeSvc/47)\Thread State
\Thread(KSafeSvc/48)\Thread State
\Thread(KSafeSvc/49)\Thread State
\Thread(KSafeSvc/50)\Thread State
\Thread(KSafeSvc/51)\Thread State
\Thread(KSafeSvc/52)\Thread State
\Thread(KSafeSvc/53)\Thread State
\Thread(kxesapp/0)\Thread State
\Thread(kxesapp/1)\Thread State
\Thread(kxesapp/2)\Thread State
\Thread(kxesapp/3)\Thread State
\Thread(kxesapp/4)\Thread State
\Thread(kxesapp/5)\Thread State
\Thread(kxesapp/6)\Thread State
\Thread(kxesapp/7)\Thread State
\Thread(kxesapp/8)\Thread State
\Thread(kxesapp/9)\Thread State
\Thread(kxesapp/10)\Thread State
\Thread(kxesapp/11)\Thread State
\Thread(kxesapp/12)\Thread State
\Thread(kxesapp/13)\Thread State
\Thread(kxesapp/14)\Thread State
\Thread(kxesapp/15)\Thread State
\Thread(kxesapp/16)\Thread State
\Thread(kxesapp/17)\Thread State
\Thread(kxesapp/18)\Thread State
\Thread(kxesapp/19)\Thread State
\Thread(kxesapp/20)\Thread State
\Thread(kxesapp/21)\Thread State
\Thread(kxesapp/22)\Thread State
\Thread(spoolsv/0)\Thread State
\Thread(spoolsv/1)\Thread State
\Thread(spoolsv/2)\Thread State
\Thread(spoolsv/3)\Thread State
\Thread(spoolsv/4)\Thread State
\Thread(spoolsv/5)\Thread State
\Thread(spoolsv/6)\Thread State
\Thread(spoolsv/7)\Thread State
\Thread(spoolsv/8)\Thread State
\Thread(spoolsv/9)\Thread State
\Thread(spoolsv/10)\Thread State
\Thread(spoolsv/11)\Thread State
\Thread(spoolsv/12)\Thread State
\Thread(spoolsv/13)\Thread State
\Thread(alg/0)\Thread State
\Thread(alg/1)\Thread State
\Thread(alg/2)\Thread State
\Thread(alg/3)\Thread State
\Thread(alg/4)\Thread State
\Thread(AsistService/0)\Thread State
\Thread(AsistService/1)\Thread State
\Thread(AsistService/2)\Thread State
\Thread(DSRSvc/0)\Thread State
\Thread(DSRSvc/1)\Thread State
\Thread(DSRSvc/2)\Thread State
\Thread(DSRSvc/3)\Thread State
\Thread(DSRSvc/4)\Thread State
\Thread(DSRSvc/5)\Thread State
\Thread(DSRSvc/6)\Thread State
\Thread(DSRSvc/7)\Thread State
\Thread(DSRSvc/8)\Thread State
\Thread(DSRSvc/9)\Thread State
\Thread(DSRSvc/10)\Thread State
\Thread(DSRSvc/11)\Thread State
\Thread(DSRSvc/12)\Thread State
\Thread(FolderSizeSvc/0)\Thread State
\Thread(FolderSizeSvc/1)\Thread State
\Thread(FolderSizeSvc/2)\Thread State
\Thread(FolderSizeSvc/3)\Thread State
\Thread(FolderSizeSvc/4)\Thread State
\Thread(FolderSizeSvc/5)\Thread State
\Thread(FolderSizeSvc/6)\Thread State
\Thread(FolderSizeSvc/7)\Thread State
\Thread(FolderSizeSvc/8)\Thread State
\Thread(FolderSizeSvc/9)\Thread State
\Thread(FolderSizeSvc/10)\Thread State
\Thread(FolderSizeSvc/11)\Thread State
\Thread(FolderSizeSvc/12)\Thread State
\Thread(FolderSizeSvc/13)\Thread State
\Thread(FolderSizeSvc/14)\Thread State
\Thread(FolderSizeSvc/15)\Thread State
\Thread(FolderSizeSvc/16)\Thread State
\Thread(FolderSizeSvc/17)\Thread State
\Thread(FolderSizeSvc/18)\Thread State
\Thread(FolderSizeSvc/19)\Thread State
\Thread(FolderSizeSvc/20)\Thread State
\Thread(FolderSizeSvc/21)\Thread State
\Thread(FolderSizeSvc/22)\Thread State
\Thread(FolderSizeSvc/23)\Thread State
\Thread(FolderSizeSvc/24)\Thread State
\Thread(FolderSizeSvc/25)\Thread State
\Thread(FolderSizeSvc/26)\Thread State
\Thread(FolderSizeSvc/27)\Thread State
\Thread(FolderSizeSvc/28)\Thread State
\Thread(FolderSizeSvc/29)\Thread State
\Thread(FolderSizeSvc/30)\Thread State
\Thread(FolderSizeSvc/31)\Thread State
\Thread(FolderSizeSvc/32)\Thread State
\Thread(FolderSizeSvc/33)\Thread State
\Thread(FolderSizeSvc/34)\Thread State
\Thread(FolderSizeSvc/35)\Thread State
\Thread(FolderSizeSvc/36)\Thread State
\Thread(FolderSizeSvc/37)\Thread State
\Thread(FolderSizeSvc/38)\Thread State
\Thread(FolderSizeSvc/39)\Thread State
\Thread(FolderSizeSvc/40)\Thread State
\Thread(FolderSizeSvc/41)\Thread State
\Thread(FolderSizeSvc/42)\Thread State
\Thread(FolderSizeSvc/43)\Thread State
\Thread(FolderSizeSvc/44)\Thread State
\Thread(FolderSizeSvc/45)\Thread State
\Thread(FolderSizeSvc/46)\Thread State
\Thread(GSGIOSRV/0)\Thread State
\Thread(GSGIOSRV/1)\Thread State
\Thread(GSGIOSRV/2)\Thread State
\Thread(upsvc/0)\Thread State
\Thread(upsvc/1)\Thread State
\Thread(upsvc/2)\Thread State
\Thread(upsvc/3)\Thread State
\Thread(upsvc/4)\Thread State
\Thread(mdm/0)\Thread State
\Thread(mdm/1)\Thread State
\Thread(mdm/2)\Thread State
\Thread(mdm/3)\Thread State
\Thread(mdm/4)\Thread State
\Thread(rtiosrv/0)\Thread State
\Thread(rtiosrv/1)\Thread State
\Thread(rtiosrv/2)\Thread State
\Thread(rtiosrv/3)\Thread State
\Thread(ManagerClient/0)\Thread State
\Thread(ManagerClient/1)\Thread State
\Thread(sqlwriter/0)\Thread State
\Thread(sqlwriter/1)\Thread State
\Thread(sqlwriter/2)\Thread State
\Thread(vmware-usbarbitrator/0)\Thread State
\Thread(vmware-usbarbitrator/1)\Thread State
\Thread(vmnat/0)\Thread State
\Thread(vmnat/1)\Thread State
\Thread(vmnat/2)\Thread State
\Thread(vmnetdhcp/0)\Thread State
\Thread(vmnetdhcp/1)\Thread State
\Thread(vmware-authd/0)\Thread State
\Thread(vmware-authd/1)\Thread State
\Thread(vmware-authd/2)\Thread State
\Thread(vmware-authd/3)\Thread State
\Thread(vmware-authd/4)\Thread State
\Thread(vmware-authd/5)\Thread State
\Thread(vmware-authd/6)\Thread State
\Thread(explorer/0)\Thread State
\Thread(explorer/1)\Thread State
\Thread(explorer/2)\Thread State
\Thread(explorer/3)\Thread State
\Thread(explorer/4)\Thread State
\Thread(explorer/5)\Thread State
\Thread(explorer/6)\Thread State
\Thread(explorer/7)\Thread State
\Thread(explorer/8)\Thread State
\Thread(explorer/9)\Thread State
\Thread(explorer/10)\Thread State
\Thread(explorer/11)\Thread State
\Thread(explorer/12)\Thread State
\Thread(explorer/13)\Thread State
\Thread(explorer/14)\Thread State
\Thread(explorer/15)\Thread State
\Thread(explorer/16)\Thread State
\Thread(explorer/17)\Thread State
\Thread(explorer/18)\Thread State
\Thread(explorer/19)\Thread State
\Thread(explorer/20)\Thread State
\Thread(explorer/21)\Thread State
\Thread(explorer/22)\Thread State
\Thread(TSVNCache/0)\Thread State
\Thread(TSVNCache/1)\Thread State
\Thread(TSVNCache/2)\Thread State
\Thread(TSVNCache/3)\Thread State
\Thread(TSVNCache/4)\Thread State
\Thread(TSVNCache/5)\Thread State
\Thread(TSVNCache/6)\Thread State
\Thread(TSVNCache/7)\Thread State
\Thread(TSVNCache/8)\Thread State
\Thread(TSVNCache/9)\Thread State
\Thread(TSVNCache/10)\Thread State
\Thread(igfxtray/0)\Thread State
\Thread(igfxtray/1)\Thread State
\Thread(hkcmd/0)\Thread State
\Thread(hkcmd/1)\Thread State
\Thread(hkcmd/2)\Thread State
\Thread(igfxpers/0)\Thread State
\Thread(igfxpers/1)\Thread State
\Thread(KSafeTray/0)\Thread State
\Thread(KSafeTray/1)\Thread State
\Thread(KSafeTray/2)\Thread State
\Thread(KSafeTray/3)\Thread State
\Thread(KSafeTray/4)\Thread State
\Thread(KSafeTray/5)\Thread State
\Thread(KSafeTray/6)\Thread State
\Thread(KSafeTray/7)\Thread State
\Thread(KSafeTray/8)\Thread State
\Thread(KSafeTray/9)\Thread State
\Thread(KSafeTray/10)\Thread State
\Thread(KSafeTray/11)\Thread State
\Thread(KSafeTray/12)\Thread State
\Thread(KSafeTray/13)\Thread State
\Thread(KSafeTray/14)\Thread State
\Thread(KSafeTray/15)\Thread State
\Thread(KSafeTray/16)\Thread State
\Thread(KSafeTray/17)\Thread State
\Thread(KSafeTray/18)\Thread State
\Thread(KSafeTray/19)\Thread State
\Thread(KSafeTray/20)\Thread State
\Thread(KSafeTray/21)\Thread State
\Thread(KSafeTray/22)\Thread State
\Thread(KSafeTray/23)\Thread State
\Thread(kxetray/0)\Thread State
\Thread(kxetray/1)\Thread State
\Thread(kxetray/2)\Thread State
\Thread(kxetray/3)\Thread State
\Thread(kxetray/4)\Thread State
\Thread(kxetray/5)\Thread State
\Thread(kxetray/6)\Thread State
\Thread(kxetray/7)\Thread State
\Thread(kxetray/8)\Thread State
\Thread(kxetray/9)\Thread State
\Thread(kxetray/10)\Thread State
\Thread(kxetray/11)\Thread State
\Thread(kxetray/12)\Thread State
\Thread(kxetray/13)\Thread State
\Thread(kxetray/14)\Thread State
\Thread(kxetray/15)\Thread State
\Thread(kxetray/16)\Thread State
\Thread(kxetray/17)\Thread State
\Thread(kxetray/18)\Thread State
\Thread(kxetray/19)\Thread State
\Thread(kxetray/20)\Thread State
\Thread(kxetray/21)\Thread State
\Thread(kxetray/22)\Thread State
\Thread(kxetray/23)\Thread State
\Thread(igfxsrvc/0)\Thread State
\Thread(igfxsrvc/1)\Thread State
\Thread(igfxsrvc/2)\Thread State
\Thread(igfxsrvc/3)\Thread State
\Thread(Ext2Mgr/0)\Thread State
\Thread(RTHDCPL/0)\Thread State
\Thread(RTHDCPL/1)\Thread State
\Thread(RTHDCPL/2)\Thread State
\Thread(RTHDCPL/3)\Thread State
\Thread(OfficeIM/0)\Thread State
\Thread(OfficeIM/1)\Thread State
\Thread(OfficeIM/2)\Thread State
\Thread(OfficeIM/3)\Thread State
\Thread(OfficeIM/4)\Thread State
\Thread(OfficeIM/5)\Thread State
\Thread(OfficeIM/6)\Thread State
\Thread(OfficeIM/7)\Thread State
\Thread(OfficeIM/8)\Thread State
\Thread(OfficeIM/9)\Thread State
\Thread(OfficeIM/10)\Thread State
\Thread(OfficeIM/11)\Thread State
\Thread(OfficeIM/12)\Thread State
\Thread(OfficeIM/13)\Thread State
\Thread(OfficeIM/14)\Thread State
\Thread(vmware-tray/0)\Thread State
\Thread(vmware-tray/1)\Thread State
\Thread(vmware-tray/2)\Thread State
\Thread(msnmsgr/0)\Thread State
\Thread(msnmsgr/1)\Thread State
\Thread(msnmsgr/2)\Thread State
\Thread(msnmsgr/3)\Thread State
\Thread(msnmsgr/4)\Thread State
\Thread(msnmsgr/5)\Thread State
\Thread(msnmsgr/6)\Thread State
\Thread(msnmsgr/7)\Thread State
\Thread(msnmsgr/8)\Thread State
\Thread(msnmsgr/9)\Thread State
\Thread(msnmsgr/10)\Thread State
\Thread(msnmsgr/11)\Thread State
\Thread(msnmsgr/12)\Thread State
\Thread(msnmsgr/13)\Thread State
\Thread(msnmsgr/14)\Thread State
\Thread(msnmsgr/15)\Thread State
\Thread(msnmsgr/16)\Thread State
\Thread(msnmsgr/17)\Thread State
\Thread(msnmsgr/18)\Thread State
\Thread(msnmsgr/19)\Thread State
\Thread(msnmsgr/20)\Thread State
\Thread(msnmsgr/21)\Thread State
\Thread(msnmsgr/22)\Thread State
\Thread(msnmsgr/23)\Thread State
\Thread(msnmsgr/24)\Thread State
\Thread(msnmsgr/25)\Thread State
\Thread(msnmsgr/26)\Thread State
\Thread(msnmsgr/27)\Thread State
\Thread(msnmsgr/28)\Thread State
\Thread(msnmsgr/29)\Thread State
\Thread(msnmsgr/30)\Thread State
\Thread(msnmsgr/31)\Thread State
\Thread(msnmsgr/32)\Thread State
\Thread(msnmsgr/33)\Thread State
\Thread(msnmsgr/34)\Thread State
\Thread(msnmsgr/35)\Thread State
\Thread(msnmsgr/36)\Thread State
\Thread(msnmsgr/37)\Thread State
\Thread(msnmsgr/38)\Thread State
\Thread(msnmsgr/39)\Thread State
\Thread(ctfmon/0)\Thread State
\Thread(VVCap/0)\Thread State
\Thread(VVCap/1)\Thread State
\Thread(wlcomm/0)\Thread State
\Thread(wlcomm/1)\Thread State
\Thread(wlcomm/2)\Thread State
\Thread(wlcomm/3)\Thread State
\Thread(wlcomm/4)\Thread State
\Thread(wlcomm/5)\Thread State
\Thread(wlcomm/6)\Thread State
\Thread(wlcomm/7)\Thread State
\Thread(wlcomm/8)\Thread State
\Thread(wlcomm/9)\Thread State
\Thread(wlcomm/10)\Thread State
\Thread(wlcomm/11)\Thread State
\Thread(wlcomm/12)\Thread State
\Thread(wlcomm/13)\Thread State
\Thread(wlcomm/14)\Thread State
\Thread(WPFFontCache_v0400/0)\Thread State
\Thread(WPFFontCache_v0400/1)\Thread State
\Thread(WPFFontCache_v0400/2)\Thread State
\Thread(WPFFontCache_v0400/3)\Thread State
\Thread(WPFFontCache_v0400/4)\Thread State
\Thread(WPFFontCache_v0400/5)\Thread State
\Thread(WPFFontCache_v0400/6)\Thread State
\Thread(KuGoo/0)\Thread State
\Thread(KuGoo/1)\Thread State
\Thread(KuGoo/2)\Thread State
\Thread(KuGoo/3)\Thread State
\Thread(KuGoo/4)\Thread State
\Thread(KuGoo/5)\Thread State
\Thread(KuGoo/6)\Thread State
\Thread(KuGoo/7)\Thread State
\Thread(KuGoo/8)\Thread State
\Thread(KuGoo/9)\Thread State
\Thread(KuGoo/10)\Thread State
\Thread(KuGoo/11)\Thread State
\Thread(KuGoo/12)\Thread State
\Thread(KuGoo/13)\Thread State
\Thread(KuGoo/14)\Thread State
\Thread(KuGoo/15)\Thread State
\Thread(KuGoo/16)\Thread State
\Thread(KuGoo/17)\Thread State
\Thread(KuGoo/18)\Thread State
\Thread(KuGoo/19)\Thread State
\Thread(KuGoo/20)\Thread State
\Thread(KuGoo/21)\Thread State
\Thread(KuGoo/22)\Thread State
\Thread(KuGoo/23)\Thread State
\Thread(KuGoo/24)\Thread State
\Thread(KuGoo/25)\Thread State
\Thread(KuGoo/26)\Thread State
\Thread(KuGoo/27)\Thread State
\Thread(KuGoo/28)\Thread State
\Thread(KuGoo/29)\Thread State
\Thread(KuGoo/30)\Thread State
\Thread(KuGoo/31)\Thread State
\Thread(KuGoo/32)\Thread State
\Thread(KuGoo/33)\Thread State
\Thread(KuGoo/34)\Thread State
\Thread(KuGoo/35)\Thread State
\Thread(KuGoo/36)\Thread State
\Thread(KuGoo/37)\Thread State
\Thread(KuGoo/38)\Thread State
\Thread(KuGoo/39)\Thread State
\Thread(KuGoo/40)\Thread State
\Thread(KuGoo/41)\Thread State
\Thread(KuGoo/42)\Thread State
\Thread(KuGoo/43)\Thread State
\Thread(KuGoo/44)\Thread State
\Thread(KuGoo/45)\Thread State
\Thread(KuGoo/46)\Thread State
\Thread(KuGoo/47)\Thread State
\Thread(KuGoo/48)\Thread State
\Thread(KuGoo/49)\Thread State
\Thread(KuGoo/50)\Thread State
\Thread(KuGoo/51)\Thread State
\Thread(KuGoo/52)\Thread State
\Thread(KuGoo/53)\Thread State
\Thread(KuGoo/54)\Thread State
\Thread(KuGoo/55)\Thread State
\Thread(KuGoo/56)\Thread State
\Thread(KuGoo/57)\Thread State
\Thread(KuGoo/58)\Thread State
\Thread(KuGoo/59)\Thread State
\Thread(firefox/0)\Thread State
\Thread(firefox/1)\Thread State
\Thread(firefox/2)\Thread State
\Thread(firefox/3)\Thread State
\Thread(firefox/4)\Thread State
\Thread(firefox/5)\Thread State
\Thread(firefox/6)\Thread State
\Thread(firefox/7)\Thread State
\Thread(firefox/8)\Thread State
\Thread(firefox/9)\Thread State
\Thread(firefox/10)\Thread State
\Thread(firefox/11)\Thread State
\Thread(firefox/12)\Thread State
\Thread(firefox/13)\Thread State
\Thread(firefox/14)\Thread State
\Thread(firefox/15)\Thread State
\Thread(firefox/16)\Thread State
\Thread(firefox/17)\Thread State
\Thread(firefox/18)\Thread State
\Thread(firefox/19)\Thread State
\Thread(firefox/20)\Thread State
\Thread(firefox/21)\Thread State
\Thread(firefox/22)\Thread State
\Thread(firefox/23)\Thread State
\Thread(firefox/24)\Thread State
\Thread(vmware/0)\Thread State
\Thread(vmware/1)\Thread State
\Thread(vmware/2)\Thread State
\Thread(vmware/3)\Thread State
\Thread(vmware/4)\Thread State
\Thread(vmware/5)\Thread State
\Thread(vmware/6)\Thread State
\Thread(vmware/7)\Thread State
\Thread(taskmgr/0)\Thread State
\Thread(taskmgr/1)\Thread State
\Thread(taskmgr/2)\Thread State
\Thread(SshClient/0)\Thread State
\Thread(SshClient/1)\Thread State
\Thread(SshClient/2)\Thread State
\Thread(SshClient/3)\Thread State
\Thread(SshClient/4)\Thread State
\Thread(SshClient/5)\Thread State
\Thread(SshClient/6)\Thread State
\Thread(Thunder5/0)\Thread State
\Thread(Thunder5/1)\Thread State
\Thread(Thunder5/2)\Thread State
\Thread(Thunder5/3)\Thread State
\Thread(Thunder5/4)\Thread State
\Thread(Thunder5/5)\Thread State
\Thread(Thunder5/6)\Thread State
\Thread(Thunder5/7)\Thread State
\Thread(Thunder5/8)\Thread State
\Thread(Thunder5/9)\Thread State
\Thread(Thunder5/10)\Thread State
\Thread(Thunder5/11)\Thread State
\Thread(Thunder5/12)\Thread State
\Thread(Thunder5/13)\Thread State
\Thread(Thunder5/14)\Thread State
\Thread(Thunder5/15)\Thread State
\Thread(Thunder5/16)\Thread State
\Thread(Thunder5/17)\Thread State
\Thread(Thunder5/18)\Thread State
\Thread(Thunder5/19)\Thread State
\Thread(Thunder5/20)\Thread State
\Thread(Thunder5/21)\Thread State
\Thread(Thunder5/22)\Thread State
\Thread(Thunder5/23)\Thread State
\Thread(Thunder5/24)\Thread State
\Thread(Thunder5/25)\Thread State
\Thread(Thunder5/26)\Thread State
\Thread(Thunder5/27)\Thread State
\Thread(Thunder5/28)\Thread State
\Thread(Thunder5/29)\Thread State
\Thread(Thunder5/30)\Thread State
\Thread(Thunder5/31)\Thread State
\Thread(Thunder5/32)\Thread State
\Thread(Thunder5/33)\Thread State
\Thread(Thunder5/34)\Thread State
\Thread(Thunder5/35)\Thread State
\Thread(Thunder5/36)\Thread State
\Thread(Thunder5/37)\Thread State
\Thread(Thunder5/38)\Thread State
\Thread(Thunder5/39)\Thread State
\Thread(Thunder5/40)\Thread State
\Thread(Thunder5/41)\Thread State
\Thread(Thunder5/42)\Thread State
\Thread(Thunder5/43)\Thread State
\Thread(Thunder5/44)\Thread State
\Thread(Thunder5/45)\Thread State
\Thread(Thunder5/46)\Thread State
\Thread(cmd/0)\Thread State
\Thread(typeperf/0)\Thread State
\Thread(typeperf/1)\Thread State
\Thread(typeperf/2)\Thread State
\Thread(typeperf/3)\Thread State
\Thread(typeperf/4)\Thread State
\Thread(typeperf/5)\Thread State
\Thread(typeperf/6)\Thread State
\Thread(typeperf/7)\Thread State
\Thread(typeperf/8)\Thread State
\Thread(typeperf/9)\Thread State
\Thread(typeperf/10)\Thread State
\Thread(_Total/_Total)\Thread State
\Thread(Idle/0)\Thread Wait Reason
\Thread(Idle/1)\Thread Wait Reason
\Thread(System/0)\Thread Wait Reason
\Thread(System/1)\Thread Wait Reason
\Thread(System/2)\Thread Wait Reason
\Thread(System/3)\Thread Wait Reason
\Thread(System/4)\Thread Wait Reason
\Thread(System/5)\Thread Wait Reason
\Thread(System/6)\Thread Wait Reason
\Thread(System/7)\Thread Wait Reason
\Thread(System/8)\Thread Wait Reason
\Thread(System/9)\Thread Wait Reason
\Thread(System/10)\Thread Wait Reason
\Thread(System/11)\Thread Wait Reason
\Thread(System/12)\Thread Wait Reason
\Thread(System/13)\Thread Wait Reason
\Thread(System/14)\Thread Wait Reason
\Thread(System/15)\Thread Wait Reason
\Thread(System/16)\Thread Wait Reason
\Thread(System/17)\Thread Wait Reason
\Thread(System/18)\Thread Wait Reason
\Thread(System/19)\Thread Wait Reason
\Thread(System/20)\Thread Wait Reason
\Thread(System/21)\Thread Wait Reason
\Thread(System/22)\Thread Wait Reason
\Thread(System/23)\Thread Wait Reason
\Thread(System/24)\Thread Wait Reason
\Thread(System/25)\Thread Wait Reason
\Thread(System/26)\Thread Wait Reason
\Thread(System/27)\Thread Wait Reason
\Thread(System/28)\Thread Wait Reason
\Thread(System/29)\Thread Wait Reason
\Thread(System/30)\Thread Wait Reason
\Thread(System/31)\Thread Wait Reason
\Thread(System/32)\Thread Wait Reason
\Thread(System/33)\Thread Wait Reason
\Thread(System/34)\Thread Wait Reason
\Thread(System/35)\Thread Wait Reason
\Thread(System/36)\Thread Wait Reason
\Thread(System/37)\Thread Wait Reason
\Thread(System/38)\Thread Wait Reason
\Thread(System/39)\Thread Wait Reason
\Thread(System/40)\Thread Wait Reason
\Thread(System/41)\Thread Wait Reason
\Thread(System/42)\Thread Wait Reason
\Thread(System/43)\Thread Wait Reason
\Thread(System/44)\Thread Wait Reason
\Thread(System/45)\Thread Wait Reason
\Thread(System/46)\Thread Wait Reason
\Thread(System/47)\Thread Wait Reason
\Thread(System/48)\Thread Wait Reason
\Thread(System/49)\Thread Wait Reason
\Thread(System/50)\Thread Wait Reason
\Thread(System/51)\Thread Wait Reason
\Thread(System/52)\Thread Wait Reason
\Thread(System/53)\Thread Wait Reason
\Thread(System/54)\Thread Wait Reason
\Thread(System/55)\Thread Wait Reason
\Thread(System/56)\Thread Wait Reason
\Thread(System/57)\Thread Wait Reason
\Thread(System/58)\Thread Wait Reason
\Thread(System/59)\Thread Wait Reason
\Thread(System/60)\Thread Wait Reason
\Thread(System/61)\Thread Wait Reason
\Thread(System/62)\Thread Wait Reason
\Thread(System/63)\Thread Wait Reason
\Thread(System/64)\Thread Wait Reason
\Thread(System/65)\Thread Wait Reason
\Thread(System/66)\Thread Wait Reason
\Thread(System/67)\Thread Wait Reason
\Thread(System/68)\Thread Wait Reason
\Thread(System/69)\Thread Wait Reason
\Thread(System/70)\Thread Wait Reason
\Thread(System/71)\Thread Wait Reason
\Thread(System/72)\Thread Wait Reason
\Thread(System/73)\Thread Wait Reason
\Thread(System/74)\Thread Wait Reason
\Thread(System/75)\Thread Wait Reason
\Thread(System/76)\Thread Wait Reason
\Thread(System/77)\Thread Wait Reason
\Thread(System/78)\Thread Wait Reason
\Thread(System/79)\Thread Wait Reason
\Thread(System/80)\Thread Wait Reason
\Thread(System/81)\Thread Wait Reason
\Thread(System/82)\Thread Wait Reason
\Thread(System/83)\Thread Wait Reason
\Thread(System/84)\Thread Wait Reason
\Thread(System/85)\Thread Wait Reason
\Thread(System/86)\Thread Wait Reason
\Thread(System/87)\Thread Wait Reason
\Thread(System/88)\Thread Wait Reason
\Thread(System/89)\Thread Wait Reason
\Thread(System/90)\Thread Wait Reason
\Thread(System/91)\Thread Wait Reason
\Thread(System/92)\Thread Wait Reason
\Thread(System/93)\Thread Wait Reason
\Thread(System/94)\Thread Wait Reason
\Thread(System/95)\Thread Wait Reason
\Thread(System/96)\Thread Wait Reason
\Thread(System/97)\Thread Wait Reason
\Thread(smss/0)\Thread Wait Reason
\Thread(smss/1)\Thread Wait Reason
\Thread(smss/2)\Thread Wait Reason
\Thread(csrss/0)\Thread Wait Reason
\Thread(csrss/1)\Thread Wait Reason
\Thread(csrss/2)\Thread Wait Reason
\Thread(csrss/3)\Thread Wait Reason
\Thread(csrss/4)\Thread Wait Reason
\Thread(csrss/5)\Thread Wait Reason
\Thread(csrss/6)\Thread Wait Reason
\Thread(csrss/7)\Thread Wait Reason
\Thread(csrss/8)\Thread Wait Reason
\Thread(csrss/9)\Thread Wait Reason
\Thread(csrss/10)\Thread Wait Reason
\Thread(csrss/11)\Thread Wait Reason
\Thread(winlogon/0)\Thread Wait Reason
\Thread(winlogon/1)\Thread Wait Reason
\Thread(winlogon/2)\Thread Wait Reason
\Thread(winlogon/3)\Thread Wait Reason
\Thread(winlogon/4)\Thread Wait Reason
\Thread(winlogon/5)\Thread Wait Reason
\Thread(winlogon/6)\Thread Wait Reason
\Thread(winlogon/7)\Thread Wait Reason
\Thread(winlogon/8)\Thread Wait Reason
\Thread(winlogon/9)\Thread Wait Reason
\Thread(winlogon/10)\Thread Wait Reason
\Thread(winlogon/11)\Thread Wait Reason
\Thread(winlogon/12)\Thread Wait Reason
\Thread(winlogon/13)\Thread Wait Reason
\Thread(winlogon/14)\Thread Wait Reason
\Thread(winlogon/15)\Thread Wait Reason
\Thread(winlogon/16)\Thread Wait Reason
\Thread(winlogon/17)\Thread Wait Reason
\Thread(winlogon/18)\Thread Wait Reason
\Thread(winlogon/19)\Thread Wait Reason
\Thread(winlogon/20)\Thread Wait Reason
\Thread(winlogon/21)\Thread Wait Reason
\Thread(services/0)\Thread Wait Reason
\Thread(services/1)\Thread Wait Reason
\Thread(services/2)\Thread Wait Reason
\Thread(services/3)\Thread Wait Reason
\Thread(services/4)\Thread Wait Reason
\Thread(services/5)\Thread Wait Reason
\Thread(services/6)\Thread Wait Reason
\Thread(services/7)\Thread Wait Reason
\Thread(services/8)\Thread Wait Reason
\Thread(services/9)\Thread Wait Reason
\Thread(services/10)\Thread Wait Reason
\Thread(services/11)\Thread Wait Reason
\Thread(services/12)\Thread Wait Reason
\Thread(services/13)\Thread Wait Reason
\Thread(services/14)\Thread Wait Reason
\Thread(services/15)\Thread Wait Reason
\Thread(lsass/0)\Thread Wait Reason
\Thread(lsass/1)\Thread Wait Reason
\Thread(lsass/2)\Thread Wait Reason
\Thread(lsass/3)\Thread Wait Reason
\Thread(lsass/4)\Thread Wait Reason
\Thread(lsass/5)\Thread Wait Reason
\Thread(lsass/6)\Thread Wait Reason
\Thread(lsass/7)\Thread Wait Reason
\Thread(lsass/8)\Thread Wait Reason
\Thread(lsass/9)\Thread Wait Reason
\Thread(lsass/10)\Thread Wait Reason
\Thread(lsass/11)\Thread Wait Reason
\Thread(lsass/12)\Thread Wait Reason
\Thread(lsass/13)\Thread Wait Reason
\Thread(lsass/14)\Thread Wait Reason
\Thread(lsass/15)\Thread Wait Reason
\Thread(lsass/16)\Thread Wait Reason
\Thread(lsass/17)\Thread Wait Reason
\Thread(lsass/18)\Thread Wait Reason
\Thread(lsass/19)\Thread Wait Reason
\Thread(lsass/20)\Thread Wait Reason
\Thread(lsass/21)\Thread Wait Reason
\Thread(svchost/0)\Thread Wait Reason
\Thread(svchost/1)\Thread Wait Reason
\Thread(svchost/2)\Thread Wait Reason
\Thread(svchost/3)\Thread Wait Reason
\Thread(svchost/4)\Thread Wait Reason
\Thread(svchost/5)\Thread Wait Reason
\Thread(svchost/6)\Thread Wait Reason
\Thread(svchost/7)\Thread Wait Reason
\Thread(svchost/0)\Thread Wait Reason
\Thread(svchost/1)\Thread Wait Reason
\Thread(svchost/2)\Thread Wait Reason
\Thread(svchost/3)\Thread Wait Reason
\Thread(svchost/4)\Thread Wait Reason
\Thread(svchost/5)\Thread Wait Reason
\Thread(svchost/6)\Thread Wait Reason
\Thread(svchost/7)\Thread Wait Reason
\Thread(svchost/8)\Thread Wait Reason
\Thread(svchost/9)\Thread Wait Reason
\Thread(svchost/10)\Thread Wait Reason
\Thread(svchost/11)\Thread Wait Reason
\Thread(svchost/12)\Thread Wait Reason
\Thread(svchost/13)\Thread Wait Reason
\Thread(svchost/14)\Thread Wait Reason
\Thread(svchost/15)\Thread Wait Reason
\Thread(svchost/16)\Thread Wait Reason
\Thread(svchost/17)\Thread Wait Reason
\Thread(svchost/18)\Thread Wait Reason
\Thread(svchost/19)\Thread Wait Reason
\Thread(svchost/20)\Thread Wait Reason
\Thread(svchost/21)\Thread Wait Reason
\Thread(svchost/22)\Thread Wait Reason
\Thread(svchost/23)\Thread Wait Reason
\Thread(svchost/24)\Thread Wait Reason
\Thread(svchost/25)\Thread Wait Reason
\Thread(svchost/26)\Thread Wait Reason
\Thread(svchost/27)\Thread Wait Reason
\Thread(svchost/28)\Thread Wait Reason
\Thread(svchost/29)\Thread Wait Reason
\Thread(svchost/30)\Thread Wait Reason
\Thread(svchost/31)\Thread Wait Reason
\Thread(svchost/32)\Thread Wait Reason
\Thread(svchost/33)\Thread Wait Reason
\Thread(svchost/34)\Thread Wait Reason
\Thread(svchost/35)\Thread Wait Reason
\Thread(svchost/36)\Thread Wait Reason
\Thread(svchost/37)\Thread Wait Reason
\Thread(svchost/38)\Thread Wait Reason
\Thread(svchost/39)\Thread Wait Reason
\Thread(svchost/40)\Thread Wait Reason
\Thread(svchost/41)\Thread Wait Reason
\Thread(svchost/42)\Thread Wait Reason
\Thread(svchost/43)\Thread Wait Reason
\Thread(svchost/44)\Thread Wait Reason
\Thread(svchost/45)\Thread Wait Reason
\Thread(svchost/46)\Thread Wait Reason
\Thread(svchost/47)\Thread Wait Reason
\Thread(svchost/48)\Thread Wait Reason
\Thread(svchost/49)\Thread Wait Reason
\Thread(svchost/50)\Thread Wait Reason
\Thread(svchost/51)\Thread Wait Reason
\Thread(svchost/52)\Thread Wait Reason
\Thread(svchost/53)\Thread Wait Reason
\Thread(svchost/54)\Thread Wait Reason
\Thread(svchost/55)\Thread Wait Reason
\Thread(svchost/56)\Thread Wait Reason
\Thread(svchost/57)\Thread Wait Reason
\Thread(svchost/58)\Thread Wait Reason
\Thread(svchost/59)\Thread Wait Reason
\Thread(svchost/60)\Thread Wait Reason
\Thread(svchost/61)\Thread Wait Reason
\Thread(svchost/62)\Thread Wait Reason
\Thread(svchost/63)\Thread Wait Reason
\Thread(svchost/64)\Thread Wait Reason
\Thread(svchost/65)\Thread Wait Reason
\Thread(svchost/66)\Thread Wait Reason
\Thread(svchost/67)\Thread Wait Reason
\Thread(svchost/68)\Thread Wait Reason
\Thread(svchost/69)\Thread Wait Reason
\Thread(svchost/70)\Thread Wait Reason
\Thread(svchost/0)\Thread Wait Reason
\Thread(svchost/1)\Thread Wait Reason
\Thread(svchost/2)\Thread Wait Reason
\Thread(svchost/3)\Thread Wait Reason
\Thread(svchost/4)\Thread Wait Reason
\Thread(svchost/5)\Thread Wait Reason
\Thread(svchost/0)\Thread Wait Reason
\Thread(svchost/1)\Thread Wait Reason
\Thread(svchost/2)\Thread Wait Reason
\Thread(svchost/3)\Thread Wait Reason
\Thread(svchost/4)\Thread Wait Reason
\Thread(svchost/5)\Thread Wait Reason
\Thread(svchost/6)\Thread Wait Reason
\Thread(svchost/7)\Thread Wait Reason
\Thread(svchost/8)\Thread Wait Reason
\Thread(svchost/9)\Thread Wait Reason
\Thread(svchost/10)\Thread Wait Reason
\Thread(svchost/11)\Thread Wait Reason
\Thread(svchost/12)\Thread Wait Reason
\Thread(svchost/13)\Thread Wait Reason
\Thread(svchost/14)\Thread Wait Reason
\Thread(svchost/0)\Thread Wait Reason
\Thread(svchost/1)\Thread Wait Reason
\Thread(svchost/2)\Thread Wait Reason
\Thread(svchost/3)\Thread Wait Reason
\Thread(svchost/4)\Thread Wait Reason
\Thread(kxedefend/0)\Thread Wait Reason
\Thread(kxedefend/1)\Thread Wait Reason
\Thread(kxedefend/2)\Thread Wait Reason
\Thread(kxedefend/3)\Thread Wait Reason
\Thread(kxedefend/4)\Thread Wait Reason
\Thread(kxedefend/5)\Thread Wait Reason
\Thread(kxedefend/6)\Thread Wait Reason
\Thread(kxedefend/7)\Thread Wait Reason
\Thread(kxedefend/8)\Thread Wait Reason
\Thread(kxedefend/9)\Thread Wait Reason
\Thread(kxedefend/10)\Thread Wait Reason
\Thread(kxedefend/11)\Thread Wait Reason
\Thread(kxedefend/12)\Thread Wait Reason
\Thread(kxedefend/13)\Thread Wait Reason
\Thread(kxedefend/14)\Thread Wait Reason
\Thread(kxedefend/15)\Thread Wait Reason
\Thread(kxedefend/16)\Thread Wait Reason
\Thread(kxedefend/17)\Thread Wait Reason
\Thread(kxedefend/18)\Thread Wait Reason
\Thread(kxedefend/19)\Thread Wait Reason
\Thread(kxedefend/20)\Thread Wait Reason
\Thread(kxedefend/21)\Thread Wait Reason
\Thread(kxedefend/22)\Thread Wait Reason
\Thread(kxedefend/23)\Thread Wait Reason
\Thread(kxedefend/24)\Thread Wait Reason
\Thread(kxedefend/25)\Thread Wait Reason
\Thread(kxedefend/26)\Thread Wait Reason
\Thread(kxedefend/27)\Thread Wait Reason
\Thread(kxescore/0)\Thread Wait Reason
\Thread(kxescore/1)\Thread Wait Reason
\Thread(kxescore/2)\Thread Wait Reason
\Thread(kxescore/3)\Thread Wait Reason
\Thread(kxescore/4)\Thread Wait Reason
\Thread(kxescore/5)\Thread Wait Reason
\Thread(kxescore/6)\Thread Wait Reason
\Thread(kxescore/7)\Thread Wait Reason
\Thread(kxescore/8)\Thread Wait Reason
\Thread(kxescore/9)\Thread Wait Reason
\Thread(kxescore/10)\Thread Wait Reason
\Thread(kxescore/11)\Thread Wait Reason
\Thread(kxescore/12)\Thread Wait Reason
\Thread(kxescore/13)\Thread Wait Reason
\Thread(kxescore/14)\Thread Wait Reason
\Thread(kxescore/15)\Thread Wait Reason
\Thread(kxescore/16)\Thread Wait Reason
\Thread(kxescore/17)\Thread Wait Reason
\Thread(kxescore/18)\Thread Wait Reason
\Thread(kxescore/19)\Thread Wait Reason
\Thread(kxescore/20)\Thread Wait Reason
\Thread(kxescore/21)\Thread Wait Reason
\Thread(kxescore/22)\Thread Wait Reason
\Thread(kxescore/23)\Thread Wait Reason
\Thread(kxescore/24)\Thread Wait Reason
\Thread(kxescore/25)\Thread Wait Reason
\Thread(kxescore/26)\Thread Wait Reason
\Thread(kxescore/27)\Thread Wait Reason
\Thread(kxescore/28)\Thread Wait Reason
\Thread(kxescore/29)\Thread Wait Reason
\Thread(kxescore/30)\Thread Wait Reason
\Thread(kxescore/31)\Thread Wait Reason
\Thread(kxescore/32)\Thread Wait Reason
\Thread(kxescore/33)\Thread Wait Reason
\Thread(kxescore/34)\Thread Wait Reason
\Thread(kxescore/35)\Thread Wait Reason
\Thread(kxescore/36)\Thread Wait Reason
\Thread(kxescore/37)\Thread Wait Reason
\Thread(kxescore/38)\Thread Wait Reason
\Thread(kxescore/39)\Thread Wait Reason
\Thread(kxescore/40)\Thread Wait Reason
\Thread(kxescore/41)\Thread Wait Reason
\Thread(kxescore/42)\Thread Wait Reason
\Thread(kxescore/43)\Thread Wait Reason
\Thread(kxescore/44)\Thread Wait Reason
\Thread(kxescore/45)\Thread Wait Reason
\Thread(kxescore/46)\Thread Wait Reason
\Thread(kxescore/47)\Thread Wait Reason
\Thread(kxescore/48)\Thread Wait Reason
\Thread(kxescore/49)\Thread Wait Reason
\Thread(kxescore/50)\Thread Wait Reason
\Thread(kxescore/51)\Thread Wait Reason
\Thread(kxescore/52)\Thread Wait Reason
\Thread(kxescore/53)\Thread Wait Reason
\Thread(kxescore/54)\Thread Wait Reason
\Thread(kxescore/55)\Thread Wait Reason
\Thread(kxescore/56)\Thread Wait Reason
\Thread(kxescore/57)\Thread Wait Reason
\Thread(kxescore/58)\Thread Wait Reason
\Thread(kxescore/59)\Thread Wait Reason
\Thread(kxescore/60)\Thread Wait Reason
\Thread(KSafeSvc/0)\Thread Wait Reason
\Thread(KSafeSvc/1)\Thread Wait Reason
\Thread(KSafeSvc/2)\Thread Wait Reason
\Thread(KSafeSvc/3)\Thread Wait Reason
\Thread(KSafeSvc/4)\Thread Wait Reason
\Thread(KSafeSvc/5)\Thread Wait Reason
\Thread(KSafeSvc/6)\Thread Wait Reason
\Thread(KSafeSvc/7)\Thread Wait Reason
\Thread(KSafeSvc/8)\Thread Wait Reason
\Thread(KSafeSvc/9)\Thread Wait Reason
\Thread(KSafeSvc/10)\Thread Wait Reason
\Thread(KSafeSvc/11)\Thread Wait Reason
\Thread(KSafeSvc/12)\Thread Wait Reason
\Thread(KSafeSvc/13)\Thread Wait Reason
\Thread(KSafeSvc/14)\Thread Wait Reason
\Thread(KSafeSvc/15)\Thread Wait Reason
\Thread(KSafeSvc/16)\Thread Wait Reason
\Thread(KSafeSvc/17)\Thread Wait Reason
\Thread(KSafeSvc/18)\Thread Wait Reason
\Thread(KSafeSvc/19)\Thread Wait Reason
\Thread(KSafeSvc/20)\Thread Wait Reason
\Thread(KSafeSvc/21)\Thread Wait Reason
\Thread(KSafeSvc/22)\Thread Wait Reason
\Thread(KSafeSvc/23)\Thread Wait Reason
\Thread(KSafeSvc/24)\Thread Wait Reason
\Thread(KSafeSvc/25)\Thread Wait Reason
\Thread(KSafeSvc/26)\Thread Wait Reason
\Thread(KSafeSvc/27)\Thread Wait Reason
\Thread(KSafeSvc/28)\Thread Wait Reason
\Thread(KSafeSvc/29)\Thread Wait Reason
\Thread(KSafeSvc/30)\Thread Wait Reason
\Thread(KSafeSvc/31)\Thread Wait Reason
\Thread(KSafeSvc/32)\Thread Wait Reason
\Thread(KSafeSvc/33)\Thread Wait Reason
\Thread(KSafeSvc/34)\Thread Wait Reason
\Thread(KSafeSvc/35)\Thread Wait Reason
\Thread(KSafeSvc/36)\Thread Wait Reason
\Thread(KSafeSvc/37)\Thread Wait Reason
\Thread(KSafeSvc/38)\Thread Wait Reason
\Thread(KSafeSvc/39)\Thread Wait Reason
\Thread(KSafeSvc/40)\Thread Wait Reason
\Thread(KSafeSvc/41)\Thread Wait Reason
\Thread(KSafeSvc/42)\Thread Wait Reason
\Thread(KSafeSvc/43)\Thread Wait Reason
\Thread(KSafeSvc/44)\Thread Wait Reason
\Thread(KSafeSvc/45)\Thread Wait Reason
\Thread(KSafeSvc/46)\Thread Wait Reason
\Thread(KSafeSvc/47)\Thread Wait Reason
\Thread(KSafeSvc/48)\Thread Wait Reason
\Thread(KSafeSvc/49)\Thread Wait Reason
\Thread(KSafeSvc/50)\Thread Wait Reason
\Thread(KSafeSvc/51)\Thread Wait Reason
\Thread(KSafeSvc/52)\Thread Wait Reason
\Thread(KSafeSvc/53)\Thread Wait Reason
\Thread(kxesapp/0)\Thread Wait Reason
\Thread(kxesapp/1)\Thread Wait Reason
\Thread(kxesapp/2)\Thread Wait Reason
\Thread(kxesapp/3)\Thread Wait Reason
\Thread(kxesapp/4)\Thread Wait Reason
\Thread(kxesapp/5)\Thread Wait Reason
\Thread(kxesapp/6)\Thread Wait Reason
\Thread(kxesapp/7)\Thread Wait Reason
\Thread(kxesapp/8)\Thread Wait Reason
\Thread(kxesapp/9)\Thread Wait Reason
\Thread(kxesapp/10)\Thread Wait Reason
\Thread(kxesapp/11)\Thread Wait Reason
\Thread(kxesapp/12)\Thread Wait Reason
\Thread(kxesapp/13)\Thread Wait Reason
\Thread(kxesapp/14)\Thread Wait Reason
\Thread(kxesapp/15)\Thread Wait Reason
\Thread(kxesapp/16)\Thread Wait Reason
\Thread(kxesapp/17)\Thread Wait Reason
\Thread(kxesapp/18)\Thread Wait Reason
\Thread(kxesapp/19)\Thread Wait Reason
\Thread(kxesapp/20)\Thread Wait Reason
\Thread(kxesapp/21)\Thread Wait Reason
\Thread(kxesapp/22)\Thread Wait Reason
\Thread(spoolsv/0)\Thread Wait Reason
\Thread(spoolsv/1)\Thread Wait Reason
\Thread(spoolsv/2)\Thread Wait Reason
\Thread(spoolsv/3)\Thread Wait Reason
\Thread(spoolsv/4)\Thread Wait Reason
\Thread(spoolsv/5)\Thread Wait Reason
\Thread(spoolsv/6)\Thread Wait Reason
\Thread(spoolsv/7)\Thread Wait Reason
\Thread(spoolsv/8)\Thread Wait Reason
\Thread(spoolsv/9)\Thread Wait Reason
\Thread(spoolsv/10)\Thread Wait Reason
\Thread(spoolsv/11)\Thread Wait Reason
\Thread(spoolsv/12)\Thread Wait Reason
\Thread(spoolsv/13)\Thread Wait Reason
\Thread(alg/0)\Thread Wait Reason
\Thread(alg/1)\Thread Wait Reason
\Thread(alg/2)\Thread Wait Reason
\Thread(alg/3)\Thread Wait Reason
\Thread(alg/4)\Thread Wait Reason
\Thread(AsistService/0)\Thread Wait Reason
\Thread(AsistService/1)\Thread Wait Reason
\Thread(AsistService/2)\Thread Wait Reason
\Thread(DSRSvc/0)\Thread Wait Reason
\Thread(DSRSvc/1)\Thread Wait Reason
\Thread(DSRSvc/2)\Thread Wait Reason
\Thread(DSRSvc/3)\Thread Wait Reason
\Thread(DSRSvc/4)\Thread Wait Reason
\Thread(DSRSvc/5)\Thread Wait Reason
\Thread(DSRSvc/6)\Thread Wait Reason
\Thread(DSRSvc/7)\Thread Wait Reason
\Thread(DSRSvc/8)\Thread Wait Reason
\Thread(DSRSvc/9)\Thread Wait Reason
\Thread(DSRSvc/10)\Thread Wait Reason
\Thread(DSRSvc/11)\Thread Wait Reason
\Thread(DSRSvc/12)\Thread Wait Reason
\Thread(FolderSizeSvc/0)\Thread Wait Reason
\Thread(FolderSizeSvc/1)\Thread Wait Reason
\Thread(FolderSizeSvc/2)\Thread Wait Reason
\Thread(FolderSizeSvc/3)\Thread Wait Reason
\Thread(FolderSizeSvc/4)\Thread Wait Reason
\Thread(FolderSizeSvc/5)\Thread Wait Reason
\Thread(FolderSizeSvc/6)\Thread Wait Reason
\Thread(FolderSizeSvc/7)\Thread Wait Reason
\Thread(FolderSizeSvc/8)\Thread Wait Reason
\Thread(FolderSizeSvc/9)\Thread Wait Reason
\Thread(FolderSizeSvc/10)\Thread Wait Reason
\Thread(FolderSizeSvc/11)\Thread Wait Reason
\Thread(FolderSizeSvc/12)\Thread Wait Reason
\Thread(FolderSizeSvc/13)\Thread Wait Reason
\Thread(FolderSizeSvc/14)\Thread Wait Reason
\Thread(FolderSizeSvc/15)\Thread Wait Reason
\Thread(FolderSizeSvc/16)\Thread Wait Reason
\Thread(FolderSizeSvc/17)\Thread Wait Reason
\Thread(FolderSizeSvc/18)\Thread Wait Reason
\Thread(FolderSizeSvc/19)\Thread Wait Reason
\Thread(FolderSizeSvc/20)\Thread Wait Reason
\Thread(FolderSizeSvc/21)\Thread Wait Reason
\Thread(FolderSizeSvc/22)\Thread Wait Reason
\Thread(FolderSizeSvc/23)\Thread Wait Reason
\Thread(FolderSizeSvc/24)\Thread Wait Reason
\Thread(FolderSizeSvc/25)\Thread Wait Reason
\Thread(FolderSizeSvc/26)\Thread Wait Reason
\Thread(FolderSizeSvc/27)\Thread Wait Reason
\Thread(FolderSizeSvc/28)\Thread Wait Reason
\Thread(FolderSizeSvc/29)\Thread Wait Reason
\Thread(FolderSizeSvc/30)\Thread Wait Reason
\Thread(FolderSizeSvc/31)\Thread Wait Reason
\Thread(FolderSizeSvc/32)\Thread Wait Reason
\Thread(FolderSizeSvc/33)\Thread Wait Reason
\Thread(FolderSizeSvc/34)\Thread Wait Reason
\Thread(FolderSizeSvc/35)\Thread Wait Reason
\Thread(FolderSizeSvc/36)\Thread Wait Reason
\Thread(FolderSizeSvc/37)\Thread Wait Reason
\Thread(FolderSizeSvc/38)\Thread Wait Reason
\Thread(FolderSizeSvc/39)\Thread Wait Reason
\Thread(FolderSizeSvc/40)\Thread Wait Reason
\Thread(FolderSizeSvc/41)\Thread Wait Reason
\Thread(FolderSizeSvc/42)\Thread Wait Reason
\Thread(FolderSizeSvc/43)\Thread Wait Reason
\Thread(FolderSizeSvc/44)\Thread Wait Reason
\Thread(FolderSizeSvc/45)\Thread Wait Reason
\Thread(FolderSizeSvc/46)\Thread Wait Reason
\Thread(GSGIOSRV/0)\Thread Wait Reason
\Thread(GSGIOSRV/1)\Thread Wait Reason
\Thread(GSGIOSRV/2)\Thread Wait Reason
\Thread(upsvc/0)\Thread Wait Reason
\Thread(upsvc/1)\Thread Wait Reason
\Thread(upsvc/2)\Thread Wait Reason
\Thread(upsvc/3)\Thread Wait Reason
\Thread(upsvc/4)\Thread Wait Reason
\Thread(mdm/0)\Thread Wait Reason
\Thread(mdm/1)\Thread Wait Reason
\Thread(mdm/2)\Thread Wait Reason
\Thread(mdm/3)\Thread Wait Reason
\Thread(mdm/4)\Thread Wait Reason
\Thread(rtiosrv/0)\Thread Wait Reason
\Thread(rtiosrv/1)\Thread Wait Reason
\Thread(rtiosrv/2)\Thread Wait Reason
\Thread(rtiosrv/3)\Thread Wait Reason
\Thread(ManagerClient/0)\Thread Wait Reason
\Thread(ManagerClient/1)\Thread Wait Reason
\Thread(sqlwriter/0)\Thread Wait Reason
\Thread(sqlwriter/1)\Thread Wait Reason
\Thread(sqlwriter/2)\Thread Wait Reason
\Thread(vmware-usbarbitrator/0)\Thread Wait Reason
\Thread(vmware-usbarbitrator/1)\Thread Wait Reason
\Thread(vmnat/0)\Thread Wait Reason
\Thread(vmnat/1)\Thread Wait Reason
\Thread(vmnat/2)\Thread Wait Reason
\Thread(vmnetdhcp/0)\Thread Wait Reason
\Thread(vmnetdhcp/1)\Thread Wait Reason
\Thread(vmware-authd/0)\Thread Wait Reason
\Thread(vmware-authd/1)\Thread Wait Reason
\Thread(vmware-authd/2)\Thread Wait Reason
\Thread(vmware-authd/3)\Thread Wait Reason
\Thread(vmware-authd/4)\Thread Wait Reason
\Thread(vmware-authd/5)\Thread Wait Reason
\Thread(vmware-authd/6)\Thread Wait Reason
\Thread(explorer/0)\Thread Wait Reason
\Thread(explorer/1)\Thread Wait Reason
\Thread(explorer/2)\Thread Wait Reason
\Thread(explorer/3)\Thread Wait Reason
\Thread(explorer/4)\Thread Wait Reason
\Thread(explorer/5)\Thread Wait Reason
\Thread(explorer/6)\Thread Wait Reason
\Thread(explorer/7)\Thread Wait Reason
\Thread(explorer/8)\Thread Wait Reason
\Thread(explorer/9)\Thread Wait Reason
\Thread(explorer/10)\Thread Wait Reason
\Thread(explorer/11)\Thread Wait Reason
\Thread(explorer/12)\Thread Wait Reason
\Thread(explorer/13)\Thread Wait Reason
\Thread(explorer/14)\Thread Wait Reason
\Thread(explorer/15)\Thread Wait Reason
\Thread(explorer/16)\Thread Wait Reason
\Thread(explorer/17)\Thread Wait Reason
\Thread(explorer/18)\Thread Wait Reason
\Thread(explorer/19)\Thread Wait Reason
\Thread(explorer/20)\Thread Wait Reason
\Thread(explorer/21)\Thread Wait Reason
\Thread(explorer/22)\Thread Wait Reason
\Thread(TSVNCache/0)\Thread Wait Reason
\Thread(TSVNCache/1)\Thread Wait Reason
\Thread(TSVNCache/2)\Thread Wait Reason
\Thread(TSVNCache/3)\Thread Wait Reason
\Thread(TSVNCache/4)\Thread Wait Reason
\Thread(TSVNCache/5)\Thread Wait Reason
\Thread(TSVNCache/6)\Thread Wait Reason
\Thread(TSVNCache/7)\Thread Wait Reason
\Thread(TSVNCache/8)\Thread Wait Reason
\Thread(TSVNCache/9)\Thread Wait Reason
\Thread(TSVNCache/10)\Thread Wait Reason
\Thread(igfxtray/0)\Thread Wait Reason
\Thread(igfxtray/1)\Thread Wait Reason
\Thread(hkcmd/0)\Thread Wait Reason
\Thread(hkcmd/1)\Thread Wait Reason
\Thread(hkcmd/2)\Thread Wait Reason
\Thread(igfxpers/0)\Thread Wait Reason
\Thread(igfxpers/1)\Thread Wait Reason
\Thread(KSafeTray/0)\Thread Wait Reason
\Thread(KSafeTray/1)\Thread Wait Reason
\Thread(KSafeTray/2)\Thread Wait Reason
\Thread(KSafeTray/3)\Thread Wait Reason
\Thread(KSafeTray/4)\Thread Wait Reason
\Thread(KSafeTray/5)\Thread Wait Reason
\Thread(KSafeTray/6)\Thread Wait Reason
\Thread(KSafeTray/7)\Thread Wait Reason
\Thread(KSafeTray/8)\Thread Wait Reason
\Thread(KSafeTray/9)\Thread Wait Reason
\Thread(KSafeTray/10)\Thread Wait Reason
\Thread(KSafeTray/11)\Thread Wait Reason
\Thread(KSafeTray/12)\Thread Wait Reason
\Thread(KSafeTray/13)\Thread Wait Reason
\Thread(KSafeTray/14)\Thread Wait Reason
\Thread(KSafeTray/15)\Thread Wait Reason
\Thread(KSafeTray/16)\Thread Wait Reason
\Thread(KSafeTray/17)\Thread Wait Reason
\Thread(KSafeTray/18)\Thread Wait Reason
\Thread(KSafeTray/19)\Thread Wait Reason
\Thread(KSafeTray/20)\Thread Wait Reason
\Thread(KSafeTray/21)\Thread Wait Reason
\Thread(KSafeTray/22)\Thread Wait Reason
\Thread(KSafeTray/23)\Thread Wait Reason
\Thread(kxetray/0)\Thread Wait Reason
\Thread(kxetray/1)\Thread Wait Reason
\Thread(kxetray/2)\Thread Wait Reason
\Thread(kxetray/3)\Thread Wait Reason
\Thread(kxetray/4)\Thread Wait Reason
\Thread(kxetray/5)\Thread Wait Reason
\Thread(kxetray/6)\Thread Wait Reason
\Thread(kxetray/7)\Thread Wait Reason
\Thread(kxetray/8)\Thread Wait Reason
\Thread(kxetray/9)\Thread Wait Reason
\Thread(kxetray/10)\Thread Wait Reason
\Thread(kxetray/11)\Thread Wait Reason
\Thread(kxetray/12)\Thread Wait Reason
\Thread(kxetray/13)\Thread Wait Reason
\Thread(kxetray/14)\Thread Wait Reason
\Thread(kxetray/15)\Thread Wait Reason
\Thread(kxetray/16)\Thread Wait Reason
\Thread(kxetray/17)\Thread Wait Reason
\Thread(kxetray/18)\Thread Wait Reason
\Thread(kxetray/19)\Thread Wait Reason
\Thread(kxetray/20)\Thread Wait Reason
\Thread(kxetray/21)\Thread Wait Reason
\Thread(kxetray/22)\Thread Wait Reason
\Thread(kxetray/23)\Thread Wait Reason
\Thread(igfxsrvc/0)\Thread Wait Reason
\Thread(igfxsrvc/1)\Thread Wait Reason
\Thread(igfxsrvc/2)\Thread Wait Reason
\Thread(igfxsrvc/3)\Thread Wait Reason
\Thread(Ext2Mgr/0)\Thread Wait Reason
\Thread(RTHDCPL/0)\Thread Wait Reason
\Thread(RTHDCPL/1)\Thread Wait Reason
\Thread(RTHDCPL/2)\Thread Wait Reason
\Thread(RTHDCPL/3)\Thread Wait Reason
\Thread(OfficeIM/0)\Thread Wait Reason
\Thread(OfficeIM/1)\Thread Wait Reason
\Thread(OfficeIM/2)\Thread Wait Reason
\Thread(OfficeIM/3)\Thread Wait Reason
\Thread(OfficeIM/4)\Thread Wait Reason
\Thread(OfficeIM/5)\Thread Wait Reason
\Thread(OfficeIM/6)\Thread Wait Reason
\Thread(OfficeIM/7)\Thread Wait Reason
\Thread(OfficeIM/8)\Thread Wait Reason
\Thread(OfficeIM/9)\Thread Wait Reason
\Thread(OfficeIM/10)\Thread Wait Reason
\Thread(OfficeIM/11)\Thread Wait Reason
\Thread(OfficeIM/12)\Thread Wait Reason
\Thread(OfficeIM/13)\Thread Wait Reason
\Thread(OfficeIM/14)\Thread Wait Reason
\Thread(vmware-tray/0)\Thread Wait Reason
\Thread(vmware-tray/1)\Thread Wait Reason
\Thread(vmware-tray/2)\Thread Wait Reason
\Thread(msnmsgr/0)\Thread Wait Reason
\Thread(msnmsgr/1)\Thread Wait Reason
\Thread(msnmsgr/2)\Thread Wait Reason
\Thread(msnmsgr/3)\Thread Wait Reason
\Thread(msnmsgr/4)\Thread Wait Reason
\Thread(msnmsgr/5)\Thread Wait Reason
\Thread(msnmsgr/6)\Thread Wait Reason
\Thread(msnmsgr/7)\Thread Wait Reason
\Thread(msnmsgr/8)\Thread Wait Reason
\Thread(msnmsgr/9)\Thread Wait Reason
\Thread(msnmsgr/10)\Thread Wait Reason
\Thread(msnmsgr/11)\Thread Wait Reason
\Thread(msnmsgr/12)\Thread Wait Reason
\Thread(msnmsgr/13)\Thread Wait Reason
\Thread(msnmsgr/14)\Thread Wait Reason
\Thread(msnmsgr/15)\Thread Wait Reason
\Thread(msnmsgr/16)\Thread Wait Reason
\Thread(msnmsgr/17)\Thread Wait Reason
\Thread(msnmsgr/18)\Thread Wait Reason
\Thread(msnmsgr/19)\Thread Wait Reason
\Thread(msnmsgr/20)\Thread Wait Reason
\Thread(msnmsgr/21)\Thread Wait Reason
\Thread(msnmsgr/22)\Thread Wait Reason
\Thread(msnmsgr/23)\Thread Wait Reason
\Thread(msnmsgr/24)\Thread Wait Reason
\Thread(msnmsgr/25)\Thread Wait Reason
\Thread(msnmsgr/26)\Thread Wait Reason
\Thread(msnmsgr/27)\Thread Wait Reason
\Thread(msnmsgr/28)\Thread Wait Reason
\Thread(msnmsgr/29)\Thread Wait Reason
\Thread(msnmsgr/30)\Thread Wait Reason
\Thread(msnmsgr/31)\Thread Wait Reason
\Thread(msnmsgr/32)\Thread Wait Reason
\Thread(msnmsgr/33)\Thread Wait Reason
\Thread(msnmsgr/34)\Thread Wait Reason
\Thread(msnmsgr/35)\Thread Wait Reason
\Thread(msnmsgr/36)\Thread Wait Reason
\Thread(msnmsgr/37)\Thread Wait Reason
\Thread(msnmsgr/38)\Thread Wait Reason
\Thread(msnmsgr/39)\Thread Wait Reason
\Thread(ctfmon/0)\Thread Wait Reason
\Thread(VVCap/0)\Thread Wait Reason
\Thread(VVCap/1)\Thread Wait Reason
\Thread(wlcomm/0)\Thread Wait Reason
\Thread(wlcomm/1)\Thread Wait Reason
\Thread(wlcomm/2)\Thread Wait Reason
\Thread(wlcomm/3)\Thread Wait Reason
\Thread(wlcomm/4)\Thread Wait Reason
\Thread(wlcomm/5)\Thread Wait Reason
\Thread(wlcomm/6)\Thread Wait Reason
\Thread(wlcomm/7)\Thread Wait Reason
\Thread(wlcomm/8)\Thread Wait Reason
\Thread(wlcomm/9)\Thread Wait Reason
\Thread(wlcomm/10)\Thread Wait Reason
\Thread(wlcomm/11)\Thread Wait Reason
\Thread(wlcomm/12)\Thread Wait Reason
\Thread(wlcomm/13)\Thread Wait Reason
\Thread(wlcomm/14)\Thread Wait Reason
\Thread(WPFFontCache_v0400/0)\Thread Wait Reason
\Thread(WPFFontCache_v0400/1)\Thread Wait Reason
\Thread(WPFFontCache_v0400/2)\Thread Wait Reason
\Thread(WPFFontCache_v0400/3)\Thread Wait Reason
\Thread(WPFFontCache_v0400/4)\Thread Wait Reason
\Thread(WPFFontCache_v0400/5)\Thread Wait Reason
\Thread(WPFFontCache_v0400/6)\Thread Wait Reason
\Thread(KuGoo/0)\Thread Wait Reason
\Thread(KuGoo/1)\Thread Wait Reason
\Thread(KuGoo/2)\Thread Wait Reason
\Thread(KuGoo/3)\Thread Wait Reason
\Thread(KuGoo/4)\Thread Wait Reason
\Thread(KuGoo/5)\Thread Wait Reason
\Thread(KuGoo/6)\Thread Wait Reason
\Thread(KuGoo/7)\Thread Wait Reason
\Thread(KuGoo/8)\Thread Wait Reason
\Thread(KuGoo/9)\Thread Wait Reason
\Thread(KuGoo/10)\Thread Wait Reason
\Thread(KuGoo/11)\Thread Wait Reason
\Thread(KuGoo/12)\Thread Wait Reason
\Thread(KuGoo/13)\Thread Wait Reason
\Thread(KuGoo/14)\Thread Wait Reason
\Thread(KuGoo/15)\Thread Wait Reason
\Thread(KuGoo/16)\Thread Wait Reason
\Thread(KuGoo/17)\Thread Wait Reason
\Thread(KuGoo/18)\Thread Wait Reason
\Thread(KuGoo/19)\Thread Wait Reason
\Thread(KuGoo/20)\Thread Wait Reason
\Thread(KuGoo/21)\Thread Wait Reason
\Thread(KuGoo/22)\Thread Wait Reason
\Thread(KuGoo/23)\Thread Wait Reason
\Thread(KuGoo/24)\Thread Wait Reason
\Thread(KuGoo/25)\Thread Wait Reason
\Thread(KuGoo/26)\Thread Wait Reason
\Thread(KuGoo/27)\Thread Wait Reason
\Thread(KuGoo/28)\Thread Wait Reason
\Thread(KuGoo/29)\Thread Wait Reason
\Thread(KuGoo/30)\Thread Wait Reason
\Thread(KuGoo/31)\Thread Wait Reason
\Thread(KuGoo/32)\Thread Wait Reason
\Thread(KuGoo/33)\Thread Wait Reason
\Thread(KuGoo/34)\Thread Wait Reason
\Thread(KuGoo/35)\Thread Wait Reason
\Thread(KuGoo/36)\Thread Wait Reason
\Thread(KuGoo/37)\Thread Wait Reason
\Thread(KuGoo/38)\Thread Wait Reason
\Thread(KuGoo/39)\Thread Wait Reason
\Thread(KuGoo/40)\Thread Wait Reason
\Thread(KuGoo/41)\Thread Wait Reason
\Thread(KuGoo/42)\Thread Wait Reason
\Thread(KuGoo/43)\Thread Wait Reason
\Thread(KuGoo/44)\Thread Wait Reason
\Thread(KuGoo/45)\Thread Wait Reason
\Thread(KuGoo/46)\Thread Wait Reason
\Thread(KuGoo/47)\Thread Wait Reason
\Thread(KuGoo/48)\Thread Wait Reason
\Thread(KuGoo/49)\Thread Wait Reason
\Thread(KuGoo/50)\Thread Wait Reason
\Thread(KuGoo/51)\Thread Wait Reason
\Thread(KuGoo/52)\Thread Wait Reason
\Thread(KuGoo/53)\Thread Wait Reason
\Thread(KuGoo/54)\Thread Wait Reason
\Thread(KuGoo/55)\Thread Wait Reason
\Thread(KuGoo/56)\Thread Wait Reason
\Thread(KuGoo/57)\Thread Wait Reason
\Thread(KuGoo/58)\Thread Wait Reason
\Thread(KuGoo/59)\Thread Wait Reason
\Thread(firefox/0)\Thread Wait Reason
\Thread(firefox/1)\Thread Wait Reason
\Thread(firefox/2)\Thread Wait Reason
\Thread(firefox/3)\Thread Wait Reason
\Thread(firefox/4)\Thread Wait Reason
\Thread(firefox/5)\Thread Wait Reason
\Thread(firefox/6)\Thread Wait Reason
\Thread(firefox/7)\Thread Wait Reason
\Thread(firefox/8)\Thread Wait Reason
\Thread(firefox/9)\Thread Wait Reason
\Thread(firefox/10)\Thread Wait Reason
\Thread(firefox/11)\Thread Wait Reason
\Thread(firefox/12)\Thread Wait Reason
\Thread(firefox/13)\Thread Wait Reason
\Thread(firefox/14)\Thread Wait Reason
\Thread(firefox/15)\Thread Wait Reason
\Thread(firefox/16)\Thread Wait Reason
\Thread(firefox/17)\Thread Wait Reason
\Thread(firefox/18)\Thread Wait Reason
\Thread(firefox/19)\Thread Wait Reason
\Thread(firefox/20)\Thread Wait Reason
\Thread(firefox/21)\Thread Wait Reason
\Thread(firefox/22)\Thread Wait Reason
\Thread(firefox/23)\Thread Wait Reason
\Thread(firefox/24)\Thread Wait Reason
\Thread(vmware/0)\Thread Wait Reason
\Thread(vmware/1)\Thread Wait Reason
\Thread(vmware/2)\Thread Wait Reason
\Thread(vmware/3)\Thread Wait Reason
\Thread(vmware/4)\Thread Wait Reason
\Thread(vmware/5)\Thread Wait Reason
\Thread(vmware/6)\Thread Wait Reason
\Thread(vmware/7)\Thread Wait Reason
\Thread(taskmgr/0)\Thread Wait Reason
\Thread(taskmgr/1)\Thread Wait Reason
\Thread(taskmgr/2)\Thread Wait Reason
\Thread(SshClient/0)\Thread Wait Reason
\Thread(SshClient/1)\Thread Wait Reason
\Thread(SshClient/2)\Thread Wait Reason
\Thread(SshClient/3)\Thread Wait Reason
\Thread(SshClient/4)\Thread Wait Reason
\Thread(SshClient/5)\Thread Wait Reason
\Thread(SshClient/6)\Thread Wait Reason
\Thread(Thunder5/0)\Thread Wait Reason
\Thread(Thunder5/1)\Thread Wait Reason
\Thread(Thunder5/2)\Thread Wait Reason
\Thread(Thunder5/3)\Thread Wait Reason
\Thread(Thunder5/4)\Thread Wait Reason
\Thread(Thunder5/5)\Thread Wait Reason
\Thread(Thunder5/6)\Thread Wait Reason
\Thread(Thunder5/7)\Thread Wait Reason
\Thread(Thunder5/8)\Thread Wait Reason
\Thread(Thunder5/9)\Thread Wait Reason
\Thread(Thunder5/10)\Thread Wait Reason
\Thread(Thunder5/11)\Thread Wait Reason
\Thread(Thunder5/12)\Thread Wait Reason
\Thread(Thunder5/13)\Thread Wait Reason
\Thread(Thunder5/14)\Thread Wait Reason
\Thread(Thunder5/15)\Thread Wait Reason
\Thread(Thunder5/16)\Thread Wait Reason
\Thread(Thunder5/17)\Thread Wait Reason
\Thread(Thunder5/18)\Thread Wait Reason
\Thread(Thunder5/19)\Thread Wait Reason
\Thread(Thunder5/20)\Thread Wait Reason
\Thread(Thunder5/21)\Thread Wait Reason
\Thread(Thunder5/22)\Thread Wait Reason
\Thread(Thunder5/23)\Thread Wait Reason
\Thread(Thunder5/24)\Thread Wait Reason
\Thread(Thunder5/25)\Thread Wait Reason
\Thread(Thunder5/26)\Thread Wait Reason
\Thread(Thunder5/27)\Thread Wait Reason
\Thread(Thunder5/28)\Thread Wait Reason
\Thread(Thunder5/29)\Thread Wait Reason
\Thread(Thunder5/30)\Thread Wait Reason
\Thread(Thunder5/31)\Thread Wait Reason
\Thread(Thunder5/32)\Thread Wait Reason
\Thread(Thunder5/33)\Thread Wait Reason
\Thread(Thunder5/34)\Thread Wait Reason
\Thread(Thunder5/35)\Thread Wait Reason
\Thread(Thunder5/36)\Thread Wait Reason
\Thread(Thunder5/37)\Thread Wait Reason
\Thread(Thunder5/38)\Thread Wait Reason
\Thread(Thunder5/39)\Thread Wait Reason
\Thread(Thunder5/40)\Thread Wait Reason
\Thread(Thunder5/41)\Thread Wait Reason
\Thread(Thunder5/42)\Thread Wait Reason
\Thread(Thunder5/43)\Thread Wait Reason
\Thread(Thunder5/44)\Thread Wait Reason
\Thread(Thunder5/45)\Thread Wait Reason
\Thread(Thunder5/46)\Thread Wait Reason
\Thread(cmd/0)\Thread Wait Reason
\Thread(typeperf/0)\Thread Wait Reason
\Thread(typeperf/1)\Thread Wait Reason
\Thread(typeperf/2)\Thread Wait Reason
\Thread(typeperf/3)\Thread Wait Reason
\Thread(typeperf/4)\Thread Wait Reason
\Thread(typeperf/5)\Thread Wait Reason
\Thread(typeperf/6)\Thread Wait Reason
\Thread(typeperf/7)\Thread Wait Reason
\Thread(typeperf/8)\Thread Wait Reason
\Thread(typeperf/9)\Thread Wait Reason
\Thread(typeperf/10)\Thread Wait Reason
\Thread(_Total/_Total)\Thread Wait Reason
\Thread(Idle/0)\ID Process
\Thread(Idle/1)\ID Process
\Thread(System/0)\ID Process
\Thread(System/1)\ID Process
\Thread(System/2)\ID Process
\Thread(System/3)\ID Process
\Thread(System/4)\ID Process
\Thread(System/5)\ID Process
\Thread(System/6)\ID Process
\Thread(System/7)\ID Process
\Thread(System/8)\ID Process
\Thread(System/9)\ID Process
\Thread(System/10)\ID Process
\Thread(System/11)\ID Process
\Thread(System/12)\ID Process
\Thread(System/13)\ID Process
\Thread(System/14)\ID Process
\Thread(System/15)\ID Process
\Thread(System/16)\ID Process
\Thread(System/17)\ID Process
\Thread(System/18)\ID Process
\Thread(System/19)\ID Process
\Thread(System/20)\ID Process
\Thread(System/21)\ID Process
\Thread(System/22)\ID Process
\Thread(System/23)\ID Process
\Thread(System/24)\ID Process
\Thread(System/25)\ID Process
\Thread(System/26)\ID Process
\Thread(System/27)\ID Process
\Thread(System/28)\ID Process
\Thread(System/29)\ID Process
\Thread(System/30)\ID Process
\Thread(System/31)\ID Process
\Thread(System/32)\ID Process
\Thread(System/33)\ID Process
\Thread(System/34)\ID Process
\Thread(System/35)\ID Process
\Thread(System/36)\ID Process
\Thread(System/37)\ID Process
\Thread(System/38)\ID Process
\Thread(System/39)\ID Process
\Thread(System/40)\ID Process
\Thread(System/41)\ID Process
\Thread(System/42)\ID Process
\Thread(System/43)\ID Process
\Thread(System/44)\ID Process
\Thread(System/45)\ID Process
\Thread(System/46)\ID Process
\Thread(System/47)\ID Process
\Thread(System/48)\ID Process
\Thread(System/49)\ID Process
\Thread(System/50)\ID Process
\Thread(System/51)\ID Process
\Thread(System/52)\ID Process
\Thread(System/53)\ID Process
\Thread(System/54)\ID Process
\Thread(System/55)\ID Process
\Thread(System/56)\ID Process
\Thread(System/57)\ID Process
\Thread(System/58)\ID Process
\Thread(System/59)\ID Process
\Thread(System/60)\ID Process
\Thread(System/61)\ID Process
\Thread(System/62)\ID Process
\Thread(System/63)\ID Process
\Thread(System/64)\ID Process
\Thread(System/65)\ID Process
\Thread(System/66)\ID Process
\Thread(System/67)\ID Process
\Thread(System/68)\ID Process
\Thread(System/69)\ID Process
\Thread(System/70)\ID Process
\Thread(System/71)\ID Process
\Thread(System/72)\ID Process
\Thread(System/73)\ID Process
\Thread(System/74)\ID Process
\Thread(System/75)\ID Process
\Thread(System/76)\ID Process
\Thread(System/77)\ID Process
\Thread(System/78)\ID Process
\Thread(System/79)\ID Process
\Thread(System/80)\ID Process
\Thread(System/81)\ID Process
\Thread(System/82)\ID Process
\Thread(System/83)\ID Process
\Thread(System/84)\ID Process
\Thread(System/85)\ID Process
\Thread(System/86)\ID Process
\Thread(System/87)\ID Process
\Thread(System/88)\ID Process
\Thread(System/89)\ID Process
\Thread(System/90)\ID Process
\Thread(System/91)\ID Process
\Thread(System/92)\ID Process
\Thread(System/93)\ID Process
\Thread(System/94)\ID Process
\Thread(System/95)\ID Process
\Thread(System/96)\ID Process
\Thread(System/97)\ID Process
\Thread(smss/0)\ID Process
\Thread(smss/1)\ID Process
\Thread(smss/2)\ID Process
\Thread(csrss/0)\ID Process
\Thread(csrss/1)\ID Process
\Thread(csrss/2)\ID Process
\Thread(csrss/3)\ID Process
\Thread(csrss/4)\ID Process
\Thread(csrss/5)\ID Process
\Thread(csrss/6)\ID Process
\Thread(csrss/7)\ID Process
\Thread(csrss/8)\ID Process
\Thread(csrss/9)\ID Process
\Thread(csrss/10)\ID Process
\Thread(csrss/11)\ID Process
\Thread(winlogon/0)\ID Process
\Thread(winlogon/1)\ID Process
\Thread(winlogon/2)\ID Process
\Thread(winlogon/3)\ID Process
\Thread(winlogon/4)\ID Process
\Thread(winlogon/5)\ID Process
\Thread(winlogon/6)\ID Process
\Thread(winlogon/7)\ID Process
\Thread(winlogon/8)\ID Process
\Thread(winlogon/9)\ID Process
\Thread(winlogon/10)\ID Process
\Thread(winlogon/11)\ID Process
\Thread(winlogon/12)\ID Process
\Thread(winlogon/13)\ID Process
\Thread(winlogon/14)\ID Process
\Thread(winlogon/15)\ID Process
\Thread(winlogon/16)\ID Process
\Thread(winlogon/17)\ID Process
\Thread(winlogon/18)\ID Process
\Thread(winlogon/19)\ID Process
\Thread(winlogon/20)\ID Process
\Thread(winlogon/21)\ID Process
\Thread(services/0)\ID Process
\Thread(services/1)\ID Process
\Thread(services/2)\ID Process
\Thread(services/3)\ID Process
\Thread(services/4)\ID Process
\Thread(services/5)\ID Process
\Thread(services/6)\ID Process
\Thread(services/7)\ID Process
\Thread(services/8)\ID Process
\Thread(services/9)\ID Process
\Thread(services/10)\ID Process
\Thread(services/11)\ID Process
\Thread(services/12)\ID Process
\Thread(services/13)\ID Process
\Thread(services/14)\ID Process
\Thread(services/15)\ID Process
\Thread(lsass/0)\ID Process
\Thread(lsass/1)\ID Process
\Thread(lsass/2)\ID Process
\Thread(lsass/3)\ID Process
\Thread(lsass/4)\ID Process
\Thread(lsass/5)\ID Process
\Thread(lsass/6)\ID Process
\Thread(lsass/7)\ID Process
\Thread(lsass/8)\ID Process
\Thread(lsass/9)\ID Process
\Thread(lsass/10)\ID Process
\Thread(lsass/11)\ID Process
\Thread(lsass/12)\ID Process
\Thread(lsass/13)\ID Process
\Thread(lsass/14)\ID Process
\Thread(lsass/15)\ID Process
\Thread(lsass/16)\ID Process
\Thread(lsass/17)\ID Process
\Thread(lsass/18)\ID Process
\Thread(lsass/19)\ID Process
\Thread(lsass/20)\ID Process
\Thread(lsass/21)\ID Process
\Thread(svchost/0)\ID Process
\Thread(svchost/1)\ID Process
\Thread(svchost/2)\ID Process
\Thread(svchost/3)\ID Process
\Thread(svchost/4)\ID Process
\Thread(svchost/5)\ID Process
\Thread(svchost/6)\ID Process
\Thread(svchost/7)\ID Process
\Thread(svchost/0)\ID Process
\Thread(svchost/1)\ID Process
\Thread(svchost/2)\ID Process
\Thread(svchost/3)\ID Process
\Thread(svchost/4)\ID Process
\Thread(svchost/5)\ID Process
\Thread(svchost/6)\ID Process
\Thread(svchost/7)\ID Process
\Thread(svchost/8)\ID Process
\Thread(svchost/9)\ID Process
\Thread(svchost/10)\ID Process
\Thread(svchost/11)\ID Process
\Thread(svchost/12)\ID Process
\Thread(svchost/13)\ID Process
\Thread(svchost/14)\ID Process
\Thread(svchost/15)\ID Process
\Thread(svchost/16)\ID Process
\Thread(svchost/17)\ID Process
\Thread(svchost/18)\ID Process
\Thread(svchost/19)\ID Process
\Thread(svchost/20)\ID Process
\Thread(svchost/21)\ID Process
\Thread(svchost/22)\ID Process
\Thread(svchost/23)\ID Process
\Thread(svchost/24)\ID Process
\Thread(svchost/25)\ID Process
\Thread(svchost/26)\ID Process
\Thread(svchost/27)\ID Process
\Thread(svchost/28)\ID Process
\Thread(svchost/29)\ID Process
\Thread(svchost/30)\ID Process
\Thread(svchost/31)\ID Process
\Thread(svchost/32)\ID Process
\Thread(svchost/33)\ID Process
\Thread(svchost/34)\ID Process
\Thread(svchost/35)\ID Process
\Thread(svchost/36)\ID Process
\Thread(svchost/37)\ID Process
\Thread(svchost/38)\ID Process
\Thread(svchost/39)\ID Process
\Thread(svchost/40)\ID Process
\Thread(svchost/41)\ID Process
\Thread(svchost/42)\ID Process
\Thread(svchost/43)\ID Process
\Thread(svchost/44)\ID Process
\Thread(svchost/45)\ID Process
\Thread(svchost/46)\ID Process
\Thread(svchost/47)\ID Process
\Thread(svchost/48)\ID Process
\Thread(svchost/49)\ID Process
\Thread(svchost/50)\ID Process
\Thread(svchost/51)\ID Process
\Thread(svchost/52)\ID Process
\Thread(svchost/53)\ID Process
\Thread(svchost/54)\ID Process
\Thread(svchost/55)\ID Process
\Thread(svchost/56)\ID Process
\Thread(svchost/57)\ID Process
\Thread(svchost/58)\ID Process
\Thread(svchost/59)\ID Process
\Thread(svchost/60)\ID Process
\Thread(svchost/61)\ID Process
\Thread(svchost/62)\ID Process
\Thread(svchost/63)\ID Process
\Thread(svchost/64)\ID Process
\Thread(svchost/65)\ID Process
\Thread(svchost/66)\ID Process
\Thread(svchost/67)\ID Process
\Thread(svchost/68)\ID Process
\Thread(svchost/69)\ID Process
\Thread(svchost/70)\ID Process
\Thread(svchost/0)\ID Process
\Thread(svchost/1)\ID Process
\Thread(svchost/2)\ID Process
\Thread(svchost/3)\ID Process
\Thread(svchost/4)\ID Process
\Thread(svchost/5)\ID Process
\Thread(svchost/0)\ID Process
\Thread(svchost/1)\ID Process
\Thread(svchost/2)\ID Process
\Thread(svchost/3)\ID Process
\Thread(svchost/4)\ID Process
\Thread(svchost/5)\ID Process
\Thread(svchost/6)\ID Process
\Thread(svchost/7)\ID Process
\Thread(svchost/8)\ID Process
\Thread(svchost/9)\ID Process
\Thread(svchost/10)\ID Process
\Thread(svchost/11)\ID Process
\Thread(svchost/12)\ID Process
\Thread(svchost/13)\ID Process
\Thread(svchost/14)\ID Process
\Thread(svchost/0)\ID Process
\Thread(svchost/1)\ID Process
\Thread(svchost/2)\ID Process
\Thread(svchost/3)\ID Process
\Thread(svchost/4)\ID Process
\Thread(kxedefend/0)\ID Process
\Thread(kxedefend/1)\ID Process
\Thread(kxedefend/2)\ID Process
\Thread(kxedefend/3)\ID Process
\Thread(kxedefend/4)\ID Process
\Thread(kxedefend/5)\ID Process
\Thread(kxedefend/6)\ID Process
\Thread(kxedefend/7)\ID Process
\Thread(kxedefend/8)\ID Process
\Thread(kxedefend/9)\ID Process
\Thread(kxedefend/10)\ID Process
\Thread(kxedefend/11)\ID Process
\Thread(kxedefend/12)\ID Process
\Thread(kxedefend/13)\ID Process
\Thread(kxedefend/14)\ID Process
\Thread(kxedefend/15)\ID Process
\Thread(kxedefend/16)\ID Process
\Thread(kxedefend/17)\ID Process
\Thread(kxedefend/18)\ID Process
\Thread(kxedefend/19)\ID Process
\Thread(kxedefend/20)\ID Process
\Thread(kxedefend/21)\ID Process
\Thread(kxedefend/22)\ID Process
\Thread(kxedefend/23)\ID Process
\Thread(kxedefend/24)\ID Process
\Thread(kxedefend/25)\ID Process
\Thread(kxedefend/26)\ID Process
\Thread(kxedefend/27)\ID Process
\Thread(kxescore/0)\ID Process
\Thread(kxescore/1)\ID Process
\Thread(kxescore/2)\ID Process
\Thread(kxescore/3)\ID Process
\Thread(kxescore/4)\ID Process
\Thread(kxescore/5)\ID Process
\Thread(kxescore/6)\ID Process
\Thread(kxescore/7)\ID Process
\Thread(kxescore/8)\ID Process
\Thread(kxescore/9)\ID Process
\Thread(kxescore/10)\ID Process
\Thread(kxescore/11)\ID Process
\Thread(kxescore/12)\ID Process
\Thread(kxescore/13)\ID Process
\Thread(kxescore/14)\ID Process
\Thread(kxescore/15)\ID Process
\Thread(kxescore/16)\ID Process
\Thread(kxescore/17)\ID Process
\Thread(kxescore/18)\ID Process
\Thread(kxescore/19)\ID Process
\Thread(kxescore/20)\ID Process
\Thread(kxescore/21)\ID Process
\Thread(kxescore/22)\ID Process
\Thread(kxescore/23)\ID Process
\Thread(kxescore/24)\ID Process
\Thread(kxescore/25)\ID Process
\Thread(kxescore/26)\ID Process
\Thread(kxescore/27)\ID Process
\Thread(kxescore/28)\ID Process
\Thread(kxescore/29)\ID Process
\Thread(kxescore/30)\ID Process
\Thread(kxescore/31)\ID Process
\Thread(kxescore/32)\ID Process
\Thread(kxescore/33)\ID Process
\Thread(kxescore/34)\ID Process
\Thread(kxescore/35)\ID Process
\Thread(kxescore/36)\ID Process
\Thread(kxescore/37)\ID Process
\Thread(kxescore/38)\ID Process
\Thread(kxescore/39)\ID Process
\Thread(kxescore/40)\ID Process
\Thread(kxescore/41)\ID Process
\Thread(kxescore/42)\ID Process
\Thread(kxescore/43)\ID Process
\Thread(kxescore/44)\ID Process
\Thread(kxescore/45)\ID Process
\Thread(kxescore/46)\ID Process
\Thread(kxescore/47)\ID Process
\Thread(kxescore/48)\ID Process
\Thread(kxescore/49)\ID Process
\Thread(kxescore/50)\ID Process
\Thread(kxescore/51)\ID Process
\Thread(kxescore/52)\ID Process
\Thread(kxescore/53)\ID Process
\Thread(kxescore/54)\ID Process
\Thread(kxescore/55)\ID Process
\Thread(kxescore/56)\ID Process
\Thread(kxescore/57)\ID Process
\Thread(kxescore/58)\ID Process
\Thread(kxescore/59)\ID Process
\Thread(kxescore/60)\ID Process
\Thread(KSafeSvc/0)\ID Process
\Thread(KSafeSvc/1)\ID Process
\Thread(KSafeSvc/2)\ID Process
\Thread(KSafeSvc/3)\ID Process
\Thread(KSafeSvc/4)\ID Process
\Thread(KSafeSvc/5)\ID Process
\Thread(KSafeSvc/6)\ID Process
\Thread(KSafeSvc/7)\ID Process
\Thread(KSafeSvc/8)\ID Process
\Thread(KSafeSvc/9)\ID Process
\Thread(KSafeSvc/10)\ID Process
\Thread(KSafeSvc/11)\ID Process
\Thread(KSafeSvc/12)\ID Process
\Thread(KSafeSvc/13)\ID Process
\Thread(KSafeSvc/14)\ID Process
\Thread(KSafeSvc/15)\ID Process
\Thread(KSafeSvc/16)\ID Process
\Thread(KSafeSvc/17)\ID Process
\Thread(KSafeSvc/18)\ID Process
\Thread(KSafeSvc/19)\ID Process
\Thread(KSafeSvc/20)\ID Process
\Thread(KSafeSvc/21)\ID Process
\Thread(KSafeSvc/22)\ID Process
\Thread(KSafeSvc/23)\ID Process
\Thread(KSafeSvc/24)\ID Process
\Thread(KSafeSvc/25)\ID Process
\Thread(KSafeSvc/26)\ID Process
\Thread(KSafeSvc/27)\ID Process
\Thread(KSafeSvc/28)\ID Process
\Thread(KSafeSvc/29)\ID Process
\Thread(KSafeSvc/30)\ID Process
\Thread(KSafeSvc/31)\ID Process
\Thread(KSafeSvc/32)\ID Process
\Thread(KSafeSvc/33)\ID Process
\Thread(KSafeSvc/34)\ID Process
\Thread(KSafeSvc/35)\ID Process
\Thread(KSafeSvc/36)\ID Process
\Thread(KSafeSvc/37)\ID Process
\Thread(KSafeSvc/38)\ID Process
\Thread(KSafeSvc/39)\ID Process
\Thread(KSafeSvc/40)\ID Process
\Thread(KSafeSvc/41)\ID Process
\Thread(KSafeSvc/42)\ID Process
\Thread(KSafeSvc/43)\ID Process
\Thread(KSafeSvc/44)\ID Process
\Thread(KSafeSvc/45)\ID Process
\Thread(KSafeSvc/46)\ID Process
\Thread(KSafeSvc/47)\ID Process
\Thread(KSafeSvc/48)\ID Process
\Thread(KSafeSvc/49)\ID Process
\Thread(KSafeSvc/50)\ID Process
\Thread(KSafeSvc/51)\ID Process
\Thread(KSafeSvc/52)\ID Process
\Thread(KSafeSvc/53)\ID Process
\Thread(kxesapp/0)\ID Process
\Thread(kxesapp/1)\ID Process
\Thread(kxesapp/2)\ID Process
\Thread(kxesapp/3)\ID Process
\Thread(kxesapp/4)\ID Process
\Thread(kxesapp/5)\ID Process
\Thread(kxesapp/6)\ID Process
\Thread(kxesapp/7)\ID Process
\Thread(kxesapp/8)\ID Process
\Thread(kxesapp/9)\ID Process
\Thread(kxesapp/10)\ID Process
\Thread(kxesapp/11)\ID Process
\Thread(kxesapp/12)\ID Process
\Thread(kxesapp/13)\ID Process
\Thread(kxesapp/14)\ID Process
\Thread(kxesapp/15)\ID Process
\Thread(kxesapp/16)\ID Process
\Thread(kxesapp/17)\ID Process
\Thread(kxesapp/18)\ID Process
\Thread(kxesapp/19)\ID Process
\Thread(kxesapp/20)\ID Process
\Thread(kxesapp/21)\ID Process
\Thread(kxesapp/22)\ID Process
\Thread(spoolsv/0)\ID Process
\Thread(spoolsv/1)\ID Process
\Thread(spoolsv/2)\ID Process
\Thread(spoolsv/3)\ID Process
\Thread(spoolsv/4)\ID Process
\Thread(spoolsv/5)\ID Process
\Thread(spoolsv/6)\ID Process
\Thread(spoolsv/7)\ID Process
\Thread(spoolsv/8)\ID Process
\Thread(spoolsv/9)\ID Process
\Thread(spoolsv/10)\ID Process
\Thread(spoolsv/11)\ID Process
\Thread(spoolsv/12)\ID Process
\Thread(spoolsv/13)\ID Process
\Thread(alg/0)\ID Process
\Thread(alg/1)\ID Process
\Thread(alg/2)\ID Process
\Thread(alg/3)\ID Process
\Thread(alg/4)\ID Process
\Thread(AsistService/0)\ID Process
\Thread(AsistService/1)\ID Process
\Thread(AsistService/2)\ID Process
\Thread(DSRSvc/0)\ID Process
\Thread(DSRSvc/1)\ID Process
\Thread(DSRSvc/2)\ID Process
\Thread(DSRSvc/3)\ID Process
\Thread(DSRSvc/4)\ID Process
\Thread(DSRSvc/5)\ID Process
\Thread(DSRSvc/6)\ID Process
\Thread(DSRSvc/7)\ID Process
\Thread(DSRSvc/8)\ID Process
\Thread(DSRSvc/9)\ID Process
\Thread(DSRSvc/10)\ID Process
\Thread(DSRSvc/11)\ID Process
\Thread(DSRSvc/12)\ID Process
\Thread(FolderSizeSvc/0)\ID Process
\Thread(FolderSizeSvc/1)\ID Process
\Thread(FolderSizeSvc/2)\ID Process
\Thread(FolderSizeSvc/3)\ID Process
\Thread(FolderSizeSvc/4)\ID Process
\Thread(FolderSizeSvc/5)\ID Process
\Thread(FolderSizeSvc/6)\ID Process
\Thread(FolderSizeSvc/7)\ID Process
\Thread(FolderSizeSvc/8)\ID Process
\Thread(FolderSizeSvc/9)\ID Process
\Thread(FolderSizeSvc/10)\ID Process
\Thread(FolderSizeSvc/11)\ID Process
\Thread(FolderSizeSvc/12)\ID Process
\Thread(FolderSizeSvc/13)\ID Process
\Thread(FolderSizeSvc/14)\ID Process
\Thread(FolderSizeSvc/15)\ID Process
\Thread(FolderSizeSvc/16)\ID Process
\Thread(FolderSizeSvc/17)\ID Process
\Thread(FolderSizeSvc/18)\ID Process
\Thread(FolderSizeSvc/19)\ID Process
\Thread(FolderSizeSvc/20)\ID Process
\Thread(FolderSizeSvc/21)\ID Process
\Thread(FolderSizeSvc/22)\ID Process
\Thread(FolderSizeSvc/23)\ID Process
\Thread(FolderSizeSvc/24)\ID Process
\Thread(FolderSizeSvc/25)\ID Process
\Thread(FolderSizeSvc/26)\ID Process
\Thread(FolderSizeSvc/27)\ID Process
\Thread(FolderSizeSvc/28)\ID Process
\Thread(FolderSizeSvc/29)\ID Process
\Thread(FolderSizeSvc/30)\ID Process
\Thread(FolderSizeSvc/31)\ID Process
\Thread(FolderSizeSvc/32)\ID Process
\Thread(FolderSizeSvc/33)\ID Process
\Thread(FolderSizeSvc/34)\ID Process
\Thread(FolderSizeSvc/35)\ID Process
\Thread(FolderSizeSvc/36)\ID Process
\Thread(FolderSizeSvc/37)\ID Process
\Thread(FolderSizeSvc/38)\ID Process
\Thread(FolderSizeSvc/39)\ID Process
\Thread(FolderSizeSvc/40)\ID Process
\Thread(FolderSizeSvc/41)\ID Process
\Thread(FolderSizeSvc/42)\ID Process
\Thread(FolderSizeSvc/43)\ID Process
\Thread(FolderSizeSvc/44)\ID Process
\Thread(FolderSizeSvc/45)\ID Process
\Thread(FolderSizeSvc/46)\ID Process
\Thread(GSGIOSRV/0)\ID Process
\Thread(GSGIOSRV/1)\ID Process
\Thread(GSGIOSRV/2)\ID Process
\Thread(upsvc/0)\ID Process
\Thread(upsvc/1)\ID Process
\Thread(upsvc/2)\ID Process
\Thread(upsvc/3)\ID Process
\Thread(upsvc/4)\ID Process
\Thread(mdm/0)\ID Process
\Thread(mdm/1)\ID Process
\Thread(mdm/2)\ID Process
\Thread(mdm/3)\ID Process
\Thread(mdm/4)\ID Process
\Thread(rtiosrv/0)\ID Process
\Thread(rtiosrv/1)\ID Process
\Thread(rtiosrv/2)\ID Process
\Thread(rtiosrv/3)\ID Process
\Thread(ManagerClient/0)\ID Process
\Thread(ManagerClient/1)\ID Process
\Thread(sqlwriter/0)\ID Process
\Thread(sqlwriter/1)\ID Process
\Thread(sqlwriter/2)\ID Process
\Thread(vmware-usbarbitrator/0)\ID Process
\Thread(vmware-usbarbitrator/1)\ID Process
\Thread(vmnat/0)\ID Process
\Thread(vmnat/1)\ID Process
\Thread(vmnat/2)\ID Process
\Thread(vmnetdhcp/0)\ID Process
\Thread(vmnetdhcp/1)\ID Process
\Thread(vmware-authd/0)\ID Process
\Thread(vmware-authd/1)\ID Process
\Thread(vmware-authd/2)\ID Process
\Thread(vmware-authd/3)\ID Process
\Thread(vmware-authd/4)\ID Process
\Thread(vmware-authd/5)\ID Process
\Thread(vmware-authd/6)\ID Process
\Thread(explorer/0)\ID Process
\Thread(explorer/1)\ID Process
\Thread(explorer/2)\ID Process
\Thread(explorer/3)\ID Process
\Thread(explorer/4)\ID Process
\Thread(explorer/5)\ID Process
\Thread(explorer/6)\ID Process
\Thread(explorer/7)\ID Process
\Thread(explorer/8)\ID Process
\Thread(explorer/9)\ID Process
\Thread(explorer/10)\ID Process
\Thread(explorer/11)\ID Process
\Thread(explorer/12)\ID Process
\Thread(explorer/13)\ID Process
\Thread(explorer/14)\ID Process
\Thread(explorer/15)\ID Process
\Thread(explorer/16)\ID Process
\Thread(explorer/17)\ID Process
\Thread(explorer/18)\ID Process
\Thread(explorer/19)\ID Process
\Thread(explorer/20)\ID Process
\Thread(explorer/21)\ID Process
\Thread(explorer/22)\ID Process
\Thread(TSVNCache/0)\ID Process
\Thread(TSVNCache/1)\ID Process
\Thread(TSVNCache/2)\ID Process
\Thread(TSVNCache/3)\ID Process
\Thread(TSVNCache/4)\ID Process
\Thread(TSVNCache/5)\ID Process
\Thread(TSVNCache/6)\ID Process
\Thread(TSVNCache/7)\ID Process
\Thread(TSVNCache/8)\ID Process
\Thread(TSVNCache/9)\ID Process
\Thread(TSVNCache/10)\ID Process
\Thread(igfxtray/0)\ID Process
\Thread(igfxtray/1)\ID Process
\Thread(hkcmd/0)\ID Process
\Thread(hkcmd/1)\ID Process
\Thread(hkcmd/2)\ID Process
\Thread(igfxpers/0)\ID Process
\Thread(igfxpers/1)\ID Process
\Thread(KSafeTray/0)\ID Process
\Thread(KSafeTray/1)\ID Process
\Thread(KSafeTray/2)\ID Process
\Thread(KSafeTray/3)\ID Process
\Thread(KSafeTray/4)\ID Process
\Thread(KSafeTray/5)\ID Process
\Thread(KSafeTray/6)\ID Process
\Thread(KSafeTray/7)\ID Process
\Thread(KSafeTray/8)\ID Process
\Thread(KSafeTray/9)\ID Process
\Thread(KSafeTray/10)\ID Process
\Thread(KSafeTray/11)\ID Process
\Thread(KSafeTray/12)\ID Process
\Thread(KSafeTray/13)\ID Process
\Thread(KSafeTray/14)\ID Process
\Thread(KSafeTray/15)\ID Process
\Thread(KSafeTray/16)\ID Process
\Thread(KSafeTray/17)\ID Process
\Thread(KSafeTray/18)\ID Process
\Thread(KSafeTray/19)\ID Process
\Thread(KSafeTray/20)\ID Process
\Thread(KSafeTray/21)\ID Process
\Thread(KSafeTray/22)\ID Process
\Thread(KSafeTray/23)\ID Process
\Thread(kxetray/0)\ID Process
\Thread(kxetray/1)\ID Process
\Thread(kxetray/2)\ID Process
\Thread(kxetray/3)\ID Process
\Thread(kxetray/4)\ID Process
\Thread(kxetray/5)\ID Process
\Thread(kxetray/6)\ID Process
\Thread(kxetray/7)\ID Process
\Thread(kxetray/8)\ID Process
\Thread(kxetray/9)\ID Process
\Thread(kxetray/10)\ID Process
\Thread(kxetray/11)\ID Process
\Thread(kxetray/12)\ID Process
\Thread(kxetray/13)\ID Process
\Thread(kxetray/14)\ID Process
\Thread(kxetray/15)\ID Process
\Thread(kxetray/16)\ID Process
\Thread(kxetray/17)\ID Process
\Thread(kxetray/18)\ID Process
\Thread(kxetray/19)\ID Process
\Thread(kxetray/20)\ID Process
\Thread(kxetray/21)\ID Process
\Thread(kxetray/22)\ID Process
\Thread(kxetray/23)\ID Process
\Thread(igfxsrvc/0)\ID Process
\Thread(igfxsrvc/1)\ID Process
\Thread(igfxsrvc/2)\ID Process
\Thread(igfxsrvc/3)\ID Process
\Thread(Ext2Mgr/0)\ID Process
\Thread(RTHDCPL/0)\ID Process
\Thread(RTHDCPL/1)\ID Process
\Thread(RTHDCPL/2)\ID Process
\Thread(RTHDCPL/3)\ID Process
\Thread(OfficeIM/0)\ID Process
\Thread(OfficeIM/1)\ID Process
\Thread(OfficeIM/2)\ID Process
\Thread(OfficeIM/3)\ID Process
\Thread(OfficeIM/4)\ID Process
\Thread(OfficeIM/5)\ID Process
\Thread(OfficeIM/6)\ID Process
\Thread(OfficeIM/7)\ID Process
\Thread(OfficeIM/8)\ID Process
\Thread(OfficeIM/9)\ID Process
\Thread(OfficeIM/10)\ID Process
\Thread(OfficeIM/11)\ID Process
\Thread(OfficeIM/12)\ID Process
\Thread(OfficeIM/13)\ID Process
\Thread(OfficeIM/14)\ID Process
\Thread(vmware-tray/0)\ID Process
\Thread(vmware-tray/1)\ID Process
\Thread(vmware-tray/2)\ID Process
\Thread(msnmsgr/0)\ID Process
\Thread(msnmsgr/1)\ID Process
\Thread(msnmsgr/2)\ID Process
\Thread(msnmsgr/3)\ID Process
\Thread(msnmsgr/4)\ID Process
\Thread(msnmsgr/5)\ID Process
\Thread(msnmsgr/6)\ID Process
\Thread(msnmsgr/7)\ID Process
\Thread(msnmsgr/8)\ID Process
\Thread(msnmsgr/9)\ID Process
\Thread(msnmsgr/10)\ID Process
\Thread(msnmsgr/11)\ID Process
\Thread(msnmsgr/12)\ID Process
\Thread(msnmsgr/13)\ID Process
\Thread(msnmsgr/14)\ID Process
\Thread(msnmsgr/15)\ID Process
\Thread(msnmsgr/16)\ID Process
\Thread(msnmsgr/17)\ID Process
\Thread(msnmsgr/18)\ID Process
\Thread(msnmsgr/19)\ID Process
\Thread(msnmsgr/20)\ID Process
\Thread(msnmsgr/21)\ID Process
\Thread(msnmsgr/22)\ID Process
\Thread(msnmsgr/23)\ID Process
\Thread(msnmsgr/24)\ID Process
\Thread(msnmsgr/25)\ID Process
\Thread(msnmsgr/26)\ID Process
\Thread(msnmsgr/27)\ID Process
\Thread(msnmsgr/28)\ID Process
\Thread(msnmsgr/29)\ID Process
\Thread(msnmsgr/30)\ID Process
\Thread(msnmsgr/31)\ID Process
\Thread(msnmsgr/32)\ID Process
\Thread(msnmsgr/33)\ID Process
\Thread(msnmsgr/34)\ID Process
\Thread(msnmsgr/35)\ID Process
\Thread(msnmsgr/36)\ID Process
\Thread(msnmsgr/37)\ID Process
\Thread(msnmsgr/38)\ID Process
\Thread(msnmsgr/39)\ID Process
\Thread(ctfmon/0)\ID Process
\Thread(VVCap/0)\ID Process
\Thread(VVCap/1)\ID Process
\Thread(wlcomm/0)\ID Process
\Thread(wlcomm/1)\ID Process
\Thread(wlcomm/2)\ID Process
\Thread(wlcomm/3)\ID Process
\Thread(wlcomm/4)\ID Process
\Thread(wlcomm/5)\ID Process
\Thread(wlcomm/6)\ID Process
\Thread(wlcomm/7)\ID Process
\Thread(wlcomm/8)\ID Process
\Thread(wlcomm/9)\ID Process
\Thread(wlcomm/10)\ID Process
\Thread(wlcomm/11)\ID Process
\Thread(wlcomm/12)\ID Process
\Thread(wlcomm/13)\ID Process
\Thread(wlcomm/14)\ID Process
\Thread(WPFFontCache_v0400/0)\ID Process
\Thread(WPFFontCache_v0400/1)\ID Process
\Thread(WPFFontCache_v0400/2)\ID Process
\Thread(WPFFontCache_v0400/3)\ID Process
\Thread(WPFFontCache_v0400/4)\ID Process
\Thread(WPFFontCache_v0400/5)\ID Process
\Thread(WPFFontCache_v0400/6)\ID Process
\Thread(KuGoo/0)\ID Process
\Thread(KuGoo/1)\ID Process
\Thread(KuGoo/2)\ID Process
\Thread(KuGoo/3)\ID Process
\Thread(KuGoo/4)\ID Process
\Thread(KuGoo/5)\ID Process
\Thread(KuGoo/6)\ID Process
\Thread(KuGoo/7)\ID Process
\Thread(KuGoo/8)\ID Process
\Thread(KuGoo/9)\ID Process
\Thread(KuGoo/10)\ID Process
\Thread(KuGoo/11)\ID Process
\Thread(KuGoo/12)\ID Process
\Thread(KuGoo/13)\ID Process
\Thread(KuGoo/14)\ID Process
\Thread(KuGoo/15)\ID Process
\Thread(KuGoo/16)\ID Process
\Thread(KuGoo/17)\ID Process
\Thread(KuGoo/18)\ID Process
\Thread(KuGoo/19)\ID Process
\Thread(KuGoo/20)\ID Process
\Thread(KuGoo/21)\ID Process
\Thread(KuGoo/22)\ID Process
\Thread(KuGoo/23)\ID Process
\Thread(KuGoo/24)\ID Process
\Thread(KuGoo/25)\ID Process
\Thread(KuGoo/26)\ID Process
\Thread(KuGoo/27)\ID Process
\Thread(KuGoo/28)\ID Process
\Thread(KuGoo/29)\ID Process
\Thread(KuGoo/30)\ID Process
\Thread(KuGoo/31)\ID Process
\Thread(KuGoo/32)\ID Process
\Thread(KuGoo/33)\ID Process
\Thread(KuGoo/34)\ID Process
\Thread(KuGoo/35)\ID Process
\Thread(KuGoo/36)\ID Process
\Thread(KuGoo/37)\ID Process
\Thread(KuGoo/38)\ID Process
\Thread(KuGoo/39)\ID Process
\Thread(KuGoo/40)\ID Process
\Thread(KuGoo/41)\ID Process
\Thread(KuGoo/42)\ID Process
\Thread(KuGoo/43)\ID Process
\Thread(KuGoo/44)\ID Process
\Thread(KuGoo/45)\ID Process
\Thread(KuGoo/46)\ID Process
\Thread(KuGoo/47)\ID Process
\Thread(KuGoo/48)\ID Process
\Thread(KuGoo/49)\ID Process
\Thread(KuGoo/50)\ID Process
\Thread(KuGoo/51)\ID Process
\Thread(KuGoo/52)\ID Process
\Thread(KuGoo/53)\ID Process
\Thread(KuGoo/54)\ID Process
\Thread(KuGoo/55)\ID Process
\Thread(KuGoo/56)\ID Process
\Thread(KuGoo/57)\ID Process
\Thread(KuGoo/58)\ID Process
\Thread(KuGoo/59)\ID Process
\Thread(firefox/0)\ID Process
\Thread(firefox/1)\ID Process
\Thread(firefox/2)\ID Process
\Thread(firefox/3)\ID Process
\Thread(firefox/4)\ID Process
\Thread(firefox/5)\ID Process
\Thread(firefox/6)\ID Process
\Thread(firefox/7)\ID Process
\Thread(firefox/8)\ID Process
\Thread(firefox/9)\ID Process
\Thread(firefox/10)\ID Process
\Thread(firefox/11)\ID Process
\Thread(firefox/12)\ID Process
\Thread(firefox/13)\ID Process
\Thread(firefox/14)\ID Process
\Thread(firefox/15)\ID Process
\Thread(firefox/16)\ID Process
\Thread(firefox/17)\ID Process
\Thread(firefox/18)\ID Process
\Thread(firefox/19)\ID Process
\Thread(firefox/20)\ID Process
\Thread(firefox/21)\ID Process
\Thread(firefox/22)\ID Process
\Thread(firefox/23)\ID Process
\Thread(firefox/24)\ID Process
\Thread(vmware/0)\ID Process
\Thread(vmware/1)\ID Process
\Thread(vmware/2)\ID Process
\Thread(vmware/3)\ID Process
\Thread(vmware/4)\ID Process
\Thread(vmware/5)\ID Process
\Thread(vmware/6)\ID Process
\Thread(vmware/7)\ID Process
\Thread(taskmgr/0)\ID Process
\Thread(taskmgr/1)\ID Process
\Thread(taskmgr/2)\ID Process
\Thread(SshClient/0)\ID Process
\Thread(SshClient/1)\ID Process
\Thread(SshClient/2)\ID Process
\Thread(SshClient/3)\ID Process
\Thread(SshClient/4)\ID Process
\Thread(SshClient/5)\ID Process
\Thread(SshClient/6)\ID Process
\Thread(Thunder5/0)\ID Process
\Thread(Thunder5/1)\ID Process
\Thread(Thunder5/2)\ID Process
\Thread(Thunder5/3)\ID Process
\Thread(Thunder5/4)\ID Process
\Thread(Thunder5/5)\ID Process
\Thread(Thunder5/6)\ID Process
\Thread(Thunder5/7)\ID Process
\Thread(Thunder5/8)\ID Process
\Thread(Thunder5/9)\ID Process
\Thread(Thunder5/10)\ID Process
\Thread(Thunder5/11)\ID Process
\Thread(Thunder5/12)\ID Process
\Thread(Thunder5/13)\ID Process
\Thread(Thunder5/14)\ID Process
\Thread(Thunder5/15)\ID Process
\Thread(Thunder5/16)\ID Process
\Thread(Thunder5/17)\ID Process
\Thread(Thunder5/18)\ID Process
\Thread(Thunder5/19)\ID Process
\Thread(Thunder5/20)\ID Process
\Thread(Thunder5/21)\ID Process
\Thread(Thunder5/22)\ID Process
\Thread(Thunder5/23)\ID Process
\Thread(Thunder5/24)\ID Process
\Thread(Thunder5/25)\ID Process
\Thread(Thunder5/26)\ID Process
\Thread(Thunder5/27)\ID Process
\Thread(Thunder5/28)\ID Process
\Thread(Thunder5/29)\ID Process
\Thread(Thunder5/30)\ID Process
\Thread(Thunder5/31)\ID Process
\Thread(Thunder5/32)\ID Process
\Thread(Thunder5/33)\ID Process
\Thread(Thunder5/34)\ID Process
\Thread(Thunder5/35)\ID Process
\Thread(Thunder5/36)\ID Process
\Thread(Thunder5/37)\ID Process
\Thread(Thunder5/38)\ID Process
\Thread(Thunder5/39)\ID Process
\Thread(Thunder5/40)\ID Process
\Thread(Thunder5/41)\ID Process
\Thread(Thunder5/42)\ID Process
\Thread(Thunder5/43)\ID Process
\Thread(Thunder5/44)\ID Process
\Thread(Thunder5/45)\ID Process
\Thread(Thunder5/46)\ID Process
\Thread(cmd/0)\ID Process
\Thread(typeperf/0)\ID Process
\Thread(typeperf/1)\ID Process
\Thread(typeperf/2)\ID Process
\Thread(typeperf/3)\ID Process
\Thread(typeperf/4)\ID Process
\Thread(typeperf/5)\ID Process
\Thread(typeperf/6)\ID Process
\Thread(typeperf/7)\ID Process
\Thread(typeperf/8)\ID Process
\Thread(typeperf/9)\ID Process
\Thread(typeperf/10)\ID Process
\Thread(_Total/_Total)\ID Process
\Thread(Idle/0)\ID Thread
\Thread(Idle/1)\ID Thread
\Thread(System/0)\ID Thread
\Thread(System/1)\ID Thread
\Thread(System/2)\ID Thread
\Thread(System/3)\ID Thread
\Thread(System/4)\ID Thread
\Thread(System/5)\ID Thread
\Thread(System/6)\ID Thread
\Thread(System/7)\ID Thread
\Thread(System/8)\ID Thread
\Thread(System/9)\ID Thread
\Thread(System/10)\ID Thread
\Thread(System/11)\ID Thread
\Thread(System/12)\ID Thread
\Thread(System/13)\ID Thread
\Thread(System/14)\ID Thread
\Thread(System/15)\ID Thread
\Thread(System/16)\ID Thread
\Thread(System/17)\ID Thread
\Thread(System/18)\ID Thread
\Thread(System/19)\ID Thread
\Thread(System/20)\ID Thread
\Thread(System/21)\ID Thread
\Thread(System/22)\ID Thread
\Thread(System/23)\ID Thread
\Thread(System/24)\ID Thread
\Thread(System/25)\ID Thread
\Thread(System/26)\ID Thread
\Thread(System/27)\ID Thread
\Thread(System/28)\ID Thread
\Thread(System/29)\ID Thread
\Thread(System/30)\ID Thread
\Thread(System/31)\ID Thread
\Thread(System/32)\ID Thread
\Thread(System/33)\ID Thread
\Thread(System/34)\ID Thread
\Thread(System/35)\ID Thread
\Thread(System/36)\ID Thread
\Thread(System/37)\ID Thread
\Thread(System/38)\ID Thread
\Thread(System/39)\ID Thread
\Thread(System/40)\ID Thread
\Thread(System/41)\ID Thread
\Thread(System/42)\ID Thread
\Thread(System/43)\ID Thread
\Thread(System/44)\ID Thread
\Thread(System/45)\ID Thread
\Thread(System/46)\ID Thread
\Thread(System/47)\ID Thread
\Thread(System/48)\ID Thread
\Thread(System/49)\ID Thread
\Thread(System/50)\ID Thread
\Thread(System/51)\ID Thread
\Thread(System/52)\ID Thread
\Thread(System/53)\ID Thread
\Thread(System/54)\ID Thread
\Thread(System/55)\ID Thread
\Thread(System/56)\ID Thread
\Thread(System/57)\ID Thread
\Thread(System/58)\ID Thread
\Thread(System/59)\ID Thread
\Thread(System/60)\ID Thread
\Thread(System/61)\ID Thread
\Thread(System/62)\ID Thread
\Thread(System/63)\ID Thread
\Thread(System/64)\ID Thread
\Thread(System/65)\ID Thread
\Thread(System/66)\ID Thread
\Thread(System/67)\ID Thread
\Thread(System/68)\ID Thread
\Thread(System/69)\ID Thread
\Thread(System/70)\ID Thread
\Thread(System/71)\ID Thread
\Thread(System/72)\ID Thread
\Thread(System/73)\ID Thread
\Thread(System/74)\ID Thread
\Thread(System/75)\ID Thread
\Thread(System/76)\ID Thread
\Thread(System/77)\ID Thread
\Thread(System/78)\ID Thread
\Thread(System/79)\ID Thread
\Thread(System/80)\ID Thread
\Thread(System/81)\ID Thread
\Thread(System/82)\ID Thread
\Thread(System/83)\ID Thread
\Thread(System/84)\ID Thread
\Thread(System/85)\ID Thread
\Thread(System/86)\ID Thread
\Thread(System/87)\ID Thread
\Thread(System/88)\ID Thread
\Thread(System/89)\ID Thread
\Thread(System/90)\ID Thread
\Thread(System/91)\ID Thread
\Thread(System/92)\ID Thread
\Thread(System/93)\ID Thread
\Thread(System/94)\ID Thread
\Thread(System/95)\ID Thread
\Thread(System/96)\ID Thread
\Thread(System/97)\ID Thread
\Thread(smss/0)\ID Thread
\Thread(smss/1)\ID Thread
\Thread(smss/2)\ID Thread
\Thread(csrss/0)\ID Thread
\Thread(csrss/1)\ID Thread
\Thread(csrss/2)\ID Thread
\Thread(csrss/3)\ID Thread
\Thread(csrss/4)\ID Thread
\Thread(csrss/5)\ID Thread
\Thread(csrss/6)\ID Thread
\Thread(csrss/7)\ID Thread
\Thread(csrss/8)\ID Thread
\Thread(csrss/9)\ID Thread
\Thread(csrss/10)\ID Thread
\Thread(csrss/11)\ID Thread
\Thread(winlogon/0)\ID Thread
\Thread(winlogon/1)\ID Thread
\Thread(winlogon/2)\ID Thread
\Thread(winlogon/3)\ID Thread
\Thread(winlogon/4)\ID Thread
\Thread(winlogon/5)\ID Thread
\Thread(winlogon/6)\ID Thread
\Thread(winlogon/7)\ID Thread
\Thread(winlogon/8)\ID Thread
\Thread(winlogon/9)\ID Thread
\Thread(winlogon/10)\ID Thread
\Thread(winlogon/11)\ID Thread
\Thread(winlogon/12)\ID Thread
\Thread(winlogon/13)\ID Thread
\Thread(winlogon/14)\ID Thread
\Thread(winlogon/15)\ID Thread
\Thread(winlogon/16)\ID Thread
\Thread(winlogon/17)\ID Thread
\Thread(winlogon/18)\ID Thread
\Thread(winlogon/19)\ID Thread
\Thread(winlogon/20)\ID Thread
\Thread(winlogon/21)\ID Thread
\Thread(services/0)\ID Thread
\Thread(services/1)\ID Thread
\Thread(services/2)\ID Thread
\Thread(services/3)\ID Thread
\Thread(services/4)\ID Thread
\Thread(services/5)\ID Thread
\Thread(services/6)\ID Thread
\Thread(services/7)\ID Thread
\Thread(services/8)\ID Thread
\Thread(services/9)\ID Thread
\Thread(services/10)\ID Thread
\Thread(services/11)\ID Thread
\Thread(services/12)\ID Thread
\Thread(services/13)\ID Thread
\Thread(services/14)\ID Thread
\Thread(services/15)\ID Thread
\Thread(lsass/0)\ID Thread
\Thread(lsass/1)\ID Thread
\Thread(lsass/2)\ID Thread
\Thread(lsass/3)\ID Thread
\Thread(lsass/4)\ID Thread
\Thread(lsass/5)\ID Thread
\Thread(lsass/6)\ID Thread
\Thread(lsass/7)\ID Thread
\Thread(lsass/8)\ID Thread
\Thread(lsass/9)\ID Thread
\Thread(lsass/10)\ID Thread
\Thread(lsass/11)\ID Thread
\Thread(lsass/12)\ID Thread
\Thread(lsass/13)\ID Thread
\Thread(lsass/14)\ID Thread
\Thread(lsass/15)\ID Thread
\Thread(lsass/16)\ID Thread
\Thread(lsass/17)\ID Thread
\Thread(lsass/18)\ID Thread
\Thread(lsass/19)\ID Thread
\Thread(lsass/20)\ID Thread
\Thread(lsass/21)\ID Thread
\Thread(svchost/0)\ID Thread
\Thread(svchost/1)\ID Thread
\Thread(svchost/2)\ID Thread
\Thread(svchost/3)\ID Thread
\Thread(svchost/4)\ID Thread
\Thread(svchost/5)\ID Thread
\Thread(svchost/6)\ID Thread
\Thread(svchost/7)\ID Thread
\Thread(svchost/0)\ID Thread
\Thread(svchost/1)\ID Thread
\Thread(svchost/2)\ID Thread
\Thread(svchost/3)\ID Thread
\Thread(svchost/4)\ID Thread
\Thread(svchost/5)\ID Thread
\Thread(svchost/6)\ID Thread
\Thread(svchost/7)\ID Thread
\Thread(svchost/8)\ID Thread
\Thread(svchost/9)\ID Thread
\Thread(svchost/10)\ID Thread
\Thread(svchost/11)\ID Thread
\Thread(svchost/12)\ID Thread
\Thread(svchost/13)\ID Thread
\Thread(svchost/14)\ID Thread
\Thread(svchost/15)\ID Thread
\Thread(svchost/16)\ID Thread
\Thread(svchost/17)\ID Thread
\Thread(svchost/18)\ID Thread
\Thread(svchost/19)\ID Thread
\Thread(svchost/20)\ID Thread
\Thread(svchost/21)\ID Thread
\Thread(svchost/22)\ID Thread
\Thread(svchost/23)\ID Thread
\Thread(svchost/24)\ID Thread
\Thread(svchost/25)\ID Thread
\Thread(svchost/26)\ID Thread
\Thread(svchost/27)\ID Thread
\Thread(svchost/28)\ID Thread
\Thread(svchost/29)\ID Thread
\Thread(svchost/30)\ID Thread
\Thread(svchost/31)\ID Thread
\Thread(svchost/32)\ID Thread
\Thread(svchost/33)\ID Thread
\Thread(svchost/34)\ID Thread
\Thread(svchost/35)\ID Thread
\Thread(svchost/36)\ID Thread
\Thread(svchost/37)\ID Thread
\Thread(svchost/38)\ID Thread
\Thread(svchost/39)\ID Thread
\Thread(svchost/40)\ID Thread
\Thread(svchost/41)\ID Thread
\Thread(svchost/42)\ID Thread
\Thread(svchost/43)\ID Thread
\Thread(svchost/44)\ID Thread
\Thread(svchost/45)\ID Thread
\Thread(svchost/46)\ID Thread
\Thread(svchost/47)\ID Thread
\Thread(svchost/48)\ID Thread
\Thread(svchost/49)\ID Thread
\Thread(svchost/50)\ID Thread
\Thread(svchost/51)\ID Thread
\Thread(svchost/52)\ID Thread
\Thread(svchost/53)\ID Thread
\Thread(svchost/54)\ID Thread
\Thread(svchost/55)\ID Thread
\Thread(svchost/56)\ID Thread
\Thread(svchost/57)\ID Thread
\Thread(svchost/58)\ID Thread
\Thread(svchost/59)\ID Thread
\Thread(svchost/60)\ID Thread
\Thread(svchost/61)\ID Thread
\Thread(svchost/62)\ID Thread
\Thread(svchost/63)\ID Thread
\Thread(svchost/64)\ID Thread
\Thread(svchost/65)\ID Thread
\Thread(svchost/66)\ID Thread
\Thread(svchost/67)\ID Thread
\Thread(svchost/68)\ID Thread
\Thread(svchost/69)\ID Thread
\Thread(svchost/70)\ID Thread
\Thread(svchost/0)\ID Thread
\Thread(svchost/1)\ID Thread
\Thread(svchost/2)\ID Thread
\Thread(svchost/3)\ID Thread
\Thread(svchost/4)\ID Thread
\Thread(svchost/5)\ID Thread
\Thread(svchost/0)\ID Thread
\Thread(svchost/1)\ID Thread
\Thread(svchost/2)\ID Thread
\Thread(svchost/3)\ID Thread
\Thread(svchost/4)\ID Thread
\Thread(svchost/5)\ID Thread
\Thread(svchost/6)\ID Thread
\Thread(svchost/7)\ID Thread
\Thread(svchost/8)\ID Thread
\Thread(svchost/9)\ID Thread
\Thread(svchost/10)\ID Thread
\Thread(svchost/11)\ID Thread
\Thread(svchost/12)\ID Thread
\Thread(svchost/13)\ID Thread
\Thread(svchost/14)\ID Thread
\Thread(svchost/0)\ID Thread
\Thread(svchost/1)\ID Thread
\Thread(svchost/2)\ID Thread
\Thread(svchost/3)\ID Thread
\Thread(svchost/4)\ID Thread
\Thread(kxedefend/0)\ID Thread
\Thread(kxedefend/1)\ID Thread
\Thread(kxedefend/2)\ID Thread
\Thread(kxedefend/3)\ID Thread
\Thread(kxedefend/4)\ID Thread
\Thread(kxedefend/5)\ID Thread
\Thread(kxedefend/6)\ID Thread
\Thread(kxedefend/7)\ID Thread
\Thread(kxedefend/8)\ID Thread
\Thread(kxedefend/9)\ID Thread
\Thread(kxedefend/10)\ID Thread
\Thread(kxedefend/11)\ID Thread
\Thread(kxedefend/12)\ID Thread
\Thread(kxedefend/13)\ID Thread
\Thread(kxedefend/14)\ID Thread
\Thread(kxedefend/15)\ID Thread
\Thread(kxedefend/16)\ID Thread
\Thread(kxedefend/17)\ID Thread
\Thread(kxedefend/18)\ID Thread
\Thread(kxedefend/19)\ID Thread
\Thread(kxedefend/20)\ID Thread
\Thread(kxedefend/21)\ID Thread
\Thread(kxedefend/22)\ID Thread
\Thread(kxedefend/23)\ID Thread
\Thread(kxedefend/24)\ID Thread
\Thread(kxedefend/25)\ID Thread
\Thread(kxedefend/26)\ID Thread
\Thread(kxedefend/27)\ID Thread
\Thread(kxescore/0)\ID Thread
\Thread(kxescore/1)\ID Thread
\Thread(kxescore/2)\ID Thread
\Thread(kxescore/3)\ID Thread
\Thread(kxescore/4)\ID Thread
\Thread(kxescore/5)\ID Thread
\Thread(kxescore/6)\ID Thread
\Thread(kxescore/7)\ID Thread
\Thread(kxescore/8)\ID Thread
\Thread(kxescore/9)\ID Thread
\Thread(kxescore/10)\ID Thread
\Thread(kxescore/11)\ID Thread
\Thread(kxescore/12)\ID Thread
\Thread(kxescore/13)\ID Thread
\Thread(kxescore/14)\ID Thread
\Thread(kxescore/15)\ID Thread
\Thread(kxescore/16)\ID Thread
\Thread(kxescore/17)\ID Thread
\Thread(kxescore/18)\ID Thread
\Thread(kxescore/19)\ID Thread
\Thread(kxescore/20)\ID Thread
\Thread(kxescore/21)\ID Thread
\Thread(kxescore/22)\ID Thread
\Thread(kxescore/23)\ID Thread
\Thread(kxescore/24)\ID Thread
\Thread(kxescore/25)\ID Thread
\Thread(kxescore/26)\ID Thread
\Thread(kxescore/27)\ID Thread
\Thread(kxescore/28)\ID Thread
\Thread(kxescore/29)\ID Thread
\Thread(kxescore/30)\ID Thread
\Thread(kxescore/31)\ID Thread
\Thread(kxescore/32)\ID Thread
\Thread(kxescore/33)\ID Thread
\Thread(kxescore/34)\ID Thread
\Thread(kxescore/35)\ID Thread
\Thread(kxescore/36)\ID Thread
\Thread(kxescore/37)\ID Thread
\Thread(kxescore/38)\ID Thread
\Thread(kxescore/39)\ID Thread
\Thread(kxescore/40)\ID Thread
\Thread(kxescore/41)\ID Thread
\Thread(kxescore/42)\ID Thread
\Thread(kxescore/43)\ID Thread
\Thread(kxescore/44)\ID Thread
\Thread(kxescore/45)\ID Thread
\Thread(kxescore/46)\ID Thread
\Thread(kxescore/47)\ID Thread
\Thread(kxescore/48)\ID Thread
\Thread(kxescore/49)\ID Thread
\Thread(kxescore/50)\ID Thread
\Thread(kxescore/51)\ID Thread
\Thread(kxescore/52)\ID Thread
\Thread(kxescore/53)\ID Thread
\Thread(kxescore/54)\ID Thread
\Thread(kxescore/55)\ID Thread
\Thread(kxescore/56)\ID Thread
\Thread(kxescore/57)\ID Thread
\Thread(kxescore/58)\ID Thread
\Thread(kxescore/59)\ID Thread
\Thread(kxescore/60)\ID Thread
\Thread(KSafeSvc/0)\ID Thread
\Thread(KSafeSvc/1)\ID Thread
\Thread(KSafeSvc/2)\ID Thread
\Thread(KSafeSvc/3)\ID Thread
\Thread(KSafeSvc/4)\ID Thread
\Thread(KSafeSvc/5)\ID Thread
\Thread(KSafeSvc/6)\ID Thread
\Thread(KSafeSvc/7)\ID Thread
\Thread(KSafeSvc/8)\ID Thread
\Thread(KSafeSvc/9)\ID Thread
\Thread(KSafeSvc/10)\ID Thread
\Thread(KSafeSvc/11)\ID Thread
\Thread(KSafeSvc/12)\ID Thread
\Thread(KSafeSvc/13)\ID Thread
\Thread(KSafeSvc/14)\ID Thread
\Thread(KSafeSvc/15)\ID Thread
\Thread(KSafeSvc/16)\ID Thread
\Thread(KSafeSvc/17)\ID Thread
\Thread(KSafeSvc/18)\ID Thread
\Thread(KSafeSvc/19)\ID Thread
\Thread(KSafeSvc/20)\ID Thread
\Thread(KSafeSvc/21)\ID Thread
\Thread(KSafeSvc/22)\ID Thread
\Thread(KSafeSvc/23)\ID Thread
\Thread(KSafeSvc/24)\ID Thread
\Thread(KSafeSvc/25)\ID Thread
\Thread(KSafeSvc/26)\ID Thread
\Thread(KSafeSvc/27)\ID Thread
\Thread(KSafeSvc/28)\ID Thread
\Thread(KSafeSvc/29)\ID Thread
\Thread(KSafeSvc/30)\ID Thread
\Thread(KSafeSvc/31)\ID Thread
\Thread(KSafeSvc/32)\ID Thread
\Thread(KSafeSvc/33)\ID Thread
\Thread(KSafeSvc/34)\ID Thread
\Thread(KSafeSvc/35)\ID Thread
\Thread(KSafeSvc/36)\ID Thread
\Thread(KSafeSvc/37)\ID Thread
\Thread(KSafeSvc/38)\ID Thread
\Thread(KSafeSvc/39)\ID Thread
\Thread(KSafeSvc/40)\ID Thread
\Thread(KSafeSvc/41)\ID Thread
\Thread(KSafeSvc/42)\ID Thread
\Thread(KSafeSvc/43)\ID Thread
\Thread(KSafeSvc/44)\ID Thread
\Thread(KSafeSvc/45)\ID Thread
\Thread(KSafeSvc/46)\ID Thread
\Thread(KSafeSvc/47)\ID Thread
\Thread(KSafeSvc/48)\ID Thread
\Thread(KSafeSvc/49)\ID Thread
\Thread(KSafeSvc/50)\ID Thread
\Thread(KSafeSvc/51)\ID Thread
\Thread(KSafeSvc/52)\ID Thread
\Thread(KSafeSvc/53)\ID Thread
\Thread(kxesapp/0)\ID Thread
\Thread(kxesapp/1)\ID Thread
\Thread(kxesapp/2)\ID Thread
\Thread(kxesapp/3)\ID Thread
\Thread(kxesapp/4)\ID Thread
\Thread(kxesapp/5)\ID Thread
\Thread(kxesapp/6)\ID Thread
\Thread(kxesapp/7)\ID Thread
\Thread(kxesapp/8)\ID Thread
\Thread(kxesapp/9)\ID Thread
\Thread(kxesapp/10)\ID Thread
\Thread(kxesapp/11)\ID Thread
\Thread(kxesapp/12)\ID Thread
\Thread(kxesapp/13)\ID Thread
\Thread(kxesapp/14)\ID Thread
\Thread(kxesapp/15)\ID Thread
\Thread(kxesapp/16)\ID Thread
\Thread(kxesapp/17)\ID Thread
\Thread(kxesapp/18)\ID Thread
\Thread(kxesapp/19)\ID Thread
\Thread(kxesapp/20)\ID Thread
\Thread(kxesapp/21)\ID Thread
\Thread(kxesapp/22)\ID Thread
\Thread(spoolsv/0)\ID Thread
\Thread(spoolsv/1)\ID Thread
\Thread(spoolsv/2)\ID Thread
\Thread(spoolsv/3)\ID Thread
\Thread(spoolsv/4)\ID Thread
\Thread(spoolsv/5)\ID Thread
\Thread(spoolsv/6)\ID Thread
\Thread(spoolsv/7)\ID Thread
\Thread(spoolsv/8)\ID Thread
\Thread(spoolsv/9)\ID Thread
\Thread(spoolsv/10)\ID Thread
\Thread(spoolsv/11)\ID Thread
\Thread(spoolsv/12)\ID Thread
\Thread(spoolsv/13)\ID Thread
\Thread(alg/0)\ID Thread
\Thread(alg/1)\ID Thread
\Thread(alg/2)\ID Thread
\Thread(alg/3)\ID Thread
\Thread(alg/4)\ID Thread
\Thread(AsistService/0)\ID Thread
\Thread(AsistService/1)\ID Thread
\Thread(AsistService/2)\ID Thread
\Thread(DSRSvc/0)\ID Thread
\Thread(DSRSvc/1)\ID Thread
\Thread(DSRSvc/2)\ID Thread
\Thread(DSRSvc/3)\ID Thread
\Thread(DSRSvc/4)\ID Thread
\Thread(DSRSvc/5)\ID Thread
\Thread(DSRSvc/6)\ID Thread
\Thread(DSRSvc/7)\ID Thread
\Thread(DSRSvc/8)\ID Thread
\Thread(DSRSvc/9)\ID Thread
\Thread(DSRSvc/10)\ID Thread
\Thread(DSRSvc/11)\ID Thread
\Thread(DSRSvc/12)\ID Thread
\Thread(FolderSizeSvc/0)\ID Thread
\Thread(FolderSizeSvc/1)\ID Thread
\Thread(FolderSizeSvc/2)\ID Thread
\Thread(FolderSizeSvc/3)\ID Thread
\Thread(FolderSizeSvc/4)\ID Thread
\Thread(FolderSizeSvc/5)\ID Thread
\Thread(FolderSizeSvc/6)\ID Thread
\Thread(FolderSizeSvc/7)\ID Thread
\Thread(FolderSizeSvc/8)\ID Thread
\Thread(FolderSizeSvc/9)\ID Thread
\Thread(FolderSizeSvc/10)\ID Thread
\Thread(FolderSizeSvc/11)\ID Thread
\Thread(FolderSizeSvc/12)\ID Thread
\Thread(FolderSizeSvc/13)\ID Thread
\Thread(FolderSizeSvc/14)\ID Thread
\Thread(FolderSizeSvc/15)\ID Thread
\Thread(FolderSizeSvc/16)\ID Thread
\Thread(FolderSizeSvc/17)\ID Thread
\Thread(FolderSizeSvc/18)\ID Thread
\Thread(FolderSizeSvc/19)\ID Thread
\Thread(FolderSizeSvc/20)\ID Thread
\Thread(FolderSizeSvc/21)\ID Thread
\Thread(FolderSizeSvc/22)\ID Thread
\Thread(FolderSizeSvc/23)\ID Thread
\Thread(FolderSizeSvc/24)\ID Thread
\Thread(FolderSizeSvc/25)\ID Thread
\Thread(FolderSizeSvc/26)\ID Thread
\Thread(FolderSizeSvc/27)\ID Thread
\Thread(FolderSizeSvc/28)\ID Thread
\Thread(FolderSizeSvc/29)\ID Thread
\Thread(FolderSizeSvc/30)\ID Thread
\Thread(FolderSizeSvc/31)\ID Thread
\Thread(FolderSizeSvc/32)\ID Thread
\Thread(FolderSizeSvc/33)\ID Thread
\Thread(FolderSizeSvc/34)\ID Thread
\Thread(FolderSizeSvc/35)\ID Thread
\Thread(FolderSizeSvc/36)\ID Thread
\Thread(FolderSizeSvc/37)\ID Thread
\Thread(FolderSizeSvc/38)\ID Thread
\Thread(FolderSizeSvc/39)\ID Thread
\Thread(FolderSizeSvc/40)\ID Thread
\Thread(FolderSizeSvc/41)\ID Thread
\Thread(FolderSizeSvc/42)\ID Thread
\Thread(FolderSizeSvc/43)\ID Thread
\Thread(FolderSizeSvc/44)\ID Thread
\Thread(FolderSizeSvc/45)\ID Thread
\Thread(FolderSizeSvc/46)\ID Thread
\Thread(GSGIOSRV/0)\ID Thread
\Thread(GSGIOSRV/1)\ID Thread
\Thread(GSGIOSRV/2)\ID Thread
\Thread(upsvc/0)\ID Thread
\Thread(upsvc/1)\ID Thread
\Thread(upsvc/2)\ID Thread
\Thread(upsvc/3)\ID Thread
\Thread(upsvc/4)\ID Thread
\Thread(mdm/0)\ID Thread
\Thread(mdm/1)\ID Thread
\Thread(mdm/2)\ID Thread
\Thread(mdm/3)\ID Thread
\Thread(mdm/4)\ID Thread
\Thread(rtiosrv/0)\ID Thread
\Thread(rtiosrv/1)\ID Thread
\Thread(rtiosrv/2)\ID Thread
\Thread(rtiosrv/3)\ID Thread
\Thread(ManagerClient/0)\ID Thread
\Thread(ManagerClient/1)\ID Thread
\Thread(sqlwriter/0)\ID Thread
\Thread(sqlwriter/1)\ID Thread
\Thread(sqlwriter/2)\ID Thread
\Thread(vmware-usbarbitrator/0)\ID Thread
\Thread(vmware-usbarbitrator/1)\ID Thread
\Thread(vmnat/0)\ID Thread
\Thread(vmnat/1)\ID Thread
\Thread(vmnat/2)\ID Thread
\Thread(vmnetdhcp/0)\ID Thread
\Thread(vmnetdhcp/1)\ID Thread
\Thread(vmware-authd/0)\ID Thread
\Thread(vmware-authd/1)\ID Thread
\Thread(vmware-authd/2)\ID Thread
\Thread(vmware-authd/3)\ID Thread
\Thread(vmware-authd/4)\ID Thread
\Thread(vmware-authd/5)\ID Thread
\Thread(vmware-authd/6)\ID Thread
\Thread(explorer/0)\ID Thread
\Thread(explorer/1)\ID Thread
\Thread(explorer/2)\ID Thread
\Thread(explorer/3)\ID Thread
\Thread(explorer/4)\ID Thread
\Thread(explorer/5)\ID Thread
\Thread(explorer/6)\ID Thread
\Thread(explorer/7)\ID Thread
\Thread(explorer/8)\ID Thread
\Thread(explorer/9)\ID Thread
\Thread(explorer/10)\ID Thread
\Thread(explorer/11)\ID Thread
\Thread(explorer/12)\ID Thread
\Thread(explorer/13)\ID Thread
\Thread(explorer/14)\ID Thread
\Thread(explorer/15)\ID Thread
\Thread(explorer/16)\ID Thread
\Thread(explorer/17)\ID Thread
\Thread(explorer/18)\ID Thread
\Thread(explorer/19)\ID Thread
\Thread(explorer/20)\ID Thread
\Thread(explorer/21)\ID Thread
\Thread(explorer/22)\ID Thread
\Thread(TSVNCache/0)\ID Thread
\Thread(TSVNCache/1)\ID Thread
\Thread(TSVNCache/2)\ID Thread
\Thread(TSVNCache/3)\ID Thread
\Thread(TSVNCache/4)\ID Thread
\Thread(TSVNCache/5)\ID Thread
\Thread(TSVNCache/6)\ID Thread
\Thread(TSVNCache/7)\ID Thread
\Thread(TSVNCache/8)\ID Thread
\Thread(TSVNCache/9)\ID Thread
\Thread(TSVNCache/10)\ID Thread
\Thread(igfxtray/0)\ID Thread
\Thread(igfxtray/1)\ID Thread
\Thread(hkcmd/0)\ID Thread
\Thread(hkcmd/1)\ID Thread
\Thread(hkcmd/2)\ID Thread
\Thread(igfxpers/0)\ID Thread
\Thread(igfxpers/1)\ID Thread
\Thread(KSafeTray/0)\ID Thread
\Thread(KSafeTray/1)\ID Thread
\Thread(KSafeTray/2)\ID Thread
\Thread(KSafeTray/3)\ID Thread
\Thread(KSafeTray/4)\ID Thread
\Thread(KSafeTray/5)\ID Thread
\Thread(KSafeTray/6)\ID Thread
\Thread(KSafeTray/7)\ID Thread
\Thread(KSafeTray/8)\ID Thread
\Thread(KSafeTray/9)\ID Thread
\Thread(KSafeTray/10)\ID Thread
\Thread(KSafeTray/11)\ID Thread
\Thread(KSafeTray/12)\ID Thread
\Thread(KSafeTray/13)\ID Thread
\Thread(KSafeTray/14)\ID Thread
\Thread(KSafeTray/15)\ID Thread
\Thread(KSafeTray/16)\ID Thread
\Thread(KSafeTray/17)\ID Thread
\Thread(KSafeTray/18)\ID Thread
\Thread(KSafeTray/19)\ID Thread
\Thread(KSafeTray/20)\ID Thread
\Thread(KSafeTray/21)\ID Thread
\Thread(KSafeTray/22)\ID Thread
\Thread(KSafeTray/23)\ID Thread
\Thread(kxetray/0)\ID Thread
\Thread(kxetray/1)\ID Thread
\Thread(kxetray/2)\ID Thread
\Thread(kxetray/3)\ID Thread
\Thread(kxetray/4)\ID Thread
\Thread(kxetray/5)\ID Thread
\Thread(kxetray/6)\ID Thread
\Thread(kxetray/7)\ID Thread
\Thread(kxetray/8)\ID Thread
\Thread(kxetray/9)\ID Thread
\Thread(kxetray/10)\ID Thread
\Thread(kxetray/11)\ID Thread
\Thread(kxetray/12)\ID Thread
\Thread(kxetray/13)\ID Thread
\Thread(kxetray/14)\ID Thread
\Thread(kxetray/15)\ID Thread
\Thread(kxetray/16)\ID Thread
\Thread(kxetray/17)\ID Thread
\Thread(kxetray/18)\ID Thread
\Thread(kxetray/19)\ID Thread
\Thread(kxetray/20)\ID Thread
\Thread(kxetray/21)\ID Thread
\Thread(kxetray/22)\ID Thread
\Thread(kxetray/23)\ID Thread
\Thread(igfxsrvc/0)\ID Thread
\Thread(igfxsrvc/1)\ID Thread
\Thread(igfxsrvc/2)\ID Thread
\Thread(igfxsrvc/3)\ID Thread
\Thread(Ext2Mgr/0)\ID Thread
\Thread(RTHDCPL/0)\ID Thread
\Thread(RTHDCPL/1)\ID Thread
\Thread(RTHDCPL/2)\ID Thread
\Thread(RTHDCPL/3)\ID Thread
\Thread(OfficeIM/0)\ID Thread
\Thread(OfficeIM/1)\ID Thread
\Thread(OfficeIM/2)\ID Thread
\Thread(OfficeIM/3)\ID Thread
\Thread(OfficeIM/4)\ID Thread
\Thread(OfficeIM/5)\ID Thread
\Thread(OfficeIM/6)\ID Thread
\Thread(OfficeIM/7)\ID Thread
\Thread(OfficeIM/8)\ID Thread
\Thread(OfficeIM/9)\ID Thread
\Thread(OfficeIM/10)\ID Thread
\Thread(OfficeIM/11)\ID Thread
\Thread(OfficeIM/12)\ID Thread
\Thread(OfficeIM/13)\ID Thread
\Thread(OfficeIM/14)\ID Thread
\Thread(vmware-tray/0)\ID Thread
\Thread(vmware-tray/1)\ID Thread
\Thread(vmware-tray/2)\ID Thread
\Thread(msnmsgr/0)\ID Thread
\Thread(msnmsgr/1)\ID Thread
\Thread(msnmsgr/2)\ID Thread
\Thread(msnmsgr/3)\ID Thread
\Thread(msnmsgr/4)\ID Thread
\Thread(msnmsgr/5)\ID Thread
\Thread(msnmsgr/6)\ID Thread
\Thread(msnmsgr/7)\ID Thread
\Thread(msnmsgr/8)\ID Thread
\Thread(msnmsgr/9)\ID Thread
\Thread(msnmsgr/10)\ID Thread
\Thread(msnmsgr/11)\ID Thread
\Thread(msnmsgr/12)\ID Thread
\Thread(msnmsgr/13)\ID Thread
\Thread(msnmsgr/14)\ID Thread
\Thread(msnmsgr/15)\ID Thread
\Thread(msnmsgr/16)\ID Thread
\Thread(msnmsgr/17)\ID Thread
\Thread(msnmsgr/18)\ID Thread
\Thread(msnmsgr/19)\ID Thread
\Thread(msnmsgr/20)\ID Thread
\Thread(msnmsgr/21)\ID Thread
\Thread(msnmsgr/22)\ID Thread
\Thread(msnmsgr/23)\ID Thread
\Thread(msnmsgr/24)\ID Thread
\Thread(msnmsgr/25)\ID Thread
\Thread(msnmsgr/26)\ID Thread
\Thread(msnmsgr/27)\ID Thread
\Thread(msnmsgr/28)\ID Thread
\Thread(msnmsgr/29)\ID Thread
\Thread(msnmsgr/30)\ID Thread
\Thread(msnmsgr/31)\ID Thread
\Thread(msnmsgr/32)\ID Thread
\Thread(msnmsgr/33)\ID Thread
\Thread(msnmsgr/34)\ID Thread
\Thread(msnmsgr/35)\ID Thread
\Thread(msnmsgr/36)\ID Thread
\Thread(msnmsgr/37)\ID Thread
\Thread(msnmsgr/38)\ID Thread
\Thread(msnmsgr/39)\ID Thread
\Thread(ctfmon/0)\ID Thread
\Thread(VVCap/0)\ID Thread
\Thread(VVCap/1)\ID Thread
\Thread(wlcomm/0)\ID Thread
\Thread(wlcomm/1)\ID Thread
\Thread(wlcomm/2)\ID Thread
\Thread(wlcomm/3)\ID Thread
\Thread(wlcomm/4)\ID Thread
\Thread(wlcomm/5)\ID Thread
\Thread(wlcomm/6)\ID Thread
\Thread(wlcomm/7)\ID Thread
\Thread(wlcomm/8)\ID Thread
\Thread(wlcomm/9)\ID Thread
\Thread(wlcomm/10)\ID Thread
\Thread(wlcomm/11)\ID Thread
\Thread(wlcomm/12)\ID Thread
\Thread(wlcomm/13)\ID Thread
\Thread(wlcomm/14)\ID Thread
\Thread(WPFFontCache_v0400/0)\ID Thread
\Thread(WPFFontCache_v0400/1)\ID Thread
\Thread(WPFFontCache_v0400/2)\ID Thread
\Thread(WPFFontCache_v0400/3)\ID Thread
\Thread(WPFFontCache_v0400/4)\ID Thread
\Thread(WPFFontCache_v0400/5)\ID Thread
\Thread(WPFFontCache_v0400/6)\ID Thread
\Thread(KuGoo/0)\ID Thread
\Thread(KuGoo/1)\ID Thread
\Thread(KuGoo/2)\ID Thread
\Thread(KuGoo/3)\ID Thread
\Thread(KuGoo/4)\ID Thread
\Thread(KuGoo/5)\ID Thread
\Thread(KuGoo/6)\ID Thread
\Thread(KuGoo/7)\ID Thread
\Thread(KuGoo/8)\ID Thread
\Thread(KuGoo/9)\ID Thread
\Thread(KuGoo/10)\ID Thread
\Thread(KuGoo/11)\ID Thread
\Thread(KuGoo/12)\ID Thread
\Thread(KuGoo/13)\ID Thread
\Thread(KuGoo/14)\ID Thread
\Thread(KuGoo/15)\ID Thread
\Thread(KuGoo/16)\ID Thread
\Thread(KuGoo/17)\ID Thread
\Thread(KuGoo/18)\ID Thread
\Thread(KuGoo/19)\ID Thread
\Thread(KuGoo/20)\ID Thread
\Thread(KuGoo/21)\ID Thread
\Thread(KuGoo/22)\ID Thread
\Thread(KuGoo/23)\ID Thread
\Thread(KuGoo/24)\ID Thread
\Thread(KuGoo/25)\ID Thread
\Thread(KuGoo/26)\ID Thread
\Thread(KuGoo/27)\ID Thread
\Thread(KuGoo/28)\ID Thread
\Thread(KuGoo/29)\ID Thread
\Thread(KuGoo/30)\ID Thread
\Thread(KuGoo/31)\ID Thread
\Thread(KuGoo/32)\ID Thread
\Thread(KuGoo/33)\ID Thread
\Thread(KuGoo/34)\ID Thread
\Thread(KuGoo/35)\ID Thread
\Thread(KuGoo/36)\ID Thread
\Thread(KuGoo/37)\ID Thread
\Thread(KuGoo/38)\ID Thread
\Thread(KuGoo/39)\ID Thread
\Thread(KuGoo/40)\ID Thread
\Thread(KuGoo/41)\ID Thread
\Thread(KuGoo/42)\ID Thread
\Thread(KuGoo/43)\ID Thread
\Thread(KuGoo/44)\ID Thread
\Thread(KuGoo/45)\ID Thread
\Thread(KuGoo/46)\ID Thread
\Thread(KuGoo/47)\ID Thread
\Thread(KuGoo/48)\ID Thread
\Thread(KuGoo/49)\ID Thread
\Thread(KuGoo/50)\ID Thread
\Thread(KuGoo/51)\ID Thread
\Thread(KuGoo/52)\ID Thread
\Thread(KuGoo/53)\ID Thread
\Thread(KuGoo/54)\ID Thread
\Thread(KuGoo/55)\ID Thread
\Thread(KuGoo/56)\ID Thread
\Thread(KuGoo/57)\ID Thread
\Thread(KuGoo/58)\ID Thread
\Thread(KuGoo/59)\ID Thread
\Thread(firefox/0)\ID Thread
\Thread(firefox/1)\ID Thread
\Thread(firefox/2)\ID Thread
\Thread(firefox/3)\ID Thread
\Thread(firefox/4)\ID Thread
\Thread(firefox/5)\ID Thread
\Thread(firefox/6)\ID Thread
\Thread(firefox/7)\ID Thread
\Thread(firefox/8)\ID Thread
\Thread(firefox/9)\ID Thread
\Thread(firefox/10)\ID Thread
\Thread(firefox/11)\ID Thread
\Thread(firefox/12)\ID Thread
\Thread(firefox/13)\ID Thread
\Thread(firefox/14)\ID Thread
\Thread(firefox/15)\ID Thread
\Thread(firefox/16)\ID Thread
\Thread(firefox/17)\ID Thread
\Thread(firefox/18)\ID Thread
\Thread(firefox/19)\ID Thread
\Thread(firefox/20)\ID Thread
\Thread(firefox/21)\ID Thread
\Thread(firefox/22)\ID Thread
\Thread(firefox/23)\ID Thread
\Thread(firefox/24)\ID Thread
\Thread(vmware/0)\ID Thread
\Thread(vmware/1)\ID Thread
\Thread(vmware/2)\ID Thread
\Thread(vmware/3)\ID Thread
\Thread(vmware/4)\ID Thread
\Thread(vmware/5)\ID Thread
\Thread(vmware/6)\ID Thread
\Thread(vmware/7)\ID Thread
\Thread(taskmgr/0)\ID Thread
\Thread(taskmgr/1)\ID Thread
\Thread(taskmgr/2)\ID Thread
\Thread(SshClient/0)\ID Thread
\Thread(SshClient/1)\ID Thread
\Thread(SshClient/2)\ID Thread
\Thread(SshClient/3)\ID Thread
\Thread(SshClient/4)\ID Thread
\Thread(SshClient/5)\ID Thread
\Thread(SshClient/6)\ID Thread
\Thread(Thunder5/0)\ID Thread
\Thread(Thunder5/1)\ID Thread
\Thread(Thunder5/2)\ID Thread
\Thread(Thunder5/3)\ID Thread
\Thread(Thunder5/4)\ID Thread
\Thread(Thunder5/5)\ID Thread
\Thread(Thunder5/6)\ID Thread
\Thread(Thunder5/7)\ID Thread
\Thread(Thunder5/8)\ID Thread
\Thread(Thunder5/9)\ID Thread
\Thread(Thunder5/10)\ID Thread
\Thread(Thunder5/11)\ID Thread
\Thread(Thunder5/12)\ID Thread
\Thread(Thunder5/13)\ID Thread
\Thread(Thunder5/14)\ID Thread
\Thread(Thunder5/15)\ID Thread
\Thread(Thunder5/16)\ID Thread
\Thread(Thunder5/17)\ID Thread
\Thread(Thunder5/18)\ID Thread
\Thread(Thunder5/19)\ID Thread
\Thread(Thunder5/20)\ID Thread
\Thread(Thunder5/21)\ID Thread
\Thread(Thunder5/22)\ID Thread
\Thread(Thunder5/23)\ID Thread
\Thread(Thunder5/24)\ID Thread
\Thread(Thunder5/25)\ID Thread
\Thread(Thunder5/26)\ID Thread
\Thread(Thunder5/27)\ID Thread
\Thread(Thunder5/28)\ID Thread
\Thread(Thunder5/29)\ID Thread
\Thread(Thunder5/30)\ID Thread
\Thread(Thunder5/31)\ID Thread
\Thread(Thunder5/32)\ID Thread
\Thread(Thunder5/33)\ID Thread
\Thread(Thunder5/34)\ID Thread
\Thread(Thunder5/35)\ID Thread
\Thread(Thunder5/36)\ID Thread
\Thread(Thunder5/37)\ID Thread
\Thread(Thunder5/38)\ID Thread
\Thread(Thunder5/39)\ID Thread
\Thread(Thunder5/40)\ID Thread
\Thread(Thunder5/41)\ID Thread
\Thread(Thunder5/42)\ID Thread
\Thread(Thunder5/43)\ID Thread
\Thread(Thunder5/44)\ID Thread
\Thread(Thunder5/45)\ID Thread
\Thread(Thunder5/46)\ID Thread
\Thread(cmd/0)\ID Thread
\Thread(typeperf/0)\ID Thread
\Thread(typeperf/1)\ID Thread
\Thread(typeperf/2)\ID Thread
\Thread(typeperf/3)\ID Thread
\Thread(typeperf/4)\ID Thread
\Thread(typeperf/5)\ID Thread
\Thread(typeperf/6)\ID Thread
\Thread(typeperf/7)\ID Thread
\Thread(typeperf/8)\ID Thread
\Thread(typeperf/9)\ID Thread
\Thread(typeperf/10)\ID Thread
\Thread(_Total/_Total)\ID Thread
\Job Object(WmiProviderSubSystemHostJob)\Current % Processor Time
\Job Object(_Total)\Current % Processor Time
\Job Object(WmiProviderSubSystemHostJob)\Current % User Mode Time
\Job Object(_Total)\Current % User Mode Time
\Job Object(WmiProviderSubSystemHostJob)\Current % Kernel Mode Time
\Job Object(_Total)\Current % Kernel Mode Time
\Job Object(WmiProviderSubSystemHostJob)\This Period mSec - Processor
\Job Object(_Total)\This Period mSec - Processor
\Job Object(WmiProviderSubSystemHostJob)\This Period mSec - User Mode
\Job Object(_Total)\This Period mSec - User Mode
\Job Object(WmiProviderSubSystemHostJob)\This Period mSec - Kernel Mode
\Job Object(_Total)\This Period mSec - Kernel Mode
\Job Object(WmiProviderSubSystemHostJob)\Total mSec - Processor
\Job Object(_Total)\Total mSec - Processor
\Job Object(WmiProviderSubSystemHostJob)\Total mSec - User Mode
\Job Object(_Total)\Total mSec - User Mode
\Job Object(WmiProviderSubSystemHostJob)\Total mSec - Kernel Mode
\Job Object(_Total)\Total mSec - Kernel Mode
\Job Object(WmiProviderSubSystemHostJob)\Pages/Sec
\Job Object(_Total)\Pages/Sec
\Job Object(WmiProviderSubSystemHostJob)\Process Count - Total
\Job Object(_Total)\Process Count - Total
\Job Object(WmiProviderSubSystemHostJob)\Process Count - Active
\Job Object(_Total)\Process Count - Active
\Job Object(WmiProviderSubSystemHostJob)\Process Count - Terminated
\Job Object(_Total)\Process Count - Terminated
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\% Processor Time
\Job Object Details(_Total/_Total)\% Processor Time
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\% User Time
\Job Object Details(_Total/_Total)\% User Time
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\% Privileged Time
\Job Object Details(_Total/_Total)\% Privileged Time
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Virtual Bytes Peak
\Job Object Details(_Total/_Total)\Virtual Bytes Peak
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Virtual Bytes
\Job Object Details(_Total/_Total)\Virtual Bytes
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Page Faults/sec
\Job Object Details(_Total/_Total)\Page Faults/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Working Set Peak
\Job Object Details(_Total/_Total)\Working Set Peak
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Working Set
\Job Object Details(_Total/_Total)\Working Set
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Page File Bytes Peak
\Job Object Details(_Total/_Total)\Page File Bytes Peak
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Page File Bytes
\Job Object Details(_Total/_Total)\Page File Bytes
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Private Bytes
\Job Object Details(_Total/_Total)\Private Bytes
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Thread Count
\Job Object Details(_Total/_Total)\Thread Count
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Priority Base
\Job Object Details(_Total/_Total)\Priority Base
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Elapsed Time
\Job Object Details(_Total/_Total)\Elapsed Time
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\ID Process
\Job Object Details(_Total/_Total)\ID Process
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Creating Process ID
\Job Object Details(_Total/_Total)\Creating Process ID
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Pool Paged Bytes
\Job Object Details(_Total/_Total)\Pool Paged Bytes
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Pool Nonpaged Bytes
\Job Object Details(_Total/_Total)\Pool Nonpaged Bytes
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\Handle Count
\Job Object Details(_Total/_Total)\Handle Count
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Read Operations/sec
\Job Object Details(_Total/_Total)\IO Read Operations/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Write Operations/sec
\Job Object Details(_Total/_Total)\IO Write Operations/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Data Operations/sec
\Job Object Details(_Total/_Total)\IO Data Operations/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Other Operations/sec
\Job Object Details(_Total/_Total)\IO Other Operations/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Read Bytes/sec
\Job Object Details(_Total/_Total)\IO Read Bytes/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Write Bytes/sec
\Job Object Details(_Total/_Total)\IO Write Bytes/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Data Bytes/sec
\Job Object Details(_Total/_Total)\IO Data Bytes/sec
\Job Object Details(WmiProviderSubSystemHostJob/_Total)\IO Other Bytes/sec
\Job Object Details(_Total/_Total)\IO Other Bytes/sec
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Out of packets
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Out of packets
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Flows opened
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Flows opened
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Flows closed
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Flows closed
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Flows rejected
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Flows rejected
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Flows modified
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Flows modified
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Flow mods rejected
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Flow mods rejected
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Max simultaneous flows
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Max simultaneous flows
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Nonconforming packets scheduled
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Nonconforming packets scheduled
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Nonconforming packets scheduled/sec
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Nonconforming packets scheduled/sec
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Average packets in shaper
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Average packets in shaper
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Max packets in shaper
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Max packets in shaper
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Average packets in sequencer
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Average packets in sequencer
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Max packets in sequencer
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Max packets in sequencer
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Max packets in netcard
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Max packets in netcard
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Average packets in netcard
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Average packets in netcard
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Nonconforming packets transmitted
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Nonconforming packets transmitted
\PSched Pipe(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Nonconforming packets transmitted/sec
\PSched Pipe(Atheros AR8121-AR8113-AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Nonconforming packets transmitted/sec
\PSched Flow\Packets dropped
\PSched Flow\Packets scheduled
\PSched Flow\Packets transmitted
\PSched Flow\Bytes scheduled
\PSched Flow\Bytes transmitted
\PSched Flow\Bytes transmitted/sec
\PSched Flow\Bytes scheduled/sec
\PSched Flow\Packets transmitted/sec
\PSched Flow\Packets scheduled/sec
\PSched Flow\Packets dropped/sec
\PSched Flow\Nonconforming packets scheduled
\PSched Flow\Nonconforming packets scheduled/sec
\PSched Flow\Average packets in shaper
\PSched Flow\Max packets in shaper
\PSched Flow\Average packets in sequencer
\PSched Flow\Max packets in sequencer
\PSched Flow\Maximum Packets in netcard
\PSched Flow\Average Packets in netcard
\PSched Flow\Nonconforming packets transmitted
\PSched Flow\Nonconforming packets transmitted/sec
\RAS Port(LPT1)\Bytes Transmitted
\RAS Port(VPN2-1)\Bytes Transmitted
\RAS Port(VPN2-0)\Bytes Transmitted
\RAS Port(VPN3-1)\Bytes Transmitted
\RAS Port(VPN3-0)\Bytes Transmitted
\RAS Port(PPPoE4-0)\Bytes Transmitted
\RAS Port(LPT1)\Bytes Received
\RAS Port(VPN2-1)\Bytes Received
\RAS Port(VPN2-0)\Bytes Received
\RAS Port(VPN3-1)\Bytes Received
\RAS Port(VPN3-0)\Bytes Received
\RAS Port(PPPoE4-0)\Bytes Received
\RAS Port(LPT1)\Frames Transmitted
\RAS Port(VPN2-1)\Frames Transmitted
\RAS Port(VPN2-0)\Frames Transmitted
\RAS Port(VPN3-1)\Frames Transmitted
\RAS Port(VPN3-0)\Frames Transmitted
\RAS Port(PPPoE4-0)\Frames Transmitted
\RAS Port(LPT1)\Frames Received.
\RAS Port(VPN2-1)\Frames Received.
\RAS Port(VPN2-0)\Frames Received.
\RAS Port(VPN3-1)\Frames Received.
\RAS Port(VPN3-0)\Frames Received.
\RAS Port(PPPoE4-0)\Frames Received.
\RAS Port(LPT1)\Percent Compression Out
\RAS Port(VPN2-1)\Percent Compression Out
\RAS Port(VPN2-0)\Percent Compression Out
\RAS Port(VPN3-1)\Percent Compression Out
\RAS Port(VPN3-0)\Percent Compression Out
\RAS Port(PPPoE4-0)\Percent Compression Out
\RAS Port(LPT1)\Percent Compression In
\RAS Port(VPN2-1)\Percent Compression In
\RAS Port(VPN2-0)\Percent Compression In
\RAS Port(VPN3-1)\Percent Compression In
\RAS Port(VPN3-0)\Percent Compression In
\RAS Port(PPPoE4-0)\Percent Compression In
\RAS Port(LPT1)\CRC Errors
\RAS Port(VPN2-1)\CRC Errors
\RAS Port(VPN2-0)\CRC Errors
\RAS Port(VPN3-1)\CRC Errors
\RAS Port(VPN3-0)\CRC Errors
\RAS Port(PPPoE4-0)\CRC Errors
\RAS Port(LPT1)\Timeout Errors
\RAS Port(VPN2-1)\Timeout Errors
\RAS Port(VPN2-0)\Timeout Errors
\RAS Port(VPN3-1)\Timeout Errors
\RAS Port(VPN3-0)\Timeout Errors
\RAS Port(PPPoE4-0)\Timeout Errors
\RAS Port(LPT1)\Serial Overrun Errors
\RAS Port(VPN2-1)\Serial Overrun Errors
\RAS Port(VPN2-0)\Serial Overrun Errors
\RAS Port(VPN3-1)\Serial Overrun Errors
\RAS Port(VPN3-0)\Serial Overrun Errors
\RAS Port(PPPoE4-0)\Serial Overrun Errors
\RAS Port(LPT1)\Alignment Errors
\RAS Port(VPN2-1)\Alignment Errors
\RAS Port(VPN2-0)\Alignment Errors
\RAS Port(VPN3-1)\Alignment Errors
\RAS Port(VPN3-0)\Alignment Errors
\RAS Port(PPPoE4-0)\Alignment Errors
\RAS Port(LPT1)\Buffer Overrun Errors
\RAS Port(VPN2-1)\Buffer Overrun Errors
\RAS Port(VPN2-0)\Buffer Overrun Errors
\RAS Port(VPN3-1)\Buffer Overrun Errors
\RAS Port(VPN3-0)\Buffer Overrun Errors
\RAS Port(PPPoE4-0)\Buffer Overrun Errors
\RAS Port(LPT1)\Total Errors
\RAS Port(VPN2-1)\Total Errors
\RAS Port(VPN2-0)\Total Errors
\RAS Port(VPN3-1)\Total Errors
\RAS Port(VPN3-0)\Total Errors
\RAS Port(PPPoE4-0)\Total Errors
\RAS Port(LPT1)\Bytes Transmitted/Sec
\RAS Port(VPN2-1)\Bytes Transmitted/Sec
\RAS Port(VPN2-0)\Bytes Transmitted/Sec
\RAS Port(VPN3-1)\Bytes Transmitted/Sec
\RAS Port(VPN3-0)\Bytes Transmitted/Sec
\RAS Port(PPPoE4-0)\Bytes Transmitted/Sec
\RAS Port(LPT1)\Bytes Received/Sec
\RAS Port(VPN2-1)\Bytes Received/Sec
\RAS Port(VPN2-0)\Bytes Received/Sec
\RAS Port(VPN3-1)\Bytes Received/Sec
\RAS Port(VPN3-0)\Bytes Received/Sec
\RAS Port(PPPoE4-0)\Bytes Received/Sec
\RAS Port(LPT1)\Frames Transmitted/Sec
\RAS Port(VPN2-1)\Frames Transmitted/Sec
\RAS Port(VPN2-0)\Frames Transmitted/Sec
\RAS Port(VPN3-1)\Frames Transmitted/Sec
\RAS Port(VPN3-0)\Frames Transmitted/Sec
\RAS Port(PPPoE4-0)\Frames Transmitted/Sec
\RAS Port(LPT1)\Frames Received/Sec
\RAS Port(VPN2-1)\Frames Received/Sec
\RAS Port(VPN2-0)\Frames Received/Sec
\RAS Port(VPN3-1)\Frames Received/Sec
\RAS Port(VPN3-0)\Frames Received/Sec
\RAS Port(PPPoE4-0)\Frames Received/Sec
\RAS Port(LPT1)\Total Errors/Sec
\RAS Port(VPN2-1)\Total Errors/Sec
\RAS Port(VPN2-0)\Total Errors/Sec
\RAS Port(VPN3-1)\Total Errors/Sec
\RAS Port(VPN3-0)\Total Errors/Sec
\RAS Port(PPPoE4-0)\Total Errors/Sec
\RAS Total\Bytes Transmitted
\RAS Total\Bytes Received
\RAS Total\Frames Transmitted
\RAS Total\Frames Received.
\RAS Total\Percent Compression Out
\RAS Total\Percent Compression In
\RAS Total\CRC Errors
\RAS Total\Timeout Errors
\RAS Total\Serial Overrun Errors
\RAS Total\Alignment Errors
\RAS Total\Buffer Overrun Errors
\RAS Total\Total Errors
\RAS Total\Bytes Transmitted/Sec
\RAS Total\Bytes Received/Sec
\RAS Total\Frames Transmitted/Sec
\RAS Total\Frames Received/Sec
\RAS Total\Total Errors/Sec
\RAS Total\Total Connections
\RSVP Service(Service)\Network Interfaces
\RSVP Service(Service)\Network sockets
\RSVP Service(Service)\Timers
\RSVP Service(Service)\RSVP sessions
\RSVP Service(Service)\QoS clients
\RSVP Service(Service)\QoS-enabled senders
\RSVP Service(Service)\QoS-enabled receivers
\RSVP Service(Service)\Failed QoS requests
\RSVP Service(Service)\Failed QoS sends
\RSVP Service(Service)\QoS notifications
\RSVP Service(Service)\Bytes in QoS notifications
\RSVP Interfaces\Signaling bytes received
\RSVP Interfaces\Signaling bytes sent
\RSVP Interfaces\PATH messages received
\RSVP Interfaces\RESV messages received
\RSVP Interfaces\PATH ERR messages received
\RSVP Interfaces\RESV ERR messages received
\RSVP Interfaces\PATH TEAR messages received
\RSVP Interfaces\RESV TEAR messages received
\RSVP Interfaces\RESV CONFIRM messages received
\RSVP Interfaces\PATH messages sent
\RSVP Interfaces\RESV messages sent
\RSVP Interfaces\PATH ERR messages sent
\RSVP Interfaces\RESV ERR messages sent
\RSVP Interfaces\PATH TEAR messages sent
\RSVP Interfaces\RESV TEAR messages sent
\RSVP Interfaces\RESV CONFIRM messages sent
\RSVP Interfaces\Resource control failures
\RSVP Interfaces\Policy control failures
\RSVP Interfaces\General failures
\RSVP Interfaces\Blocked RESVs
\RSVP Interfaces\RESV state block timeouts
\RSVP Interfaces\PATH state block timeouts
\RSVP Interfaces\Send messages errors - Big messages
\RSVP Interfaces\Receive messages errors - Big messages
\RSVP Interfaces\Send messages errors - No memory
\RSVP Interfaces\Receive messages errors - No memory
\RSVP Interfaces\Number of incoming messages dropped
\RSVP Interfaces\丢失的传入消息数量
\RSVP Interfaces\Number of active flows
\RSVP Interfaces\保留的带宽
\RSVP Interfaces\Maximum admitted bandwidth
\.NET Data Provider for SqlServer\HardConnectsPerSecond
\.NET Data Provider for SqlServer\HardDisconnectsPerSecond
\.NET Data Provider for SqlServer\SoftConnectsPerSecond
\.NET Data Provider for SqlServer\SoftDisconnectsPerSecond
\.NET Data Provider for SqlServer\NumberOfNonPooledConnections
\.NET Data Provider for SqlServer\NumberOfPooledConnections
\.NET Data Provider for SqlServer\NumberOfActiveConnectionPoolGroups
\.NET Data Provider for SqlServer\NumberOfInactiveConnectionPoolGroups
\.NET Data Provider for SqlServer\NumberOfActiveConnectionPools
\.NET Data Provider for SqlServer\NumberOfInactiveConnectionPools
\.NET Data Provider for SqlServer\NumberOfActiveConnections
\.NET Data Provider for SqlServer\NumberOfFreeConnections
\.NET Data Provider for SqlServer\NumberOfStasisConnections
\.NET Data Provider for SqlServer\NumberOfReclaimedConnections
\.NET Memory Cache 4.0\Cache Hits
\.NET Memory Cache 4.0\Cache Misses
\.NET Memory Cache 4.0\Cache Hit Ratio
\.NET Memory Cache 4.0\Cache Trims
\.NET Memory Cache 4.0\Cache Entries
\.NET Memory Cache 4.0\Cache Turnover Rate
\MSDTC Bridge 3.0.0.0\Message send failures/sec
\MSDTC Bridge 3.0.0.0\Prepare retry count/sec
\MSDTC Bridge 3.0.0.0\Commit retry count/sec
\MSDTC Bridge 3.0.0.0\Prepared retry count/sec
\MSDTC Bridge 3.0.0.0\Replay retry count/sec
\MSDTC Bridge 3.0.0.0\Faults received count/sec
\MSDTC Bridge 3.0.0.0\Faults sent count/sec
\MSDTC Bridge 3.0.0.0\Average participant prepare response time
\MSDTC Bridge 3.0.0.0\Average participant commit response time
\MSDTC Bridge 4.0.0.0\Message send failures/sec
\MSDTC Bridge 4.0.0.0\Prepare retry count/sec
\MSDTC Bridge 4.0.0.0\Commit retry count/sec
\MSDTC Bridge 4.0.0.0\Prepared retry count/sec
\MSDTC Bridge 4.0.0.0\Replay retry count/sec
\MSDTC Bridge 4.0.0.0\Faults received count/sec
\MSDTC Bridge 4.0.0.0\Faults sent count/sec
\MSDTC Bridge 4.0.0.0\Average participant prepare response time
\MSDTC Bridge 4.0.0.0\Average participant commit response time
\ServiceModelEndpoint 3.0.0.0\Calls
\ServiceModelEndpoint 3.0.0.0\Calls Per Second
\ServiceModelEndpoint 3.0.0.0\Calls Outstanding
\ServiceModelEndpoint 3.0.0.0\Calls Failed
\ServiceModelEndpoint 3.0.0.0\Calls Failed Per Second
\ServiceModelEndpoint 3.0.0.0\Calls Faulted
\ServiceModelEndpoint 3.0.0.0\Calls Faulted Per Second
\ServiceModelEndpoint 3.0.0.0\Calls Duration
\ServiceModelEndpoint 3.0.0.0\Transactions Flowed
\ServiceModelEndpoint 3.0.0.0\Transactions Flowed Per Second
\ServiceModelEndpoint 3.0.0.0\Security Validation and Authentication Failures
\ServiceModelEndpoint 3.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelEndpoint 3.0.0.0\Security Calls Not Authorized
\ServiceModelEndpoint 3.0.0.0\Security Calls Not Authorized Per Second
\ServiceModelEndpoint 3.0.0.0\Reliable Messaging Sessions Faulted
\ServiceModelEndpoint 3.0.0.0\Reliable Messaging Sessions Faulted Per Second
\ServiceModelEndpoint 3.0.0.0\Reliable Messaging Messages Dropped
\ServiceModelEndpoint 3.0.0.0\Reliable Messaging Messages Dropped Per Second
\ServiceModelEndpoint 4.0.0.0\Calls
\ServiceModelEndpoint 4.0.0.0\Calls Per Second
\ServiceModelEndpoint 4.0.0.0\Calls Outstanding
\ServiceModelEndpoint 4.0.0.0\Calls Failed
\ServiceModelEndpoint 4.0.0.0\Calls Failed Per Second
\ServiceModelEndpoint 4.0.0.0\Calls Faulted
\ServiceModelEndpoint 4.0.0.0\Calls Faulted Per Second
\ServiceModelEndpoint 4.0.0.0\Calls Duration
\ServiceModelEndpoint 4.0.0.0\Transactions Flowed
\ServiceModelEndpoint 4.0.0.0\Transactions Flowed Per Second
\ServiceModelEndpoint 4.0.0.0\Security Validation and Authentication Failures
\ServiceModelEndpoint 4.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelEndpoint 4.0.0.0\Security Calls Not Authorized
\ServiceModelEndpoint 4.0.0.0\Security Calls Not Authorized Per Second
\ServiceModelEndpoint 4.0.0.0\Reliable Messaging Sessions Faulted
\ServiceModelEndpoint 4.0.0.0\Reliable Messaging Sessions Faulted Per Second
\ServiceModelEndpoint 4.0.0.0\Reliable Messaging Messages Dropped
\ServiceModelEndpoint 4.0.0.0\Reliable Messaging Messages Dropped Per Second
\ServiceModelOperation 3.0.0.0\Calls
\ServiceModelOperation 3.0.0.0\Calls Per Second
\ServiceModelOperation 3.0.0.0\Calls Outstanding
\ServiceModelOperation 3.0.0.0\Calls Failed
\ServiceModelOperation 3.0.0.0\Call Failed Per Second
\ServiceModelOperation 3.0.0.0\Calls Faulted
\ServiceModelOperation 3.0.0.0\Calls Faulted Per Second
\ServiceModelOperation 3.0.0.0\Calls Duration
\ServiceModelOperation 3.0.0.0\Transactions Flowed
\ServiceModelOperation 3.0.0.0\Transactions Flowed Per Second
\ServiceModelOperation 3.0.0.0\Security Validation and Authentication Failures
\ServiceModelOperation 3.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelOperation 3.0.0.0\Security Calls Not Authorized
\ServiceModelOperation 3.0.0.0\Security Calls Not Authorized Per Second
\ServiceModelOperation 4.0.0.0\Calls
\ServiceModelOperation 4.0.0.0\Calls Per Second
\ServiceModelOperation 4.0.0.0\Calls Outstanding
\ServiceModelOperation 4.0.0.0\Calls Failed
\ServiceModelOperation 4.0.0.0\Call Failed Per Second
\ServiceModelOperation 4.0.0.0\Calls Faulted
\ServiceModelOperation 4.0.0.0\Calls Faulted Per Second
\ServiceModelOperation 4.0.0.0\Calls Duration
\ServiceModelOperation 4.0.0.0\Transactions Flowed
\ServiceModelOperation 4.0.0.0\Transactions Flowed Per Second
\ServiceModelOperation 4.0.0.0\Security Validation and Authentication Failures
\ServiceModelOperation 4.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelOperation 4.0.0.0\Security Calls Not Authorized
\ServiceModelOperation 4.0.0.0\Security Calls Not Authorized Per Second
\Print Queue(Microsoft XPS Document Writer)\Total Jobs Printed
\Print Queue(Microsoft Office Document Image Writer)\Total Jobs Printed
\Print Queue(HP LaserJet 3390 Series PCL 6)\Total Jobs Printed
\Print Queue(FMCVisioExporter)\Total Jobs Printed
\Print Queue(_Total)\Total Jobs Printed
\Print Queue(Microsoft XPS Document Writer)\Bytes Printed/sec
\Print Queue(Microsoft Office Document Image Writer)\Bytes Printed/sec
\Print Queue(HP LaserJet 3390 Series PCL 6)\Bytes Printed/sec
\Print Queue(FMCVisioExporter)\Bytes Printed/sec
\Print Queue(_Total)\Bytes Printed/sec
\Print Queue(Microsoft XPS Document Writer)\Total Pages Printed
\Print Queue(Microsoft Office Document Image Writer)\Total Pages Printed
\Print Queue(HP LaserJet 3390 Series PCL 6)\Total Pages Printed
\Print Queue(FMCVisioExporter)\Total Pages Printed
\Print Queue(_Total)\Total Pages Printed
\Print Queue(Microsoft XPS Document Writer)\Jobs
\Print Queue(Microsoft Office Document Image Writer)\Jobs
\Print Queue(HP LaserJet 3390 Series PCL 6)\Jobs
\Print Queue(FMCVisioExporter)\Jobs
\Print Queue(_Total)\Jobs
\Print Queue(Microsoft XPS Document Writer)\References
\Print Queue(Microsoft Office Document Image Writer)\References
\Print Queue(HP LaserJet 3390 Series PCL 6)\References
\Print Queue(FMCVisioExporter)\References
\Print Queue(_Total)\References
\Print Queue(Microsoft XPS Document Writer)\Max References
\Print Queue(Microsoft Office Document Image Writer)\Max References
\Print Queue(HP LaserJet 3390 Series PCL 6)\Max References
\Print Queue(FMCVisioExporter)\Max References
\Print Queue(_Total)\Max References
\Print Queue(Microsoft XPS Document Writer)\Jobs Spooling
\Print Queue(Microsoft Office Document Image Writer)\Jobs Spooling
\Print Queue(HP LaserJet 3390 Series PCL 6)\Jobs Spooling
\Print Queue(FMCVisioExporter)\Jobs Spooling
\Print Queue(_Total)\Jobs Spooling
\Print Queue(Microsoft XPS Document Writer)\Max Jobs Spooling
\Print Queue(Microsoft Office Document Image Writer)\Max Jobs Spooling
\Print Queue(HP LaserJet 3390 Series PCL 6)\Max Jobs Spooling
\Print Queue(FMCVisioExporter)\Max Jobs Spooling
\Print Queue(_Total)\Max Jobs Spooling
\Print Queue(Microsoft XPS Document Writer)\Out of Paper Errors
\Print Queue(Microsoft Office Document Image Writer)\Out of Paper Errors
\Print Queue(HP LaserJet 3390 Series PCL 6)\Out of Paper Errors
\Print Queue(FMCVisioExporter)\Out of Paper Errors
\Print Queue(_Total)\Out of Paper Errors
\Print Queue(Microsoft XPS Document Writer)\Not Ready Errors
\Print Queue(Microsoft Office Document Image Writer)\Not Ready Errors
\Print Queue(HP LaserJet 3390 Series PCL 6)\Not Ready Errors
\Print Queue(FMCVisioExporter)\Not Ready Errors
\Print Queue(_Total)\Not Ready Errors
\Print Queue(Microsoft XPS Document Writer)\Job Errors
\Print Queue(Microsoft Office Document Image Writer)\Job Errors
\Print Queue(HP LaserJet 3390 Series PCL 6)\Job Errors
\Print Queue(FMCVisioExporter)\Job Errors
\Print Queue(_Total)\Job Errors
\Print Queue(Microsoft XPS Document Writer)\Enumerate Network Printer Calls
\Print Queue(Microsoft Office Document Image Writer)\Enumerate Network Printer Calls
\Print Queue(HP LaserJet 3390 Series PCL 6)\Enumerate Network Printer Calls
\Print Queue(FMCVisioExporter)\Enumerate Network Printer Calls
\Print Queue(_Total)\Enumerate Network Printer Calls
\Print Queue(Microsoft XPS Document Writer)\Add Network Printer Calls
\Print Queue(Microsoft Office Document Image Writer)\Add Network Printer Calls
\Print Queue(HP LaserJet 3390 Series PCL 6)\Add Network Printer Calls
\Print Queue(FMCVisioExporter)\Add Network Printer Calls
\Print Queue(_Total)\Add Network Printer Calls
\Telephony\Lines
\Telephony\Telephone Devices
\Telephony\Active Lines
\Telephony\Active Telephones
\Telephony\Outgoing Calls/sec
\Telephony\Incoming Calls/sec
\Telephony\Client Apps
\Telephony\Current Outgoing Calls
\Telephony\Current Incoming Calls
\NBT Connection(Total)\Bytes Received/sec
\NBT Connection(Total)\Bytes Sent/sec
\NBT Connection(Total)\Bytes Total/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Bytes Total/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Bytes Total/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Bytes Total/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Bytes Total/sec
\Network Interface(MS TCP Loopback interface)\Bytes Total/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets/sec
\Network Interface(MS TCP Loopback interface)\Packets/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received/sec
\Network Interface(MS TCP Loopback interface)\Packets Received/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Sent/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Sent/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Sent/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Sent/sec
\Network Interface(MS TCP Loopback interface)\Packets Sent/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Current Bandwidth
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Current Bandwidth
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Current Bandwidth
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Current Bandwidth
\Network Interface(MS TCP Loopback interface)\Current Bandwidth
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Bytes Received/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Bytes Received/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Bytes Received/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Bytes Received/sec
\Network Interface(MS TCP Loopback interface)\Bytes Received/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received Unicast/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received Unicast/sec
\Network Interface(MS TCP Loopback interface)\Packets Received Unicast/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received Non-Unicast/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received Non-Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received Non-Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received Non-Unicast/sec
\Network Interface(MS TCP Loopback interface)\Packets Received Non-Unicast/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received Discarded
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received Discarded
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received Discarded
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received Discarded
\Network Interface(MS TCP Loopback interface)\Packets Received Discarded
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received Errors
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received Errors
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received Errors
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received Errors
\Network Interface(MS TCP Loopback interface)\Packets Received Errors
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Received Unknown
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Received Unknown
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Received Unknown
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Received Unknown
\Network Interface(MS TCP Loopback interface)\Packets Received Unknown
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Bytes Sent/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Bytes Sent/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Bytes Sent/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Bytes Sent/sec
\Network Interface(MS TCP Loopback interface)\Bytes Sent/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Sent Unicast/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Sent Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Sent Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Sent Unicast/sec
\Network Interface(MS TCP Loopback interface)\Packets Sent Unicast/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Sent Non-Unicast/sec
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Sent Non-Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Sent Non-Unicast/sec
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Sent Non-Unicast/sec
\Network Interface(MS TCP Loopback interface)\Packets Sent Non-Unicast/sec
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Outbound Discarded
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Outbound Discarded
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Outbound Discarded
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Outbound Discarded
\Network Interface(MS TCP Loopback interface)\Packets Outbound Discarded
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Packets Outbound Errors
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Packets Outbound Errors
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Packets Outbound Errors
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Packets Outbound Errors
\Network Interface(MS TCP Loopback interface)\Packets Outbound Errors
\Network Interface(Atheros AR8121_AR8113_AR8114 PCI-E Ethernet Controller - 数据包计划程序微型端口)\Output Queue Length
\Network Interface(VirtualBox Host-Only Ethernet Adapter - 数据包计划程序微型端口)\Output Queue Length
\Network Interface(VMware Virtual Ethernet Adapter for VMnet1)\Output Queue Length
\Network Interface(VMware Virtual Ethernet Adapter for VMnet8)\Output Queue Length
\Network Interface(MS TCP Loopback interface)\Output Queue Length
\IP\Datagrams/sec
\IP\Datagrams Received/sec
\IP\Datagrams Received Header Errors
\IP\Datagrams Received Address Errors
\IP\Datagrams Forwarded/sec
\IP\Datagrams Received Unknown Protocol
\IP\Datagrams Received Discarded
\IP\Datagrams Received Delivered/sec
\IP\Datagrams Sent/sec
\IP\Datagrams Outbound Discarded
\IP\Datagrams Outbound No Route
\IP\Fragments Received/sec
\IP\Fragments Re-assembled/sec
\IP\Fragment Re-assembly Failures
\IP\Fragmented Datagrams/sec
\IP\Fragmentation Failures
\IP\Fragments Created/sec
\ICMP\Messages/sec
\ICMP\Messages Received/sec
\ICMP\Messages Received Errors
\ICMP\Received Dest. Unreachable
\ICMP\Received Time Exceeded
\ICMP\Received Parameter Problem
\ICMP\Received Source Quench
\ICMP\Received Redirect/sec
\ICMP\Received Echo/sec
\ICMP\Received Echo Reply/sec
\ICMP\Received Timestamp/sec
\ICMP\Received Timestamp Reply/sec
\ICMP\Received Address Mask
\ICMP\Received Address Mask Reply
\ICMP\Messages Sent/sec
\ICMP\Messages Outbound Errors
\ICMP\Sent Destination Unreachable
\ICMP\Sent Time Exceeded
\ICMP\Sent Parameter Problem
\ICMP\Sent Source Quench
\ICMP\Sent Redirect/sec
\ICMP\Sent Echo/sec
\ICMP\Sent Echo Reply/sec
\ICMP\Sent Timestamp/sec
\ICMP\Sent Timestamp Reply/sec
\ICMP\Sent Address Mask
\ICMP\Sent Address Mask Reply
\TCP\Segments/sec
\TCP\Connections Established
\TCP\Connections Active
\TCP\Connections Passive
\TCP\Connection Failures
\TCP\Connections Reset
\TCP\Segments Received/sec
\TCP\Segments Sent/sec
\TCP\Segments Retransmitted/sec
\UDP\Datagrams/sec
\UDP\Datagrams Received/sec
\UDP\Datagrams No Port/sec
\UDP\Datagrams Received Errors
\UDP\Datagrams Sent/sec
\Terminal Services Session(0 未知)\% Processor Time
\Terminal Services Session(0 未知#1)\% Processor Time
\Terminal Services Session(0 未知#2)\% Processor Time
\Terminal Services Session(0 未知#3)\% Processor Time
\Terminal Services Session(0 未知#4)\% Processor Time
\Terminal Services Session(0 未知#5)\% Processor Time
\Terminal Services Session(0 未知#6)\% Processor Time
\Terminal Services Session(0 未知#7)\% Processor Time
\Terminal Services Session(0 未知#8)\% Processor Time
\Terminal Services Session(0 未知#9)\% Processor Time
\Terminal Services Session(0 未知#10)\% Processor Time
\Terminal Services Session(0 未知#11)\% Processor Time
\Terminal Services Session(0 未知#12)\% Processor Time
\Terminal Services Session(0 未知#13)\% Processor Time
\Terminal Services Session(0 未知#14)\% Processor Time
\Terminal Services Session(0 未知#15)\% Processor Time
\Terminal Services Session(0 未知#16)\% Processor Time
\Terminal Services Session(0 未知#17)\% Processor Time
\Terminal Services Session(0 未知#18)\% Processor Time
\Terminal Services Session(0 未知#19)\% Processor Time
\Terminal Services Session(0 未知#20)\% Processor Time
\Terminal Services Session(0 未知#21)\% Processor Time
\Terminal Services Session(0 未知#22)\% Processor Time
\Terminal Services Session(0 未知#23)\% Processor Time
\Terminal Services Session(0 未知#24)\% Processor Time
\Terminal Services Session(0 未知#25)\% Processor Time
\Terminal Services Session(0 未知#26)\% Processor Time
\Terminal Services Session(0 未知#27)\% Processor Time
\Terminal Services Session(0 未知#28)\% Processor Time
\Terminal Services Session(0 未知#29)\% Processor Time
\Terminal Services Session(0 未知#30)\% Processor Time
\Terminal Services Session(0 未知#31)\% Processor Time
\Terminal Services Session(0 未知#32)\% Processor Time
\Terminal Services Session(0 未知#33)\% Processor Time
\Terminal Services Session(0 未知#34)\% Processor Time
\Terminal Services Session(0 未知#35)\% Processor Time
\Terminal Services Session(0 未知#36)\% Processor Time
\Terminal Services Session(0 未知#37)\% Processor Time
\Terminal Services Session(0 未知#38)\% Processor Time
\Terminal Services Session(0 未知#39)\% Processor Time
\Terminal Services Session(0 未知#40)\% Processor Time
\Terminal Services Session(0 未知#41)\% Processor Time
\Terminal Services Session(0 未知#42)\% Processor Time
\Terminal Services Session(0 未知#43)\% Processor Time
\Terminal Services Session(0 未知#44)\% Processor Time
\Terminal Services Session(0 未知#45)\% Processor Time
\Terminal Services Session(0 未知#46)\% Processor Time
\Terminal Services Session(0 未知#47)\% Processor Time
\Terminal Services Session(0 未知#48)\% Processor Time
\Terminal Services Session(0 未知#49)\% Processor Time
\Terminal Services Session(0 未知#50)\% Processor Time
\Terminal Services Session(0 未知#51)\% Processor Time
\Terminal Services Session(0 未知#52)\% Processor Time
\Terminal Services Session(0 未知#53)\% Processor Time
\Terminal Services Session(0 未知#54)\% Processor Time
\Terminal Services Session(0 未知)\% User Time
\Terminal Services Session(0 未知#1)\% User Time
\Terminal Services Session(0 未知#2)\% User Time
\Terminal Services Session(0 未知#3)\% User Time
\Terminal Services Session(0 未知#4)\% User Time
\Terminal Services Session(0 未知#5)\% User Time
\Terminal Services Session(0 未知#6)\% User Time
\Terminal Services Session(0 未知#7)\% User Time
\Terminal Services Session(0 未知#8)\% User Time
\Terminal Services Session(0 未知#9)\% User Time
\Terminal Services Session(0 未知#10)\% User Time
\Terminal Services Session(0 未知#11)\% User Time
\Terminal Services Session(0 未知#12)\% User Time
\Terminal Services Session(0 未知#13)\% User Time
\Terminal Services Session(0 未知#14)\% User Time
\Terminal Services Session(0 未知#15)\% User Time
\Terminal Services Session(0 未知#16)\% User Time
\Terminal Services Session(0 未知#17)\% User Time
\Terminal Services Session(0 未知#18)\% User Time
\Terminal Services Session(0 未知#19)\% User Time
\Terminal Services Session(0 未知#20)\% User Time
\Terminal Services Session(0 未知#21)\% User Time
\Terminal Services Session(0 未知#22)\% User Time
\Terminal Services Session(0 未知#23)\% User Time
\Terminal Services Session(0 未知#24)\% User Time
\Terminal Services Session(0 未知#25)\% User Time
\Terminal Services Session(0 未知#26)\% User Time
\Terminal Services Session(0 未知#27)\% User Time
\Terminal Services Session(0 未知#28)\% User Time
\Terminal Services Session(0 未知#29)\% User Time
\Terminal Services Session(0 未知#30)\% User Time
\Terminal Services Session(0 未知#31)\% User Time
\Terminal Services Session(0 未知#32)\% User Time
\Terminal Services Session(0 未知#33)\% User Time
\Terminal Services Session(0 未知#34)\% User Time
\Terminal Services Session(0 未知#35)\% User Time
\Terminal Services Session(0 未知#36)\% User Time
\Terminal Services Session(0 未知#37)\% User Time
\Terminal Services Session(0 未知#38)\% User Time
\Terminal Services Session(0 未知#39)\% User Time
\Terminal Services Session(0 未知#40)\% User Time
\Terminal Services Session(0 未知#41)\% User Time
\Terminal Services Session(0 未知#42)\% User Time
\Terminal Services Session(0 未知#43)\% User Time
\Terminal Services Session(0 未知#44)\% User Time
\Terminal Services Session(0 未知#45)\% User Time
\Terminal Services Session(0 未知#46)\% User Time
\Terminal Services Session(0 未知#47)\% User Time
\Terminal Services Session(0 未知#48)\% User Time
\Terminal Services Session(0 未知#49)\% User Time
\Terminal Services Session(0 未知#50)\% User Time
\Terminal Services Session(0 未知#51)\% User Time
\Terminal Services Session(0 未知#52)\% User Time
\Terminal Services Session(0 未知#53)\% User Time
\Terminal Services Session(0 未知#54)\% User Time
\Terminal Services Session(0 未知)\% Privileged Time
\Terminal Services Session(0 未知#1)\% Privileged Time
\Terminal Services Session(0 未知#2)\% Privileged Time
\Terminal Services Session(0 未知#3)\% Privileged Time
\Terminal Services Session(0 未知#4)\% Privileged Time
\Terminal Services Session(0 未知#5)\% Privileged Time
\Terminal Services Session(0 未知#6)\% Privileged Time
\Terminal Services Session(0 未知#7)\% Privileged Time
\Terminal Services Session(0 未知#8)\% Privileged Time
\Terminal Services Session(0 未知#9)\% Privileged Time
\Terminal Services Session(0 未知#10)\% Privileged Time
\Terminal Services Session(0 未知#11)\% Privileged Time
\Terminal Services Session(0 未知#12)\% Privileged Time
\Terminal Services Session(0 未知#13)\% Privileged Time
\Terminal Services Session(0 未知#14)\% Privileged Time
\Terminal Services Session(0 未知#15)\% Privileged Time
\Terminal Services Session(0 未知#16)\% Privileged Time
\Terminal Services Session(0 未知#17)\% Privileged Time
\Terminal Services Session(0 未知#18)\% Privileged Time
\Terminal Services Session(0 未知#19)\% Privileged Time
\Terminal Services Session(0 未知#20)\% Privileged Time
\Terminal Services Session(0 未知#21)\% Privileged Time
\Terminal Services Session(0 未知#22)\% Privileged Time
\Terminal Services Session(0 未知#23)\% Privileged Time
\Terminal Services Session(0 未知#24)\% Privileged Time
\Terminal Services Session(0 未知#25)\% Privileged Time
\Terminal Services Session(0 未知#26)\% Privileged Time
\Terminal Services Session(0 未知#27)\% Privileged Time
\Terminal Services Session(0 未知#28)\% Privileged Time
\Terminal Services Session(0 未知#29)\% Privileged Time
\Terminal Services Session(0 未知#30)\% Privileged Time
\Terminal Services Session(0 未知#31)\% Privileged Time
\Terminal Services Session(0 未知#32)\% Privileged Time
\Terminal Services Session(0 未知#33)\% Privileged Time
\Terminal Services Session(0 未知#34)\% Privileged Time
\Terminal Services Session(0 未知#35)\% Privileged Time
\Terminal Services Session(0 未知#36)\% Privileged Time
\Terminal Services Session(0 未知#37)\% Privileged Time
\Terminal Services Session(0 未知#38)\% Privileged Time
\Terminal Services Session(0 未知#39)\% Privileged Time
\Terminal Services Session(0 未知#40)\% Privileged Time
\Terminal Services Session(0 未知#41)\% Privileged Time
\Terminal Services Session(0 未知#42)\% Privileged Time
\Terminal Services Session(0 未知#43)\% Privileged Time
\Terminal Services Session(0 未知#44)\% Privileged Time
\Terminal Services Session(0 未知#45)\% Privileged Time
\Terminal Services Session(0 未知#46)\% Privileged Time
\Terminal Services Session(0 未知#47)\% Privileged Time
\Terminal Services Session(0 未知#48)\% Privileged Time
\Terminal Services Session(0 未知#49)\% Privileged Time
\Terminal Services Session(0 未知#50)\% Privileged Time
\Terminal Services Session(0 未知#51)\% Privileged Time
\Terminal Services Session(0 未知#52)\% Privileged Time
\Terminal Services Session(0 未知#53)\% Privileged Time
\Terminal Services Session(0 未知#54)\% Privileged Time
\Terminal Services Session(0 未知)\Virtual Bytes Peak
\Terminal Services Session(0 未知#1)\Virtual Bytes Peak
\Terminal Services Session(0 未知#2)\Virtual Bytes Peak
\Terminal Services Session(0 未知#3)\Virtual Bytes Peak
\Terminal Services Session(0 未知#4)\Virtual Bytes Peak
\Terminal Services Session(0 未知#5)\Virtual Bytes Peak
\Terminal Services Session(0 未知#6)\Virtual Bytes Peak
\Terminal Services Session(0 未知#7)\Virtual Bytes Peak
\Terminal Services Session(0 未知#8)\Virtual Bytes Peak
\Terminal Services Session(0 未知#9)\Virtual Bytes Peak
\Terminal Services Session(0 未知#10)\Virtual Bytes Peak
\Terminal Services Session(0 未知#11)\Virtual Bytes Peak
\Terminal Services Session(0 未知#12)\Virtual Bytes Peak
\Terminal Services Session(0 未知#13)\Virtual Bytes Peak
\Terminal Services Session(0 未知#14)\Virtual Bytes Peak
\Terminal Services Session(0 未知#15)\Virtual Bytes Peak
\Terminal Services Session(0 未知#16)\Virtual Bytes Peak
\Terminal Services Session(0 未知#17)\Virtual Bytes Peak
\Terminal Services Session(0 未知#18)\Virtual Bytes Peak
\Terminal Services Session(0 未知#19)\Virtual Bytes Peak
\Terminal Services Session(0 未知#20)\Virtual Bytes Peak
\Terminal Services Session(0 未知#21)\Virtual Bytes Peak
\Terminal Services Session(0 未知#22)\Virtual Bytes Peak
\Terminal Services Session(0 未知#23)\Virtual Bytes Peak
\Terminal Services Session(0 未知#24)\Virtual Bytes Peak
\Terminal Services Session(0 未知#25)\Virtual Bytes Peak
\Terminal Services Session(0 未知#26)\Virtual Bytes Peak
\Terminal Services Session(0 未知#27)\Virtual Bytes Peak
\Terminal Services Session(0 未知#28)\Virtual Bytes Peak
\Terminal Services Session(0 未知#29)\Virtual Bytes Peak
\Terminal Services Session(0 未知#30)\Virtual Bytes Peak
\Terminal Services Session(0 未知#31)\Virtual Bytes Peak
\Terminal Services Session(0 未知#32)\Virtual Bytes Peak
\Terminal Services Session(0 未知#33)\Virtual Bytes Peak
\Terminal Services Session(0 未知#34)\Virtual Bytes Peak
\Terminal Services Session(0 未知#35)\Virtual Bytes Peak
\Terminal Services Session(0 未知#36)\Virtual Bytes Peak
\Terminal Services Session(0 未知#37)\Virtual Bytes Peak
\Terminal Services Session(0 未知#38)\Virtual Bytes Peak
\Terminal Services Session(0 未知#39)\Virtual Bytes Peak
\Terminal Services Session(0 未知#40)\Virtual Bytes Peak
\Terminal Services Session(0 未知#41)\Virtual Bytes Peak
\Terminal Services Session(0 未知#42)\Virtual Bytes Peak
\Terminal Services Session(0 未知#43)\Virtual Bytes Peak
\Terminal Services Session(0 未知#44)\Virtual Bytes Peak
\Terminal Services Session(0 未知#45)\Virtual Bytes Peak
\Terminal Services Session(0 未知#46)\Virtual Bytes Peak
\Terminal Services Session(0 未知#47)\Virtual Bytes Peak
\Terminal Services Session(0 未知#48)\Virtual Bytes Peak
\Terminal Services Session(0 未知#49)\Virtual Bytes Peak
\Terminal Services Session(0 未知#50)\Virtual Bytes Peak
\Terminal Services Session(0 未知#51)\Virtual Bytes Peak
\Terminal Services Session(0 未知#52)\Virtual Bytes Peak
\Terminal Services Session(0 未知#53)\Virtual Bytes Peak
\Terminal Services Session(0 未知#54)\Virtual Bytes Peak
\Terminal Services Session(0 未知)\Virtual Bytes
\Terminal Services Session(0 未知#1)\Virtual Bytes
\Terminal Services Session(0 未知#2)\Virtual Bytes
\Terminal Services Session(0 未知#3)\Virtual Bytes
\Terminal Services Session(0 未知#4)\Virtual Bytes
\Terminal Services Session(0 未知#5)\Virtual Bytes
\Terminal Services Session(0 未知#6)\Virtual Bytes
\Terminal Services Session(0 未知#7)\Virtual Bytes
\Terminal Services Session(0 未知#8)\Virtual Bytes
\Terminal Services Session(0 未知#9)\Virtual Bytes
\Terminal Services Session(0 未知#10)\Virtual Bytes
\Terminal Services Session(0 未知#11)\Virtual Bytes
\Terminal Services Session(0 未知#12)\Virtual Bytes
\Terminal Services Session(0 未知#13)\Virtual Bytes
\Terminal Services Session(0 未知#14)\Virtual Bytes
\Terminal Services Session(0 未知#15)\Virtual Bytes
\Terminal Services Session(0 未知#16)\Virtual Bytes
\Terminal Services Session(0 未知#17)\Virtual Bytes
\Terminal Services Session(0 未知#18)\Virtual Bytes
\Terminal Services Session(0 未知#19)\Virtual Bytes
\Terminal Services Session(0 未知#20)\Virtual Bytes
\Terminal Services Session(0 未知#21)\Virtual Bytes
\Terminal Services Session(0 未知#22)\Virtual Bytes
\Terminal Services Session(0 未知#23)\Virtual Bytes
\Terminal Services Session(0 未知#24)\Virtual Bytes
\Terminal Services Session(0 未知#25)\Virtual Bytes
\Terminal Services Session(0 未知#26)\Virtual Bytes
\Terminal Services Session(0 未知#27)\Virtual Bytes
\Terminal Services Session(0 未知#28)\Virtual Bytes
\Terminal Services Session(0 未知#29)\Virtual Bytes
\Terminal Services Session(0 未知#30)\Virtual Bytes
\Terminal Services Session(0 未知#31)\Virtual Bytes
\Terminal Services Session(0 未知#32)\Virtual Bytes
\Terminal Services Session(0 未知#33)\Virtual Bytes
\Terminal Services Session(0 未知#34)\Virtual Bytes
\Terminal Services Session(0 未知#35)\Virtual Bytes
\Terminal Services Session(0 未知#36)\Virtual Bytes
\Terminal Services Session(0 未知#37)\Virtual Bytes
\Terminal Services Session(0 未知#38)\Virtual Bytes
\Terminal Services Session(0 未知#39)\Virtual Bytes
\Terminal Services Session(0 未知#40)\Virtual Bytes
\Terminal Services Session(0 未知#41)\Virtual Bytes
\Terminal Services Session(0 未知#42)\Virtual Bytes
\Terminal Services Session(0 未知#43)\Virtual Bytes
\Terminal Services Session(0 未知#44)\Virtual Bytes
\Terminal Services Session(0 未知#45)\Virtual Bytes
\Terminal Services Session(0 未知#46)\Virtual Bytes
\Terminal Services Session(0 未知#47)\Virtual Bytes
\Terminal Services Session(0 未知#48)\Virtual Bytes
\Terminal Services Session(0 未知#49)\Virtual Bytes
\Terminal Services Session(0 未知#50)\Virtual Bytes
\Terminal Services Session(0 未知#51)\Virtual Bytes
\Terminal Services Session(0 未知#52)\Virtual Bytes
\Terminal Services Session(0 未知#53)\Virtual Bytes
\Terminal Services Session(0 未知#54)\Virtual Bytes
\Terminal Services Session(0 未知)\Page Faults/sec
\Terminal Services Session(0 未知#1)\Page Faults/sec
\Terminal Services Session(0 未知#2)\Page Faults/sec
\Terminal Services Session(0 未知#3)\Page Faults/sec
\Terminal Services Session(0 未知#4)\Page Faults/sec
\Terminal Services Session(0 未知#5)\Page Faults/sec
\Terminal Services Session(0 未知#6)\Page Faults/sec
\Terminal Services Session(0 未知#7)\Page Faults/sec
\Terminal Services Session(0 未知#8)\Page Faults/sec
\Terminal Services Session(0 未知#9)\Page Faults/sec
\Terminal Services Session(0 未知#10)\Page Faults/sec
\Terminal Services Session(0 未知#11)\Page Faults/sec
\Terminal Services Session(0 未知#12)\Page Faults/sec
\Terminal Services Session(0 未知#13)\Page Faults/sec
\Terminal Services Session(0 未知#14)\Page Faults/sec
\Terminal Services Session(0 未知#15)\Page Faults/sec
\Terminal Services Session(0 未知#16)\Page Faults/sec
\Terminal Services Session(0 未知#17)\Page Faults/sec
\Terminal Services Session(0 未知#18)\Page Faults/sec
\Terminal Services Session(0 未知#19)\Page Faults/sec
\Terminal Services Session(0 未知#20)\Page Faults/sec
\Terminal Services Session(0 未知#21)\Page Faults/sec
\Terminal Services Session(0 未知#22)\Page Faults/sec
\Terminal Services Session(0 未知#23)\Page Faults/sec
\Terminal Services Session(0 未知#24)\Page Faults/sec
\Terminal Services Session(0 未知#25)\Page Faults/sec
\Terminal Services Session(0 未知#26)\Page Faults/sec
\Terminal Services Session(0 未知#27)\Page Faults/sec
\Terminal Services Session(0 未知#28)\Page Faults/sec
\Terminal Services Session(0 未知#29)\Page Faults/sec
\Terminal Services Session(0 未知#30)\Page Faults/sec
\Terminal Services Session(0 未知#31)\Page Faults/sec
\Terminal Services Session(0 未知#32)\Page Faults/sec
\Terminal Services Session(0 未知#33)\Page Faults/sec
\Terminal Services Session(0 未知#34)\Page Faults/sec
\Terminal Services Session(0 未知#35)\Page Faults/sec
\Terminal Services Session(0 未知#36)\Page Faults/sec
\Terminal Services Session(0 未知#37)\Page Faults/sec
\Terminal Services Session(0 未知#38)\Page Faults/sec
\Terminal Services Session(0 未知#39)\Page Faults/sec
\Terminal Services Session(0 未知#40)\Page Faults/sec
\Terminal Services Session(0 未知#41)\Page Faults/sec
\Terminal Services Session(0 未知#42)\Page Faults/sec
\Terminal Services Session(0 未知#43)\Page Faults/sec
\Terminal Services Session(0 未知#44)\Page Faults/sec
\Terminal Services Session(0 未知#45)\Page Faults/sec
\Terminal Services Session(0 未知#46)\Page Faults/sec
\Terminal Services Session(0 未知#47)\Page Faults/sec
\Terminal Services Session(0 未知#48)\Page Faults/sec
\Terminal Services Session(0 未知#49)\Page Faults/sec
\Terminal Services Session(0 未知#50)\Page Faults/sec
\Terminal Services Session(0 未知#51)\Page Faults/sec
\Terminal Services Session(0 未知#52)\Page Faults/sec
\Terminal Services Session(0 未知#53)\Page Faults/sec
\Terminal Services Session(0 未知#54)\Page Faults/sec
\Terminal Services Session(0 未知)\Working Set Peak
\Terminal Services Session(0 未知#1)\Working Set Peak
\Terminal Services Session(0 未知#2)\Working Set Peak
\Terminal Services Session(0 未知#3)\Working Set Peak
\Terminal Services Session(0 未知#4)\Working Set Peak
\Terminal Services Session(0 未知#5)\Working Set Peak
\Terminal Services Session(0 未知#6)\Working Set Peak
\Terminal Services Session(0 未知#7)\Working Set Peak
\Terminal Services Session(0 未知#8)\Working Set Peak
\Terminal Services Session(0 未知#9)\Working Set Peak
\Terminal Services Session(0 未知#10)\Working Set Peak
\Terminal Services Session(0 未知#11)\Working Set Peak
\Terminal Services Session(0 未知#12)\Working Set Peak
\Terminal Services Session(0 未知#13)\Working Set Peak
\Terminal Services Session(0 未知#14)\Working Set Peak
\Terminal Services Session(0 未知#15)\Working Set Peak
\Terminal Services Session(0 未知#16)\Working Set Peak
\Terminal Services Session(0 未知#17)\Working Set Peak
\Terminal Services Session(0 未知#18)\Working Set Peak
\Terminal Services Session(0 未知#19)\Working Set Peak
\Terminal Services Session(0 未知#20)\Working Set Peak
\Terminal Services Session(0 未知#21)\Working Set Peak
\Terminal Services Session(0 未知#22)\Working Set Peak
\Terminal Services Session(0 未知#23)\Working Set Peak
\Terminal Services Session(0 未知#24)\Working Set Peak
\Terminal Services Session(0 未知#25)\Working Set Peak
\Terminal Services Session(0 未知#26)\Working Set Peak
\Terminal Services Session(0 未知#27)\Working Set Peak
\Terminal Services Session(0 未知#28)\Working Set Peak
\Terminal Services Session(0 未知#29)\Working Set Peak
\Terminal Services Session(0 未知#30)\Working Set Peak
\Terminal Services Session(0 未知#31)\Working Set Peak
\Terminal Services Session(0 未知#32)\Working Set Peak
\Terminal Services Session(0 未知#33)\Working Set Peak
\Terminal Services Session(0 未知#34)\Working Set Peak
\Terminal Services Session(0 未知#35)\Working Set Peak
\Terminal Services Session(0 未知#36)\Working Set Peak
\Terminal Services Session(0 未知#37)\Working Set Peak
\Terminal Services Session(0 未知#38)\Working Set Peak
\Terminal Services Session(0 未知#39)\Working Set Peak
\Terminal Services Session(0 未知#40)\Working Set Peak
\Terminal Services Session(0 未知#41)\Working Set Peak
\Terminal Services Session(0 未知#42)\Working Set Peak
\Terminal Services Session(0 未知#43)\Working Set Peak
\Terminal Services Session(0 未知#44)\Working Set Peak
\Terminal Services Session(0 未知#45)\Working Set Peak
\Terminal Services Session(0 未知#46)\Working Set Peak
\Terminal Services Session(0 未知#47)\Working Set Peak
\Terminal Services Session(0 未知#48)\Working Set Peak
\Terminal Services Session(0 未知#49)\Working Set Peak
\Terminal Services Session(0 未知#50)\Working Set Peak
\Terminal Services Session(0 未知#51)\Working Set Peak
\Terminal Services Session(0 未知#52)\Working Set Peak
\Terminal Services Session(0 未知#53)\Working Set Peak
\Terminal Services Session(0 未知#54)\Working Set Peak
\Terminal Services Session(0 未知)\Working Set
\Terminal Services Session(0 未知#1)\Working Set
\Terminal Services Session(0 未知#2)\Working Set
\Terminal Services Session(0 未知#3)\Working Set
\Terminal Services Session(0 未知#4)\Working Set
\Terminal Services Session(0 未知#5)\Working Set
\Terminal Services Session(0 未知#6)\Working Set
\Terminal Services Session(0 未知#7)\Working Set
\Terminal Services Session(0 未知#8)\Working Set
\Terminal Services Session(0 未知#9)\Working Set
\Terminal Services Session(0 未知#10)\Working Set
\Terminal Services Session(0 未知#11)\Working Set
\Terminal Services Session(0 未知#12)\Working Set
\Terminal Services Session(0 未知#13)\Working Set
\Terminal Services Session(0 未知#14)\Working Set
\Terminal Services Session(0 未知#15)\Working Set
\Terminal Services Session(0 未知#16)\Working Set
\Terminal Services Session(0 未知#17)\Working Set
\Terminal Services Session(0 未知#18)\Working Set
\Terminal Services Session(0 未知#19)\Working Set
\Terminal Services Session(0 未知#20)\Working Set
\Terminal Services Session(0 未知#21)\Working Set
\Terminal Services Session(0 未知#22)\Working Set
\Terminal Services Session(0 未知#23)\Working Set
\Terminal Services Session(0 未知#24)\Working Set
\Terminal Services Session(0 未知#25)\Working Set
\Terminal Services Session(0 未知#26)\Working Set
\Terminal Services Session(0 未知#27)\Working Set
\Terminal Services Session(0 未知#28)\Working Set
\Terminal Services Session(0 未知#29)\Working Set
\Terminal Services Session(0 未知#30)\Working Set
\Terminal Services Session(0 未知#31)\Working Set
\Terminal Services Session(0 未知#32)\Working Set
\Terminal Services Session(0 未知#33)\Working Set
\Terminal Services Session(0 未知#34)\Working Set
\Terminal Services Session(0 未知#35)\Working Set
\Terminal Services Session(0 未知#36)\Working Set
\Terminal Services Session(0 未知#37)\Working Set
\Terminal Services Session(0 未知#38)\Working Set
\Terminal Services Session(0 未知#39)\Working Set
\Terminal Services Session(0 未知#40)\Working Set
\Terminal Services Session(0 未知#41)\Working Set
\Terminal Services Session(0 未知#42)\Working Set
\Terminal Services Session(0 未知#43)\Working Set
\Terminal Services Session(0 未知#44)\Working Set
\Terminal Services Session(0 未知#45)\Working Set
\Terminal Services Session(0 未知#46)\Working Set
\Terminal Services Session(0 未知#47)\Working Set
\Terminal Services Session(0 未知#48)\Working Set
\Terminal Services Session(0 未知#49)\Working Set
\Terminal Services Session(0 未知#50)\Working Set
\Terminal Services Session(0 未知#51)\Working Set
\Terminal Services Session(0 未知#52)\Working Set
\Terminal Services Session(0 未知#53)\Working Set
\Terminal Services Session(0 未知#54)\Working Set
\Terminal Services Session(0 未知)\Page File Bytes Peak
\Terminal Services Session(0 未知#1)\Page File Bytes Peak
\Terminal Services Session(0 未知#2)\Page File Bytes Peak
\Terminal Services Session(0 未知#3)\Page File Bytes Peak
\Terminal Services Session(0 未知#4)\Page File Bytes Peak
\Terminal Services Session(0 未知#5)\Page File Bytes Peak
\Terminal Services Session(0 未知#6)\Page File Bytes Peak
\Terminal Services Session(0 未知#7)\Page File Bytes Peak
\Terminal Services Session(0 未知#8)\Page File Bytes Peak
\Terminal Services Session(0 未知#9)\Page File Bytes Peak
\Terminal Services Session(0 未知#10)\Page File Bytes Peak
\Terminal Services Session(0 未知#11)\Page File Bytes Peak
\Terminal Services Session(0 未知#12)\Page File Bytes Peak
\Terminal Services Session(0 未知#13)\Page File Bytes Peak
\Terminal Services Session(0 未知#14)\Page File Bytes Peak
\Terminal Services Session(0 未知#15)\Page File Bytes Peak
\Terminal Services Session(0 未知#16)\Page File Bytes Peak
\Terminal Services Session(0 未知#17)\Page File Bytes Peak
\Terminal Services Session(0 未知#18)\Page File Bytes Peak
\Terminal Services Session(0 未知#19)\Page File Bytes Peak
\Terminal Services Session(0 未知#20)\Page File Bytes Peak
\Terminal Services Session(0 未知#21)\Page File Bytes Peak
\Terminal Services Session(0 未知#22)\Page File Bytes Peak
\Terminal Services Session(0 未知#23)\Page File Bytes Peak
\Terminal Services Session(0 未知#24)\Page File Bytes Peak
\Terminal Services Session(0 未知#25)\Page File Bytes Peak
\Terminal Services Session(0 未知#26)\Page File Bytes Peak
\Terminal Services Session(0 未知#27)\Page File Bytes Peak
\Terminal Services Session(0 未知#28)\Page File Bytes Peak
\Terminal Services Session(0 未知#29)\Page File Bytes Peak
\Terminal Services Session(0 未知#30)\Page File Bytes Peak
\Terminal Services Session(0 未知#31)\Page File Bytes Peak
\Terminal Services Session(0 未知#32)\Page File Bytes Peak
\Terminal Services Session(0 未知#33)\Page File Bytes Peak
\Terminal Services Session(0 未知#34)\Page File Bytes Peak
\Terminal Services Session(0 未知#35)\Page File Bytes Peak
\Terminal Services Session(0 未知#36)\Page File Bytes Peak
\Terminal Services Session(0 未知#37)\Page File Bytes Peak
\Terminal Services Session(0 未知#38)\Page File Bytes Peak
\Terminal Services Session(0 未知#39)\Page File Bytes Peak
\Terminal Services Session(0 未知#40)\Page File Bytes Peak
\Terminal Services Session(0 未知#41)\Page File Bytes Peak
\Terminal Services Session(0 未知#42)\Page File Bytes Peak
\Terminal Services Session(0 未知#43)\Page File Bytes Peak
\Terminal Services Session(0 未知#44)\Page File Bytes Peak
\Terminal Services Session(0 未知#45)\Page File Bytes Peak
\Terminal Services Session(0 未知#46)\Page File Bytes Peak
\Terminal Services Session(0 未知#47)\Page File Bytes Peak
\Terminal Services Session(0 未知#48)\Page File Bytes Peak
\Terminal Services Session(0 未知#49)\Page File Bytes Peak
\Terminal Services Session(0 未知#50)\Page File Bytes Peak
\Terminal Services Session(0 未知#51)\Page File Bytes Peak
\Terminal Services Session(0 未知#52)\Page File Bytes Peak
\Terminal Services Session(0 未知#53)\Page File Bytes Peak
\Terminal Services Session(0 未知#54)\Page File Bytes Peak
\Terminal Services Session(0 未知)\Page File Bytes
\Terminal Services Session(0 未知#1)\Page File Bytes
\Terminal Services Session(0 未知#2)\Page File Bytes
\Terminal Services Session(0 未知#3)\Page File Bytes
\Terminal Services Session(0 未知#4)\Page File Bytes
\Terminal Services Session(0 未知#5)\Page File Bytes
\Terminal Services Session(0 未知#6)\Page File Bytes
\Terminal Services Session(0 未知#7)\Page File Bytes
\Terminal Services Session(0 未知#8)\Page File Bytes
\Terminal Services Session(0 未知#9)\Page File Bytes
\Terminal Services Session(0 未知#10)\Page File Bytes
\Terminal Services Session(0 未知#11)\Page File Bytes
\Terminal Services Session(0 未知#12)\Page File Bytes
\Terminal Services Session(0 未知#13)\Page File Bytes
\Terminal Services Session(0 未知#14)\Page File Bytes
\Terminal Services Session(0 未知#15)\Page File Bytes
\Terminal Services Session(0 未知#16)\Page File Bytes
\Terminal Services Session(0 未知#17)\Page File Bytes
\Terminal Services Session(0 未知#18)\Page File Bytes
\Terminal Services Session(0 未知#19)\Page File Bytes
\Terminal Services Session(0 未知#20)\Page File Bytes
\Terminal Services Session(0 未知#21)\Page File Bytes
\Terminal Services Session(0 未知#22)\Page File Bytes
\Terminal Services Session(0 未知#23)\Page File Bytes
\Terminal Services Session(0 未知#24)\Page File Bytes
\Terminal Services Session(0 未知#25)\Page File Bytes
\Terminal Services Session(0 未知#26)\Page File Bytes
\Terminal Services Session(0 未知#27)\Page File Bytes
\Terminal Services Session(0 未知#28)\Page File Bytes
\Terminal Services Session(0 未知#29)\Page File Bytes
\Terminal Services Session(0 未知#30)\Page File Bytes
\Terminal Services Session(0 未知#31)\Page File Bytes
\Terminal Services Session(0 未知#32)\Page File Bytes
\Terminal Services Session(0 未知#33)\Page File Bytes
\Terminal Services Session(0 未知#34)\Page File Bytes
\Terminal Services Session(0 未知#35)\Page File Bytes
\Terminal Services Session(0 未知#36)\Page File Bytes
\Terminal Services Session(0 未知#37)\Page File Bytes
\Terminal Services Session(0 未知#38)\Page File Bytes
\Terminal Services Session(0 未知#39)\Page File Bytes
\Terminal Services Session(0 未知#40)\Page File Bytes
\Terminal Services Session(0 未知#41)\Page File Bytes
\Terminal Services Session(0 未知#42)\Page File Bytes
\Terminal Services Session(0 未知#43)\Page File Bytes
\Terminal Services Session(0 未知#44)\Page File Bytes
\Terminal Services Session(0 未知#45)\Page File Bytes
\Terminal Services Session(0 未知#46)\Page File Bytes
\Terminal Services Session(0 未知#47)\Page File Bytes
\Terminal Services Session(0 未知#48)\Page File Bytes
\Terminal Services Session(0 未知#49)\Page File Bytes
\Terminal Services Session(0 未知#50)\Page File Bytes
\Terminal Services Session(0 未知#51)\Page File Bytes
\Terminal Services Session(0 未知#52)\Page File Bytes
\Terminal Services Session(0 未知#53)\Page File Bytes
\Terminal Services Session(0 未知#54)\Page File Bytes
\Terminal Services Session(0 未知)\Private Bytes
\Terminal Services Session(0 未知#1)\Private Bytes
\Terminal Services Session(0 未知#2)\Private Bytes
\Terminal Services Session(0 未知#3)\Private Bytes
\Terminal Services Session(0 未知#4)\Private Bytes
\Terminal Services Session(0 未知#5)\Private Bytes
\Terminal Services Session(0 未知#6)\Private Bytes
\Terminal Services Session(0 未知#7)\Private Bytes
\Terminal Services Session(0 未知#8)\Private Bytes
\Terminal Services Session(0 未知#9)\Private Bytes
\Terminal Services Session(0 未知#10)\Private Bytes
\Terminal Services Session(0 未知#11)\Private Bytes
\Terminal Services Session(0 未知#12)\Private Bytes
\Terminal Services Session(0 未知#13)\Private Bytes
\Terminal Services Session(0 未知#14)\Private Bytes
\Terminal Services Session(0 未知#15)\Private Bytes
\Terminal Services Session(0 未知#16)\Private Bytes
\Terminal Services Session(0 未知#17)\Private Bytes
\Terminal Services Session(0 未知#18)\Private Bytes
\Terminal Services Session(0 未知#19)\Private Bytes
\Terminal Services Session(0 未知#20)\Private Bytes
\Terminal Services Session(0 未知#21)\Private Bytes
\Terminal Services Session(0 未知#22)\Private Bytes
\Terminal Services Session(0 未知#23)\Private Bytes
\Terminal Services Session(0 未知#24)\Private Bytes
\Terminal Services Session(0 未知#25)\Private Bytes
\Terminal Services Session(0 未知#26)\Private Bytes
\Terminal Services Session(0 未知#27)\Private Bytes
\Terminal Services Session(0 未知#28)\Private Bytes
\Terminal Services Session(0 未知#29)\Private Bytes
\Terminal Services Session(0 未知#30)\Private Bytes
\Terminal Services Session(0 未知#31)\Private Bytes
\Terminal Services Session(0 未知#32)\Private Bytes
\Terminal Services Session(0 未知#33)\Private Bytes
\Terminal Services Session(0 未知#34)\Private Bytes
\Terminal Services Session(0 未知#35)\Private Bytes
\Terminal Services Session(0 未知#36)\Private Bytes
\Terminal Services Session(0 未知#37)\Private Bytes
\Terminal Services Session(0 未知#38)\Private Bytes
\Terminal Services Session(0 未知#39)\Private Bytes
\Terminal Services Session(0 未知#40)\Private Bytes
\Terminal Services Session(0 未知#41)\Private Bytes
\Terminal Services Session(0 未知#42)\Private Bytes
\Terminal Services Session(0 未知#43)\Private Bytes
\Terminal Services Session(0 未知#44)\Private Bytes
\Terminal Services Session(0 未知#45)\Private Bytes
\Terminal Services Session(0 未知#46)\Private Bytes
\Terminal Services Session(0 未知#47)\Private Bytes
\Terminal Services Session(0 未知#48)\Private Bytes
\Terminal Services Session(0 未知#49)\Private Bytes
\Terminal Services Session(0 未知#50)\Private Bytes
\Terminal Services Session(0 未知#51)\Private Bytes
\Terminal Services Session(0 未知#52)\Private Bytes
\Terminal Services Session(0 未知#53)\Private Bytes
\Terminal Services Session(0 未知#54)\Private Bytes
\Terminal Services Session(0 未知)\Thread Count
\Terminal Services Session(0 未知#1)\Thread Count
\Terminal Services Session(0 未知#2)\Thread Count
\Terminal Services Session(0 未知#3)\Thread Count
\Terminal Services Session(0 未知#4)\Thread Count
\Terminal Services Session(0 未知#5)\Thread Count
\Terminal Services Session(0 未知#6)\Thread Count
\Terminal Services Session(0 未知#7)\Thread Count
\Terminal Services Session(0 未知#8)\Thread Count
\Terminal Services Session(0 未知#9)\Thread Count
\Terminal Services Session(0 未知#10)\Thread Count
\Terminal Services Session(0 未知#11)\Thread Count
\Terminal Services Session(0 未知#12)\Thread Count
\Terminal Services Session(0 未知#13)\Thread Count
\Terminal Services Session(0 未知#14)\Thread Count
\Terminal Services Session(0 未知#15)\Thread Count
\Terminal Services Session(0 未知#16)\Thread Count
\Terminal Services Session(0 未知#17)\Thread Count
\Terminal Services Session(0 未知#18)\Thread Count
\Terminal Services Session(0 未知#19)\Thread Count
\Terminal Services Session(0 未知#20)\Thread Count
\Terminal Services Session(0 未知#21)\Thread Count
\Terminal Services Session(0 未知#22)\Thread Count
\Terminal Services Session(0 未知#23)\Thread Count
\Terminal Services Session(0 未知#24)\Thread Count
\Terminal Services Session(0 未知#25)\Thread Count
\Terminal Services Session(0 未知#26)\Thread Count
\Terminal Services Session(0 未知#27)\Thread Count
\Terminal Services Session(0 未知#28)\Thread Count
\Terminal Services Session(0 未知#29)\Thread Count
\Terminal Services Session(0 未知#30)\Thread Count
\Terminal Services Session(0 未知#31)\Thread Count
\Terminal Services Session(0 未知#32)\Thread Count
\Terminal Services Session(0 未知#33)\Thread Count
\Terminal Services Session(0 未知#34)\Thread Count
\Terminal Services Session(0 未知#35)\Thread Count
\Terminal Services Session(0 未知#36)\Thread Count
\Terminal Services Session(0 未知#37)\Thread Count
\Terminal Services Session(0 未知#38)\Thread Count
\Terminal Services Session(0 未知#39)\Thread Count
\Terminal Services Session(0 未知#40)\Thread Count
\Terminal Services Session(0 未知#41)\Thread Count
\Terminal Services Session(0 未知#42)\Thread Count
\Terminal Services Session(0 未知#43)\Thread Count
\Terminal Services Session(0 未知#44)\Thread Count
\Terminal Services Session(0 未知#45)\Thread Count
\Terminal Services Session(0 未知#46)\Thread Count
\Terminal Services Session(0 未知#47)\Thread Count
\Terminal Services Session(0 未知#48)\Thread Count
\Terminal Services Session(0 未知#49)\Thread Count
\Terminal Services Session(0 未知#50)\Thread Count
\Terminal Services Session(0 未知#51)\Thread Count
\Terminal Services Session(0 未知#52)\Thread Count
\Terminal Services Session(0 未知#53)\Thread Count
\Terminal Services Session(0 未知#54)\Thread Count
\Terminal Services Session(0 未知)\Pool Paged Bytes
\Terminal Services Session(0 未知#1)\Pool Paged Bytes
\Terminal Services Session(0 未知#2)\Pool Paged Bytes
\Terminal Services Session(0 未知#3)\Pool Paged Bytes
\Terminal Services Session(0 未知#4)\Pool Paged Bytes
\Terminal Services Session(0 未知#5)\Pool Paged Bytes
\Terminal Services Session(0 未知#6)\Pool Paged Bytes
\Terminal Services Session(0 未知#7)\Pool Paged Bytes
\Terminal Services Session(0 未知#8)\Pool Paged Bytes
\Terminal Services Session(0 未知#9)\Pool Paged Bytes
\Terminal Services Session(0 未知#10)\Pool Paged Bytes
\Terminal Services Session(0 未知#11)\Pool Paged Bytes
\Terminal Services Session(0 未知#12)\Pool Paged Bytes
\Terminal Services Session(0 未知#13)\Pool Paged Bytes
\Terminal Services Session(0 未知#14)\Pool Paged Bytes
\Terminal Services Session(0 未知#15)\Pool Paged Bytes
\Terminal Services Session(0 未知#16)\Pool Paged Bytes
\Terminal Services Session(0 未知#17)\Pool Paged Bytes
\Terminal Services Session(0 未知#18)\Pool Paged Bytes
\Terminal Services Session(0 未知#19)\Pool Paged Bytes
\Terminal Services Session(0 未知#20)\Pool Paged Bytes
\Terminal Services Session(0 未知#21)\Pool Paged Bytes
\Terminal Services Session(0 未知#22)\Pool Paged Bytes
\Terminal Services Session(0 未知#23)\Pool Paged Bytes
\Terminal Services Session(0 未知#24)\Pool Paged Bytes
\Terminal Services Session(0 未知#25)\Pool Paged Bytes
\Terminal Services Session(0 未知#26)\Pool Paged Bytes
\Terminal Services Session(0 未知#27)\Pool Paged Bytes
\Terminal Services Session(0 未知#28)\Pool Paged Bytes
\Terminal Services Session(0 未知#29)\Pool Paged Bytes
\Terminal Services Session(0 未知#30)\Pool Paged Bytes
\Terminal Services Session(0 未知#31)\Pool Paged Bytes
\Terminal Services Session(0 未知#32)\Pool Paged Bytes
\Terminal Services Session(0 未知#33)\Pool Paged Bytes
\Terminal Services Session(0 未知#34)\Pool Paged Bytes
\Terminal Services Session(0 未知#35)\Pool Paged Bytes
\Terminal Services Session(0 未知#36)\Pool Paged Bytes
\Terminal Services Session(0 未知#37)\Pool Paged Bytes
\Terminal Services Session(0 未知#38)\Pool Paged Bytes
\Terminal Services Session(0 未知#39)\Pool Paged Bytes
\Terminal Services Session(0 未知#40)\Pool Paged Bytes
\Terminal Services Session(0 未知#41)\Pool Paged Bytes
\Terminal Services Session(0 未知#42)\Pool Paged Bytes
\Terminal Services Session(0 未知#43)\Pool Paged Bytes
\Terminal Services Session(0 未知#44)\Pool Paged Bytes
\Terminal Services Session(0 未知#45)\Pool Paged Bytes
\Terminal Services Session(0 未知#46)\Pool Paged Bytes
\Terminal Services Session(0 未知#47)\Pool Paged Bytes
\Terminal Services Session(0 未知#48)\Pool Paged Bytes
\Terminal Services Session(0 未知#49)\Pool Paged Bytes
\Terminal Services Session(0 未知#50)\Pool Paged Bytes
\Terminal Services Session(0 未知#51)\Pool Paged Bytes
\Terminal Services Session(0 未知#52)\Pool Paged Bytes
\Terminal Services Session(0 未知#53)\Pool Paged Bytes
\Terminal Services Session(0 未知#54)\Pool Paged Bytes
\Terminal Services Session(0 未知)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#1)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#2)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#3)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#4)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#5)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#6)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#7)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#8)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#9)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#10)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#11)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#12)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#13)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#14)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#15)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#16)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#17)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#18)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#19)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#20)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#21)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#22)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#23)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#24)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#25)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#26)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#27)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#28)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#29)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#30)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#31)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#32)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#33)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#34)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#35)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#36)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#37)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#38)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#39)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#40)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#41)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#42)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#43)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#44)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#45)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#46)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#47)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#48)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#49)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#50)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#51)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#52)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#53)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知#54)\Pool Nonpaged Bytes
\Terminal Services Session(0 未知)\Handle Count
\Terminal Services Session(0 未知#1)\Handle Count
\Terminal Services Session(0 未知#2)\Handle Count
\Terminal Services Session(0 未知#3)\Handle Count
\Terminal Services Session(0 未知#4)\Handle Count
\Terminal Services Session(0 未知#5)\Handle Count
\Terminal Services Session(0 未知#6)\Handle Count
\Terminal Services Session(0 未知#7)\Handle Count
\Terminal Services Session(0 未知#8)\Handle Count
\Terminal Services Session(0 未知#9)\Handle Count
\Terminal Services Session(0 未知#10)\Handle Count
\Terminal Services Session(0 未知#11)\Handle Count
\Terminal Services Session(0 未知#12)\Handle Count
\Terminal Services Session(0 未知#13)\Handle Count
\Terminal Services Session(0 未知#14)\Handle Count
\Terminal Services Session(0 未知#15)\Handle Count
\Terminal Services Session(0 未知#16)\Handle Count
\Terminal Services Session(0 未知#17)\Handle Count
\Terminal Services Session(0 未知#18)\Handle Count
\Terminal Services Session(0 未知#19)\Handle Count
\Terminal Services Session(0 未知#20)\Handle Count
\Terminal Services Session(0 未知#21)\Handle Count
\Terminal Services Session(0 未知#22)\Handle Count
\Terminal Services Session(0 未知#23)\Handle Count
\Terminal Services Session(0 未知#24)\Handle Count
\Terminal Services Session(0 未知#25)\Handle Count
\Terminal Services Session(0 未知#26)\Handle Count
\Terminal Services Session(0 未知#27)\Handle Count
\Terminal Services Session(0 未知#28)\Handle Count
\Terminal Services Session(0 未知#29)\Handle Count
\Terminal Services Session(0 未知#30)\Handle Count
\Terminal Services Session(0 未知#31)\Handle Count
\Terminal Services Session(0 未知#32)\Handle Count
\Terminal Services Session(0 未知#33)\Handle Count
\Terminal Services Session(0 未知#34)\Handle Count
\Terminal Services Session(0 未知#35)\Handle Count
\Terminal Services Session(0 未知#36)\Handle Count
\Terminal Services Session(0 未知#37)\Handle Count
\Terminal Services Session(0 未知#38)\Handle Count
\Terminal Services Session(0 未知#39)\Handle Count
\Terminal Services Session(0 未知#40)\Handle Count
\Terminal Services Session(0 未知#41)\Handle Count
\Terminal Services Session(0 未知#42)\Handle Count
\Terminal Services Session(0 未知#43)\Handle Count
\Terminal Services Session(0 未知#44)\Handle Count
\Terminal Services Session(0 未知#45)\Handle Count
\Terminal Services Session(0 未知#46)\Handle Count
\Terminal Services Session(0 未知#47)\Handle Count
\Terminal Services Session(0 未知#48)\Handle Count
\Terminal Services Session(0 未知#49)\Handle Count
\Terminal Services Session(0 未知#50)\Handle Count
\Terminal Services Session(0 未知#51)\Handle Count
\Terminal Services Session(0 未知#52)\Handle Count
\Terminal Services Session(0 未知#53)\Handle Count
\Terminal Services Session(0 未知#54)\Handle Count
\Terminal Services Session(0 未知)\Input WdBytes
\Terminal Services Session(0 未知#1)\Input WdBytes
\Terminal Services Session(0 未知#2)\Input WdBytes
\Terminal Services Session(0 未知#3)\Input WdBytes
\Terminal Services Session(0 未知#4)\Input WdBytes
\Terminal Services Session(0 未知#5)\Input WdBytes
\Terminal Services Session(0 未知#6)\Input WdBytes
\Terminal Services Session(0 未知#7)\Input WdBytes
\Terminal Services Session(0 未知#8)\Input WdBytes
\Terminal Services Session(0 未知#9)\Input WdBytes
\Terminal Services Session(0 未知#10)\Input WdBytes
\Terminal Services Session(0 未知#11)\Input WdBytes
\Terminal Services Session(0 未知#12)\Input WdBytes
\Terminal Services Session(0 未知#13)\Input WdBytes
\Terminal Services Session(0 未知#14)\Input WdBytes
\Terminal Services Session(0 未知#15)\Input WdBytes
\Terminal Services Session(0 未知#16)\Input WdBytes
\Terminal Services Session(0 未知#17)\Input WdBytes
\Terminal Services Session(0 未知#18)\Input WdBytes
\Terminal Services Session(0 未知#19)\Input WdBytes
\Terminal Services Session(0 未知#20)\Input WdBytes
\Terminal Services Session(0 未知#21)\Input WdBytes
\Terminal Services Session(0 未知#22)\Input WdBytes
\Terminal Services Session(0 未知#23)\Input WdBytes
\Terminal Services Session(0 未知#24)\Input WdBytes
\Terminal Services Session(0 未知#25)\Input WdBytes
\Terminal Services Session(0 未知#26)\Input WdBytes
\Terminal Services Session(0 未知#27)\Input WdBytes
\Terminal Services Session(0 未知#28)\Input WdBytes
\Terminal Services Session(0 未知#29)\Input WdBytes
\Terminal Services Session(0 未知#30)\Input WdBytes
\Terminal Services Session(0 未知#31)\Input WdBytes
\Terminal Services Session(0 未知#32)\Input WdBytes
\Terminal Services Session(0 未知#33)\Input WdBytes
\Terminal Services Session(0 未知#34)\Input WdBytes
\Terminal Services Session(0 未知#35)\Input WdBytes
\Terminal Services Session(0 未知#36)\Input WdBytes
\Terminal Services Session(0 未知#37)\Input WdBytes
\Terminal Services Session(0 未知#38)\Input WdBytes
\Terminal Services Session(0 未知#39)\Input WdBytes
\Terminal Services Session(0 未知#40)\Input WdBytes
\Terminal Services Session(0 未知#41)\Input WdBytes
\Terminal Services Session(0 未知#42)\Input WdBytes
\Terminal Services Session(0 未知#43)\Input WdBytes
\Terminal Services Session(0 未知#44)\Input WdBytes
\Terminal Services Session(0 未知#45)\Input WdBytes
\Terminal Services Session(0 未知#46)\Input WdBytes
\Terminal Services Session(0 未知#47)\Input WdBytes
\Terminal Services Session(0 未知#48)\Input WdBytes
\Terminal Services Session(0 未知#49)\Input WdBytes
\Terminal Services Session(0 未知#50)\Input WdBytes
\Terminal Services Session(0 未知#51)\Input WdBytes
\Terminal Services Session(0 未知#52)\Input WdBytes
\Terminal Services Session(0 未知#53)\Input WdBytes
\Terminal Services Session(0 未知#54)\Input WdBytes
\Terminal Services Session(0 未知)\Input WdFrames
\Terminal Services Session(0 未知#1)\Input WdFrames
\Terminal Services Session(0 未知#2)\Input WdFrames
\Terminal Services Session(0 未知#3)\Input WdFrames
\Terminal Services Session(0 未知#4)\Input WdFrames
\Terminal Services Session(0 未知#5)\Input WdFrames
\Terminal Services Session(0 未知#6)\Input WdFrames
\Terminal Services Session(0 未知#7)\Input WdFrames
\Terminal Services Session(0 未知#8)\Input WdFrames
\Terminal Services Session(0 未知#9)\Input WdFrames
\Terminal Services Session(0 未知#10)\Input WdFrames
\Terminal Services Session(0 未知#11)\Input WdFrames
\Terminal Services Session(0 未知#12)\Input WdFrames
\Terminal Services Session(0 未知#13)\Input WdFrames
\Terminal Services Session(0 未知#14)\Input WdFrames
\Terminal Services Session(0 未知#15)\Input WdFrames
\Terminal Services Session(0 未知#16)\Input WdFrames
\Terminal Services Session(0 未知#17)\Input WdFrames
\Terminal Services Session(0 未知#18)\Input WdFrames
\Terminal Services Session(0 未知#19)\Input WdFrames
\Terminal Services Session(0 未知#20)\Input WdFrames
\Terminal Services Session(0 未知#21)\Input WdFrames
\Terminal Services Session(0 未知#22)\Input WdFrames
\Terminal Services Session(0 未知#23)\Input WdFrames
\Terminal Services Session(0 未知#24)\Input WdFrames
\Terminal Services Session(0 未知#25)\Input WdFrames
\Terminal Services Session(0 未知#26)\Input WdFrames
\Terminal Services Session(0 未知#27)\Input WdFrames
\Terminal Services Session(0 未知#28)\Input WdFrames
\Terminal Services Session(0 未知#29)\Input WdFrames
\Terminal Services Session(0 未知#30)\Input WdFrames
\Terminal Services Session(0 未知#31)\Input WdFrames
\Terminal Services Session(0 未知#32)\Input WdFrames
\Terminal Services Session(0 未知#33)\Input WdFrames
\Terminal Services Session(0 未知#34)\Input WdFrames
\Terminal Services Session(0 未知#35)\Input WdFrames
\Terminal Services Session(0 未知#36)\Input WdFrames
\Terminal Services Session(0 未知#37)\Input WdFrames
\Terminal Services Session(0 未知#38)\Input WdFrames
\Terminal Services Session(0 未知#39)\Input WdFrames
\Terminal Services Session(0 未知#40)\Input WdFrames
\Terminal Services Session(0 未知#41)\Input WdFrames
\Terminal Services Session(0 未知#42)\Input WdFrames
\Terminal Services Session(0 未知#43)\Input WdFrames
\Terminal Services Session(0 未知#44)\Input WdFrames
\Terminal Services Session(0 未知#45)\Input WdFrames
\Terminal Services Session(0 未知#46)\Input WdFrames
\Terminal Services Session(0 未知#47)\Input WdFrames
\Terminal Services Session(0 未知#48)\Input WdFrames
\Terminal Services Session(0 未知#49)\Input WdFrames
\Terminal Services Session(0 未知#50)\Input WdFrames
\Terminal Services Session(0 未知#51)\Input WdFrames
\Terminal Services Session(0 未知#52)\Input WdFrames
\Terminal Services Session(0 未知#53)\Input WdFrames
\Terminal Services Session(0 未知#54)\Input WdFrames
\Terminal Services Session(0 未知)\Input WaitForOutBuf
\Terminal Services Session(0 未知#1)\Input WaitForOutBuf
\Terminal Services Session(0 未知#2)\Input WaitForOutBuf
\Terminal Services Session(0 未知#3)\Input WaitForOutBuf
\Terminal Services Session(0 未知#4)\Input WaitForOutBuf
\Terminal Services Session(0 未知#5)\Input WaitForOutBuf
\Terminal Services Session(0 未知#6)\Input WaitForOutBuf
\Terminal Services Session(0 未知#7)\Input WaitForOutBuf
\Terminal Services Session(0 未知#8)\Input WaitForOutBuf
\Terminal Services Session(0 未知#9)\Input WaitForOutBuf
\Terminal Services Session(0 未知#10)\Input WaitForOutBuf
\Terminal Services Session(0 未知#11)\Input WaitForOutBuf
\Terminal Services Session(0 未知#12)\Input WaitForOutBuf
\Terminal Services Session(0 未知#13)\Input WaitForOutBuf
\Terminal Services Session(0 未知#14)\Input WaitForOutBuf
\Terminal Services Session(0 未知#15)\Input WaitForOutBuf
\Terminal Services Session(0 未知#16)\Input WaitForOutBuf
\Terminal Services Session(0 未知#17)\Input WaitForOutBuf
\Terminal Services Session(0 未知#18)\Input WaitForOutBuf
\Terminal Services Session(0 未知#19)\Input WaitForOutBuf
\Terminal Services Session(0 未知#20)\Input WaitForOutBuf
\Terminal Services Session(0 未知#21)\Input WaitForOutBuf
\Terminal Services Session(0 未知#22)\Input WaitForOutBuf
\Terminal Services Session(0 未知#23)\Input WaitForOutBuf
\Terminal Services Session(0 未知#24)\Input WaitForOutBuf
\Terminal Services Session(0 未知#25)\Input WaitForOutBuf
\Terminal Services Session(0 未知#26)\Input WaitForOutBuf
\Terminal Services Session(0 未知#27)\Input WaitForOutBuf
\Terminal Services Session(0 未知#28)\Input WaitForOutBuf
\Terminal Services Session(0 未知#29)\Input WaitForOutBuf
\Terminal Services Session(0 未知#30)\Input WaitForOutBuf
\Terminal Services Session(0 未知#31)\Input WaitForOutBuf
\Terminal Services Session(0 未知#32)\Input WaitForOutBuf
\Terminal Services Session(0 未知#33)\Input WaitForOutBuf
\Terminal Services Session(0 未知#34)\Input WaitForOutBuf
\Terminal Services Session(0 未知#35)\Input WaitForOutBuf
\Terminal Services Session(0 未知#36)\Input WaitForOutBuf
\Terminal Services Session(0 未知#37)\Input WaitForOutBuf
\Terminal Services Session(0 未知#38)\Input WaitForOutBuf
\Terminal Services Session(0 未知#39)\Input WaitForOutBuf
\Terminal Services Session(0 未知#40)\Input WaitForOutBuf
\Terminal Services Session(0 未知#41)\Input WaitForOutBuf
\Terminal Services Session(0 未知#42)\Input WaitForOutBuf
\Terminal Services Session(0 未知#43)\Input WaitForOutBuf
\Terminal Services Session(0 未知#44)\Input WaitForOutBuf
\Terminal Services Session(0 未知#45)\Input WaitForOutBuf
\Terminal Services Session(0 未知#46)\Input WaitForOutBuf
\Terminal Services Session(0 未知#47)\Input WaitForOutBuf
\Terminal Services Session(0 未知#48)\Input WaitForOutBuf
\Terminal Services Session(0 未知#49)\Input WaitForOutBuf
\Terminal Services Session(0 未知#50)\Input WaitForOutBuf
\Terminal Services Session(0 未知#51)\Input WaitForOutBuf
\Terminal Services Session(0 未知#52)\Input WaitForOutBuf
\Terminal Services Session(0 未知#53)\Input WaitForOutBuf
\Terminal Services Session(0 未知#54)\Input WaitForOutBuf
\Terminal Services Session(0 未知)\Input Frames
\Terminal Services Session(0 未知#1)\Input Frames
\Terminal Services Session(0 未知#2)\Input Frames
\Terminal Services Session(0 未知#3)\Input Frames
\Terminal Services Session(0 未知#4)\Input Frames
\Terminal Services Session(0 未知#5)\Input Frames
\Terminal Services Session(0 未知#6)\Input Frames
\Terminal Services Session(0 未知#7)\Input Frames
\Terminal Services Session(0 未知#8)\Input Frames
\Terminal Services Session(0 未知#9)\Input Frames
\Terminal Services Session(0 未知#10)\Input Frames
\Terminal Services Session(0 未知#11)\Input Frames
\Terminal Services Session(0 未知#12)\Input Frames
\Terminal Services Session(0 未知#13)\Input Frames
\Terminal Services Session(0 未知#14)\Input Frames
\Terminal Services Session(0 未知#15)\Input Frames
\Terminal Services Session(0 未知#16)\Input Frames
\Terminal Services Session(0 未知#17)\Input Frames
\Terminal Services Session(0 未知#18)\Input Frames
\Terminal Services Session(0 未知#19)\Input Frames
\Terminal Services Session(0 未知#20)\Input Frames
\Terminal Services Session(0 未知#21)\Input Frames
\Terminal Services Session(0 未知#22)\Input Frames
\Terminal Services Session(0 未知#23)\Input Frames
\Terminal Services Session(0 未知#24)\Input Frames
\Terminal Services Session(0 未知#25)\Input Frames
\Terminal Services Session(0 未知#26)\Input Frames
\Terminal Services Session(0 未知#27)\Input Frames
\Terminal Services Session(0 未知#28)\Input Frames
\Terminal Services Session(0 未知#29)\Input Frames
\Terminal Services Session(0 未知#30)\Input Frames
\Terminal Services Session(0 未知#31)\Input Frames
\Terminal Services Session(0 未知#32)\Input Frames
\Terminal Services Session(0 未知#33)\Input Frames
\Terminal Services Session(0 未知#34)\Input Frames
\Terminal Services Session(0 未知#35)\Input Frames
\Terminal Services Session(0 未知#36)\Input Frames
\Terminal Services Session(0 未知#37)\Input Frames
\Terminal Services Session(0 未知#38)\Input Frames
\Terminal Services Session(0 未知#39)\Input Frames
\Terminal Services Session(0 未知#40)\Input Frames
\Terminal Services Session(0 未知#41)\Input Frames
\Terminal Services Session(0 未知#42)\Input Frames
\Terminal Services Session(0 未知#43)\Input Frames
\Terminal Services Session(0 未知#44)\Input Frames
\Terminal Services Session(0 未知#45)\Input Frames
\Terminal Services Session(0 未知#46)\Input Frames
\Terminal Services Session(0 未知#47)\Input Frames
\Terminal Services Session(0 未知#48)\Input Frames
\Terminal Services Session(0 未知#49)\Input Frames
\Terminal Services Session(0 未知#50)\Input Frames
\Terminal Services Session(0 未知#51)\Input Frames
\Terminal Services Session(0 未知#52)\Input Frames
\Terminal Services Session(0 未知#53)\Input Frames
\Terminal Services Session(0 未知#54)\Input Frames
\Terminal Services Session(0 未知)\Input Bytes
\Terminal Services Session(0 未知#1)\Input Bytes
\Terminal Services Session(0 未知#2)\Input Bytes
\Terminal Services Session(0 未知#3)\Input Bytes
\Terminal Services Session(0 未知#4)\Input Bytes
\Terminal Services Session(0 未知#5)\Input Bytes
\Terminal Services Session(0 未知#6)\Input Bytes
\Terminal Services Session(0 未知#7)\Input Bytes
\Terminal Services Session(0 未知#8)\Input Bytes
\Terminal Services Session(0 未知#9)\Input Bytes
\Terminal Services Session(0 未知#10)\Input Bytes
\Terminal Services Session(0 未知#11)\Input Bytes
\Terminal Services Session(0 未知#12)\Input Bytes
\Terminal Services Session(0 未知#13)\Input Bytes
\Terminal Services Session(0 未知#14)\Input Bytes
\Terminal Services Session(0 未知#15)\Input Bytes
\Terminal Services Session(0 未知#16)\Input Bytes
\Terminal Services Session(0 未知#17)\Input Bytes
\Terminal Services Session(0 未知#18)\Input Bytes
\Terminal Services Session(0 未知#19)\Input Bytes
\Terminal Services Session(0 未知#20)\Input Bytes
\Terminal Services Session(0 未知#21)\Input Bytes
\Terminal Services Session(0 未知#22)\Input Bytes
\Terminal Services Session(0 未知#23)\Input Bytes
\Terminal Services Session(0 未知#24)\Input Bytes
\Terminal Services Session(0 未知#25)\Input Bytes
\Terminal Services Session(0 未知#26)\Input Bytes
\Terminal Services Session(0 未知#27)\Input Bytes
\Terminal Services Session(0 未知#28)\Input Bytes
\Terminal Services Session(0 未知#29)\Input Bytes
\Terminal Services Session(0 未知#30)\Input Bytes
\Terminal Services Session(0 未知#31)\Input Bytes
\Terminal Services Session(0 未知#32)\Input Bytes
\Terminal Services Session(0 未知#33)\Input Bytes
\Terminal Services Session(0 未知#34)\Input Bytes
\Terminal Services Session(0 未知#35)\Input Bytes
\Terminal Services Session(0 未知#36)\Input Bytes
\Terminal Services Session(0 未知#37)\Input Bytes
\Terminal Services Session(0 未知#38)\Input Bytes
\Terminal Services Session(0 未知#39)\Input Bytes
\Terminal Services Session(0 未知#40)\Input Bytes
\Terminal Services Session(0 未知#41)\Input Bytes
\Terminal Services Session(0 未知#42)\Input Bytes
\Terminal Services Session(0 未知#43)\Input Bytes
\Terminal Services Session(0 未知#44)\Input Bytes
\Terminal Services Session(0 未知#45)\Input Bytes
\Terminal Services Session(0 未知#46)\Input Bytes
\Terminal Services Session(0 未知#47)\Input Bytes
\Terminal Services Session(0 未知#48)\Input Bytes
\Terminal Services Session(0 未知#49)\Input Bytes
\Terminal Services Session(0 未知#50)\Input Bytes
\Terminal Services Session(0 未知#51)\Input Bytes
\Terminal Services Session(0 未知#52)\Input Bytes
\Terminal Services Session(0 未知#53)\Input Bytes
\Terminal Services Session(0 未知#54)\Input Bytes
\Terminal Services Session(0 未知)\Input Compressed Bytes
\Terminal Services Session(0 未知#1)\Input Compressed Bytes
\Terminal Services Session(0 未知#2)\Input Compressed Bytes
\Terminal Services Session(0 未知#3)\Input Compressed Bytes
\Terminal Services Session(0 未知#4)\Input Compressed Bytes
\Terminal Services Session(0 未知#5)\Input Compressed Bytes
\Terminal Services Session(0 未知#6)\Input Compressed Bytes
\Terminal Services Session(0 未知#7)\Input Compressed Bytes
\Terminal Services Session(0 未知#8)\Input Compressed Bytes
\Terminal Services Session(0 未知#9)\Input Compressed Bytes
\Terminal Services Session(0 未知#10)\Input Compressed Bytes
\Terminal Services Session(0 未知#11)\Input Compressed Bytes
\Terminal Services Session(0 未知#12)\Input Compressed Bytes
\Terminal Services Session(0 未知#13)\Input Compressed Bytes
\Terminal Services Session(0 未知#14)\Input Compressed Bytes
\Terminal Services Session(0 未知#15)\Input Compressed Bytes
\Terminal Services Session(0 未知#16)\Input Compressed Bytes
\Terminal Services Session(0 未知#17)\Input Compressed Bytes
\Terminal Services Session(0 未知#18)\Input Compressed Bytes
\Terminal Services Session(0 未知#19)\Input Compressed Bytes
\Terminal Services Session(0 未知#20)\Input Compressed Bytes
\Terminal Services Session(0 未知#21)\Input Compressed Bytes
\Terminal Services Session(0 未知#22)\Input Compressed Bytes
\Terminal Services Session(0 未知#23)\Input Compressed Bytes
\Terminal Services Session(0 未知#24)\Input Compressed Bytes
\Terminal Services Session(0 未知#25)\Input Compressed Bytes
\Terminal Services Session(0 未知#26)\Input Compressed Bytes
\Terminal Services Session(0 未知#27)\Input Compressed Bytes
\Terminal Services Session(0 未知#28)\Input Compressed Bytes
\Terminal Services Session(0 未知#29)\Input Compressed Bytes
\Terminal Services Session(0 未知#30)\Input Compressed Bytes
\Terminal Services Session(0 未知#31)\Input Compressed Bytes
\Terminal Services Session(0 未知#32)\Input Compressed Bytes
\Terminal Services Session(0 未知#33)\Input Compressed Bytes
\Terminal Services Session(0 未知#34)\Input Compressed Bytes
\Terminal Services Session(0 未知#35)\Input Compressed Bytes
\Terminal Services Session(0 未知#36)\Input Compressed Bytes
\Terminal Services Session(0 未知#37)\Input Compressed Bytes
\Terminal Services Session(0 未知#38)\Input Compressed Bytes
\Terminal Services Session(0 未知#39)\Input Compressed Bytes
\Terminal Services Session(0 未知#40)\Input Compressed Bytes
\Terminal Services Session(0 未知#41)\Input Compressed Bytes
\Terminal Services Session(0 未知#42)\Input Compressed Bytes
\Terminal Services Session(0 未知#43)\Input Compressed Bytes
\Terminal Services Session(0 未知#44)\Input Compressed Bytes
\Terminal Services Session(0 未知#45)\Input Compressed Bytes
\Terminal Services Session(0 未知#46)\Input Compressed Bytes
\Terminal Services Session(0 未知#47)\Input Compressed Bytes
\Terminal Services Session(0 未知#48)\Input Compressed Bytes
\Terminal Services Session(0 未知#49)\Input Compressed Bytes
\Terminal Services Session(0 未知#50)\Input Compressed Bytes
\Terminal Services Session(0 未知#51)\Input Compressed Bytes
\Terminal Services Session(0 未知#52)\Input Compressed Bytes
\Terminal Services Session(0 未知#53)\Input Compressed Bytes
\Terminal Services Session(0 未知#54)\Input Compressed Bytes
\Terminal Services Session(0 未知)\Input Compress Flushes
\Terminal Services Session(0 未知#1)\Input Compress Flushes
\Terminal Services Session(0 未知#2)\Input Compress Flushes
\Terminal Services Session(0 未知#3)\Input Compress Flushes
\Terminal Services Session(0 未知#4)\Input Compress Flushes
\Terminal Services Session(0 未知#5)\Input Compress Flushes
\Terminal Services Session(0 未知#6)\Input Compress Flushes
\Terminal Services Session(0 未知#7)\Input Compress Flushes
\Terminal Services Session(0 未知#8)\Input Compress Flushes
\Terminal Services Session(0 未知#9)\Input Compress Flushes
\Terminal Services Session(0 未知#10)\Input Compress Flushes
\Terminal Services Session(0 未知#11)\Input Compress Flushes
\Terminal Services Session(0 未知#12)\Input Compress Flushes
\Terminal Services Session(0 未知#13)\Input Compress Flushes
\Terminal Services Session(0 未知#14)\Input Compress Flushes
\Terminal Services Session(0 未知#15)\Input Compress Flushes
\Terminal Services Session(0 未知#16)\Input Compress Flushes
\Terminal Services Session(0 未知#17)\Input Compress Flushes
\Terminal Services Session(0 未知#18)\Input Compress Flushes
\Terminal Services Session(0 未知#19)\Input Compress Flushes
\Terminal Services Session(0 未知#20)\Input Compress Flushes
\Terminal Services Session(0 未知#21)\Input Compress Flushes
\Terminal Services Session(0 未知#22)\Input Compress Flushes
\Terminal Services Session(0 未知#23)\Input Compress Flushes
\Terminal Services Session(0 未知#24)\Input Compress Flushes
\Terminal Services Session(0 未知#25)\Input Compress Flushes
\Terminal Services Session(0 未知#26)\Input Compress Flushes
\Terminal Services Session(0 未知#27)\Input Compress Flushes
\Terminal Services Session(0 未知#28)\Input Compress Flushes
\Terminal Services Session(0 未知#29)\Input Compress Flushes
\Terminal Services Session(0 未知#30)\Input Compress Flushes
\Terminal Services Session(0 未知#31)\Input Compress Flushes
\Terminal Services Session(0 未知#32)\Input Compress Flushes
\Terminal Services Session(0 未知#33)\Input Compress Flushes
\Terminal Services Session(0 未知#34)\Input Compress Flushes
\Terminal Services Session(0 未知#35)\Input Compress Flushes
\Terminal Services Session(0 未知#36)\Input Compress Flushes
\Terminal Services Session(0 未知#37)\Input Compress Flushes
\Terminal Services Session(0 未知#38)\Input Compress Flushes
\Terminal Services Session(0 未知#39)\Input Compress Flushes
\Terminal Services Session(0 未知#40)\Input Compress Flushes
\Terminal Services Session(0 未知#41)\Input Compress Flushes
\Terminal Services Session(0 未知#42)\Input Compress Flushes
\Terminal Services Session(0 未知#43)\Input Compress Flushes
\Terminal Services Session(0 未知#44)\Input Compress Flushes
\Terminal Services Session(0 未知#45)\Input Compress Flushes
\Terminal Services Session(0 未知#46)\Input Compress Flushes
\Terminal Services Session(0 未知#47)\Input Compress Flushes
\Terminal Services Session(0 未知#48)\Input Compress Flushes
\Terminal Services Session(0 未知#49)\Input Compress Flushes
\Terminal Services Session(0 未知#50)\Input Compress Flushes
\Terminal Services Session(0 未知#51)\Input Compress Flushes
\Terminal Services Session(0 未知#52)\Input Compress Flushes
\Terminal Services Session(0 未知#53)\Input Compress Flushes
\Terminal Services Session(0 未知#54)\Input Compress Flushes
\Terminal Services Session(0 未知)\Input Errors
\Terminal Services Session(0 未知#1)\Input Errors
\Terminal Services Session(0 未知#2)\Input Errors
\Terminal Services Session(0 未知#3)\Input Errors
\Terminal Services Session(0 未知#4)\Input Errors
\Terminal Services Session(0 未知#5)\Input Errors
\Terminal Services Session(0 未知#6)\Input Errors
\Terminal Services Session(0 未知#7)\Input Errors
\Terminal Services Session(0 未知#8)\Input Errors
\Terminal Services Session(0 未知#9)\Input Errors
\Terminal Services Session(0 未知#10)\Input Errors
\Terminal Services Session(0 未知#11)\Input Errors
\Terminal Services Session(0 未知#12)\Input Errors
\Terminal Services Session(0 未知#13)\Input Errors
\Terminal Services Session(0 未知#14)\Input Errors
\Terminal Services Session(0 未知#15)\Input Errors
\Terminal Services Session(0 未知#16)\Input Errors
\Terminal Services Session(0 未知#17)\Input Errors
\Terminal Services Session(0 未知#18)\Input Errors
\Terminal Services Session(0 未知#19)\Input Errors
\Terminal Services Session(0 未知#20)\Input Errors
\Terminal Services Session(0 未知#21)\Input Errors
\Terminal Services Session(0 未知#22)\Input Errors
\Terminal Services Session(0 未知#23)\Input Errors
\Terminal Services Session(0 未知#24)\Input Errors
\Terminal Services Session(0 未知#25)\Input Errors
\Terminal Services Session(0 未知#26)\Input Errors
\Terminal Services Session(0 未知#27)\Input Errors
\Terminal Services Session(0 未知#28)\Input Errors
\Terminal Services Session(0 未知#29)\Input Errors
\Terminal Services Session(0 未知#30)\Input Errors
\Terminal Services Session(0 未知#31)\Input Errors
\Terminal Services Session(0 未知#32)\Input Errors
\Terminal Services Session(0 未知#33)\Input Errors
\Terminal Services Session(0 未知#34)\Input Errors
\Terminal Services Session(0 未知#35)\Input Errors
\Terminal Services Session(0 未知#36)\Input Errors
\Terminal Services Session(0 未知#37)\Input Errors
\Terminal Services Session(0 未知#38)\Input Errors
\Terminal Services Session(0 未知#39)\Input Errors
\Terminal Services Session(0 未知#40)\Input Errors
\Terminal Services Session(0 未知#41)\Input Errors
\Terminal Services Session(0 未知#42)\Input Errors
\Terminal Services Session(0 未知#43)\Input Errors
\Terminal Services Session(0 未知#44)\Input Errors
\Terminal Services Session(0 未知#45)\Input Errors
\Terminal Services Session(0 未知#46)\Input Errors
\Terminal Services Session(0 未知#47)\Input Errors
\Terminal Services Session(0 未知#48)\Input Errors
\Terminal Services Session(0 未知#49)\Input Errors
\Terminal Services Session(0 未知#50)\Input Errors
\Terminal Services Session(0 未知#51)\Input Errors
\Terminal Services Session(0 未知#52)\Input Errors
\Terminal Services Session(0 未知#53)\Input Errors
\Terminal Services Session(0 未知#54)\Input Errors
\Terminal Services Session(0 未知)\Input Timeouts
\Terminal Services Session(0 未知#1)\Input Timeouts
\Terminal Services Session(0 未知#2)\Input Timeouts
\Terminal Services Session(0 未知#3)\Input Timeouts
\Terminal Services Session(0 未知#4)\Input Timeouts
\Terminal Services Session(0 未知#5)\Input Timeouts
\Terminal Services Session(0 未知#6)\Input Timeouts
\Terminal Services Session(0 未知#7)\Input Timeouts
\Terminal Services Session(0 未知#8)\Input Timeouts
\Terminal Services Session(0 未知#9)\Input Timeouts
\Terminal Services Session(0 未知#10)\Input Timeouts
\Terminal Services Session(0 未知#11)\Input Timeouts
\Terminal Services Session(0 未知#12)\Input Timeouts
\Terminal Services Session(0 未知#13)\Input Timeouts
\Terminal Services Session(0 未知#14)\Input Timeouts
\Terminal Services Session(0 未知#15)\Input Timeouts
\Terminal Services Session(0 未知#16)\Input Timeouts
\Terminal Services Session(0 未知#17)\Input Timeouts
\Terminal Services Session(0 未知#18)\Input Timeouts
\Terminal Services Session(0 未知#19)\Input Timeouts
\Terminal Services Session(0 未知#20)\Input Timeouts
\Terminal Services Session(0 未知#21)\Input Timeouts
\Terminal Services Session(0 未知#22)\Input Timeouts
\Terminal Services Session(0 未知#23)\Input Timeouts
\Terminal Services Session(0 未知#24)\Input Timeouts
\Terminal Services Session(0 未知#25)\Input Timeouts
\Terminal Services Session(0 未知#26)\Input Timeouts
\Terminal Services Session(0 未知#27)\Input Timeouts
\Terminal Services Session(0 未知#28)\Input Timeouts
\Terminal Services Session(0 未知#29)\Input Timeouts
\Terminal Services Session(0 未知#30)\Input Timeouts
\Terminal Services Session(0 未知#31)\Input Timeouts
\Terminal Services Session(0 未知#32)\Input Timeouts
\Terminal Services Session(0 未知#33)\Input Timeouts
\Terminal Services Session(0 未知#34)\Input Timeouts
\Terminal Services Session(0 未知#35)\Input Timeouts
\Terminal Services Session(0 未知#36)\Input Timeouts
\Terminal Services Session(0 未知#37)\Input Timeouts
\Terminal Services Session(0 未知#38)\Input Timeouts
\Terminal Services Session(0 未知#39)\Input Timeouts
\Terminal Services Session(0 未知#40)\Input Timeouts
\Terminal Services Session(0 未知#41)\Input Timeouts
\Terminal Services Session(0 未知#42)\Input Timeouts
\Terminal Services Session(0 未知#43)\Input Timeouts
\Terminal Services Session(0 未知#44)\Input Timeouts
\Terminal Services Session(0 未知#45)\Input Timeouts
\Terminal Services Session(0 未知#46)\Input Timeouts
\Terminal Services Session(0 未知#47)\Input Timeouts
\Terminal Services Session(0 未知#48)\Input Timeouts
\Terminal Services Session(0 未知#49)\Input Timeouts
\Terminal Services Session(0 未知#50)\Input Timeouts
\Terminal Services Session(0 未知#51)\Input Timeouts
\Terminal Services Session(0 未知#52)\Input Timeouts
\Terminal Services Session(0 未知#53)\Input Timeouts
\Terminal Services Session(0 未知#54)\Input Timeouts
\Terminal Services Session(0 未知)\Input Async Frame Error
\Terminal Services Session(0 未知#1)\Input Async Frame Error
\Terminal Services Session(0 未知#2)\Input Async Frame Error
\Terminal Services Session(0 未知#3)\Input Async Frame Error
\Terminal Services Session(0 未知#4)\Input Async Frame Error
\Terminal Services Session(0 未知#5)\Input Async Frame Error
\Terminal Services Session(0 未知#6)\Input Async Frame Error
\Terminal Services Session(0 未知#7)\Input Async Frame Error
\Terminal Services Session(0 未知#8)\Input Async Frame Error
\Terminal Services Session(0 未知#9)\Input Async Frame Error
\Terminal Services Session(0 未知#10)\Input Async Frame Error
\Terminal Services Session(0 未知#11)\Input Async Frame Error
\Terminal Services Session(0 未知#12)\Input Async Frame Error
\Terminal Services Session(0 未知#13)\Input Async Frame Error
\Terminal Services Session(0 未知#14)\Input Async Frame Error
\Terminal Services Session(0 未知#15)\Input Async Frame Error
\Terminal Services Session(0 未知#16)\Input Async Frame Error
\Terminal Services Session(0 未知#17)\Input Async Frame Error
\Terminal Services Session(0 未知#18)\Input Async Frame Error
\Terminal Services Session(0 未知#19)\Input Async Frame Error
\Terminal Services Session(0 未知#20)\Input Async Frame Error
\Terminal Services Session(0 未知#21)\Input Async Frame Error
\Terminal Services Session(0 未知#22)\Input Async Frame Error
\Terminal Services Session(0 未知#23)\Input Async Frame Error
\Terminal Services Session(0 未知#24)\Input Async Frame Error
\Terminal Services Session(0 未知#25)\Input Async Frame Error
\Terminal Services Session(0 未知#26)\Input Async Frame Error
\Terminal Services Session(0 未知#27)\Input Async Frame Error
\Terminal Services Session(0 未知#28)\Input Async Frame Error
\Terminal Services Session(0 未知#29)\Input Async Frame Error
\Terminal Services Session(0 未知#30)\Input Async Frame Error
\Terminal Services Session(0 未知#31)\Input Async Frame Error
\Terminal Services Session(0 未知#32)\Input Async Frame Error
\Terminal Services Session(0 未知#33)\Input Async Frame Error
\Terminal Services Session(0 未知#34)\Input Async Frame Error
\Terminal Services Session(0 未知#35)\Input Async Frame Error
\Terminal Services Session(0 未知#36)\Input Async Frame Error
\Terminal Services Session(0 未知#37)\Input Async Frame Error
\Terminal Services Session(0 未知#38)\Input Async Frame Error
\Terminal Services Session(0 未知#39)\Input Async Frame Error
\Terminal Services Session(0 未知#40)\Input Async Frame Error
\Terminal Services Session(0 未知#41)\Input Async Frame Error
\Terminal Services Session(0 未知#42)\Input Async Frame Error
\Terminal Services Session(0 未知#43)\Input Async Frame Error
\Terminal Services Session(0 未知#44)\Input Async Frame Error
\Terminal Services Session(0 未知#45)\Input Async Frame Error
\Terminal Services Session(0 未知#46)\Input Async Frame Error
\Terminal Services Session(0 未知#47)\Input Async Frame Error
\Terminal Services Session(0 未知#48)\Input Async Frame Error
\Terminal Services Session(0 未知#49)\Input Async Frame Error
\Terminal Services Session(0 未知#50)\Input Async Frame Error
\Terminal Services Session(0 未知#51)\Input Async Frame Error
\Terminal Services Session(0 未知#52)\Input Async Frame Error
\Terminal Services Session(0 未知#53)\Input Async Frame Error
\Terminal Services Session(0 未知#54)\Input Async Frame Error
\Terminal Services Session(0 未知)\Input Async Overrun
\Terminal Services Session(0 未知#1)\Input Async Overrun
\Terminal Services Session(0 未知#2)\Input Async Overrun
\Terminal Services Session(0 未知#3)\Input Async Overrun
\Terminal Services Session(0 未知#4)\Input Async Overrun
\Terminal Services Session(0 未知#5)\Input Async Overrun
\Terminal Services Session(0 未知#6)\Input Async Overrun
\Terminal Services Session(0 未知#7)\Input Async Overrun
\Terminal Services Session(0 未知#8)\Input Async Overrun
\Terminal Services Session(0 未知#9)\Input Async Overrun
\Terminal Services Session(0 未知#10)\Input Async Overrun
\Terminal Services Session(0 未知#11)\Input Async Overrun
\Terminal Services Session(0 未知#12)\Input Async Overrun
\Terminal Services Session(0 未知#13)\Input Async Overrun
\Terminal Services Session(0 未知#14)\Input Async Overrun
\Terminal Services Session(0 未知#15)\Input Async Overrun
\Terminal Services Session(0 未知#16)\Input Async Overrun
\Terminal Services Session(0 未知#17)\Input Async Overrun
\Terminal Services Session(0 未知#18)\Input Async Overrun
\Terminal Services Session(0 未知#19)\Input Async Overrun
\Terminal Services Session(0 未知#20)\Input Async Overrun
\Terminal Services Session(0 未知#21)\Input Async Overrun
\Terminal Services Session(0 未知#22)\Input Async Overrun
\Terminal Services Session(0 未知#23)\Input Async Overrun
\Terminal Services Session(0 未知#24)\Input Async Overrun
\Terminal Services Session(0 未知#25)\Input Async Overrun
\Terminal Services Session(0 未知#26)\Input Async Overrun
\Terminal Services Session(0 未知#27)\Input Async Overrun
\Terminal Services Session(0 未知#28)\Input Async Overrun
\Terminal Services Session(0 未知#29)\Input Async Overrun
\Terminal Services Session(0 未知#30)\Input Async Overrun
\Terminal Services Session(0 未知#31)\Input Async Overrun
\Terminal Services Session(0 未知#32)\Input Async Overrun
\Terminal Services Session(0 未知#33)\Input Async Overrun
\Terminal Services Session(0 未知#34)\Input Async Overrun
\Terminal Services Session(0 未知#35)\Input Async Overrun
\Terminal Services Session(0 未知#36)\Input Async Overrun
\Terminal Services Session(0 未知#37)\Input Async Overrun
\Terminal Services Session(0 未知#38)\Input Async Overrun
\Terminal Services Session(0 未知#39)\Input Async Overrun
\Terminal Services Session(0 未知#40)\Input Async Overrun
\Terminal Services Session(0 未知#41)\Input Async Overrun
\Terminal Services Session(0 未知#42)\Input Async Overrun
\Terminal Services Session(0 未知#43)\Input Async Overrun
\Terminal Services Session(0 未知#44)\Input Async Overrun
\Terminal Services Session(0 未知#45)\Input Async Overrun
\Terminal Services Session(0 未知#46)\Input Async Overrun
\Terminal Services Session(0 未知#47)\Input Async Overrun
\Terminal Services Session(0 未知#48)\Input Async Overrun
\Terminal Services Session(0 未知#49)\Input Async Overrun
\Terminal Services Session(0 未知#50)\Input Async Overrun
\Terminal Services Session(0 未知#51)\Input Async Overrun
\Terminal Services Session(0 未知#52)\Input Async Overrun
\Terminal Services Session(0 未知#53)\Input Async Overrun
\Terminal Services Session(0 未知#54)\Input Async Overrun
\Terminal Services Session(0 未知)\Input Async Overflow
\Terminal Services Session(0 未知#1)\Input Async Overflow
\Terminal Services Session(0 未知#2)\Input Async Overflow
\Terminal Services Session(0 未知#3)\Input Async Overflow
\Terminal Services Session(0 未知#4)\Input Async Overflow
\Terminal Services Session(0 未知#5)\Input Async Overflow
\Terminal Services Session(0 未知#6)\Input Async Overflow
\Terminal Services Session(0 未知#7)\Input Async Overflow
\Terminal Services Session(0 未知#8)\Input Async Overflow
\Terminal Services Session(0 未知#9)\Input Async Overflow
\Terminal Services Session(0 未知#10)\Input Async Overflow
\Terminal Services Session(0 未知#11)\Input Async Overflow
\Terminal Services Session(0 未知#12)\Input Async Overflow
\Terminal Services Session(0 未知#13)\Input Async Overflow
\Terminal Services Session(0 未知#14)\Input Async Overflow
\Terminal Services Session(0 未知#15)\Input Async Overflow
\Terminal Services Session(0 未知#16)\Input Async Overflow
\Terminal Services Session(0 未知#17)\Input Async Overflow
\Terminal Services Session(0 未知#18)\Input Async Overflow
\Terminal Services Session(0 未知#19)\Input Async Overflow
\Terminal Services Session(0 未知#20)\Input Async Overflow
\Terminal Services Session(0 未知#21)\Input Async Overflow
\Terminal Services Session(0 未知#22)\Input Async Overflow
\Terminal Services Session(0 未知#23)\Input Async Overflow
\Terminal Services Session(0 未知#24)\Input Async Overflow
\Terminal Services Session(0 未知#25)\Input Async Overflow
\Terminal Services Session(0 未知#26)\Input Async Overflow
\Terminal Services Session(0 未知#27)\Input Async Overflow
\Terminal Services Session(0 未知#28)\Input Async Overflow
\Terminal Services Session(0 未知#29)\Input Async Overflow
\Terminal Services Session(0 未知#30)\Input Async Overflow
\Terminal Services Session(0 未知#31)\Input Async Overflow
\Terminal Services Session(0 未知#32)\Input Async Overflow
\Terminal Services Session(0 未知#33)\Input Async Overflow
\Terminal Services Session(0 未知#34)\Input Async Overflow
\Terminal Services Session(0 未知#35)\Input Async Overflow
\Terminal Services Session(0 未知#36)\Input Async Overflow
\Terminal Services Session(0 未知#37)\Input Async Overflow
\Terminal Services Session(0 未知#38)\Input Async Overflow
\Terminal Services Session(0 未知#39)\Input Async Overflow
\Terminal Services Session(0 未知#40)\Input Async Overflow
\Terminal Services Session(0 未知#41)\Input Async Overflow
\Terminal Services Session(0 未知#42)\Input Async Overflow
\Terminal Services Session(0 未知#43)\Input Async Overflow
\Terminal Services Session(0 未知#44)\Input Async Overflow
\Terminal Services Session(0 未知#45)\Input Async Overflow
\Terminal Services Session(0 未知#46)\Input Async Overflow
\Terminal Services Session(0 未知#47)\Input Async Overflow
\Terminal Services Session(0 未知#48)\Input Async Overflow
\Terminal Services Session(0 未知#49)\Input Async Overflow
\Terminal Services Session(0 未知#50)\Input Async Overflow
\Terminal Services Session(0 未知#51)\Input Async Overflow
\Terminal Services Session(0 未知#52)\Input Async Overflow
\Terminal Services Session(0 未知#53)\Input Async Overflow
\Terminal Services Session(0 未知#54)\Input Async Overflow
\Terminal Services Session(0 未知)\Input Async Parity Error
\Terminal Services Session(0 未知#1)\Input Async Parity Error
\Terminal Services Session(0 未知#2)\Input Async Parity Error
\Terminal Services Session(0 未知#3)\Input Async Parity Error
\Terminal Services Session(0 未知#4)\Input Async Parity Error
\Terminal Services Session(0 未知#5)\Input Async Parity Error
\Terminal Services Session(0 未知#6)\Input Async Parity Error
\Terminal Services Session(0 未知#7)\Input Async Parity Error
\Terminal Services Session(0 未知#8)\Input Async Parity Error
\Terminal Services Session(0 未知#9)\Input Async Parity Error
\Terminal Services Session(0 未知#10)\Input Async Parity Error
\Terminal Services Session(0 未知#11)\Input Async Parity Error
\Terminal Services Session(0 未知#12)\Input Async Parity Error
\Terminal Services Session(0 未知#13)\Input Async Parity Error
\Terminal Services Session(0 未知#14)\Input Async Parity Error
\Terminal Services Session(0 未知#15)\Input Async Parity Error
\Terminal Services Session(0 未知#16)\Input Async Parity Error
\Terminal Services Session(0 未知#17)\Input Async Parity Error
\Terminal Services Session(0 未知#18)\Input Async Parity Error
\Terminal Services Session(0 未知#19)\Input Async Parity Error
\Terminal Services Session(0 未知#20)\Input Async Parity Error
\Terminal Services Session(0 未知#21)\Input Async Parity Error
\Terminal Services Session(0 未知#22)\Input Async Parity Error
\Terminal Services Session(0 未知#23)\Input Async Parity Error
\Terminal Services Session(0 未知#24)\Input Async Parity Error
\Terminal Services Session(0 未知#25)\Input Async Parity Error
\Terminal Services Session(0 未知#26)\Input Async Parity Error
\Terminal Services Session(0 未知#27)\Input Async Parity Error
\Terminal Services Session(0 未知#28)\Input Async Parity Error
\Terminal Services Session(0 未知#29)\Input Async Parity Error
\Terminal Services Session(0 未知#30)\Input Async Parity Error
\Terminal Services Session(0 未知#31)\Input Async Parity Error
\Terminal Services Session(0 未知#32)\Input Async Parity Error
\Terminal Services Session(0 未知#33)\Input Async Parity Error
\Terminal Services Session(0 未知#34)\Input Async Parity Error
\Terminal Services Session(0 未知#35)\Input Async Parity Error
\Terminal Services Session(0 未知#36)\Input Async Parity Error
\Terminal Services Session(0 未知#37)\Input Async Parity Error
\Terminal Services Session(0 未知#38)\Input Async Parity Error
\Terminal Services Session(0 未知#39)\Input Async Parity Error
\Terminal Services Session(0 未知#40)\Input Async Parity Error
\Terminal Services Session(0 未知#41)\Input Async Parity Error
\Terminal Services Session(0 未知#42)\Input Async Parity Error
\Terminal Services Session(0 未知#43)\Input Async Parity Error
\Terminal Services Session(0 未知#44)\Input Async Parity Error
\Terminal Services Session(0 未知#45)\Input Async Parity Error
\Terminal Services Session(0 未知#46)\Input Async Parity Error
\Terminal Services Session(0 未知#47)\Input Async Parity Error
\Terminal Services Session(0 未知#48)\Input Async Parity Error
\Terminal Services Session(0 未知#49)\Input Async Parity Error
\Terminal Services Session(0 未知#50)\Input Async Parity Error
\Terminal Services Session(0 未知#51)\Input Async Parity Error
\Terminal Services Session(0 未知#52)\Input Async Parity Error
\Terminal Services Session(0 未知#53)\Input Async Parity Error
\Terminal Services Session(0 未知#54)\Input Async Parity Error
\Terminal Services Session(0 未知)\Input Transport Errors
\Terminal Services Session(0 未知#1)\Input Transport Errors
\Terminal Services Session(0 未知#2)\Input Transport Errors
\Terminal Services Session(0 未知#3)\Input Transport Errors
\Terminal Services Session(0 未知#4)\Input Transport Errors
\Terminal Services Session(0 未知#5)\Input Transport Errors
\Terminal Services Session(0 未知#6)\Input Transport Errors
\Terminal Services Session(0 未知#7)\Input Transport Errors
\Terminal Services Session(0 未知#8)\Input Transport Errors
\Terminal Services Session(0 未知#9)\Input Transport Errors
\Terminal Services Session(0 未知#10)\Input Transport Errors
\Terminal Services Session(0 未知#11)\Input Transport Errors
\Terminal Services Session(0 未知#12)\Input Transport Errors
\Terminal Services Session(0 未知#13)\Input Transport Errors
\Terminal Services Session(0 未知#14)\Input Transport Errors
\Terminal Services Session(0 未知#15)\Input Transport Errors
\Terminal Services Session(0 未知#16)\Input Transport Errors
\Terminal Services Session(0 未知#17)\Input Transport Errors
\Terminal Services Session(0 未知#18)\Input Transport Errors
\Terminal Services Session(0 未知#19)\Input Transport Errors
\Terminal Services Session(0 未知#20)\Input Transport Errors
\Terminal Services Session(0 未知#21)\Input Transport Errors
\Terminal Services Session(0 未知#22)\Input Transport Errors
\Terminal Services Session(0 未知#23)\Input Transport Errors
\Terminal Services Session(0 未知#24)\Input Transport Errors
\Terminal Services Session(0 未知#25)\Input Transport Errors
\Terminal Services Session(0 未知#26)\Input Transport Errors
\Terminal Services Session(0 未知#27)\Input Transport Errors
\Terminal Services Session(0 未知#28)\Input Transport Errors
\Terminal Services Session(0 未知#29)\Input Transport Errors
\Terminal Services Session(0 未知#30)\Input Transport Errors
\Terminal Services Session(0 未知#31)\Input Transport Errors
\Terminal Services Session(0 未知#32)\Input Transport Errors
\Terminal Services Session(0 未知#33)\Input Transport Errors
\Terminal Services Session(0 未知#34)\Input Transport Errors
\Terminal Services Session(0 未知#35)\Input Transport Errors
\Terminal Services Session(0 未知#36)\Input Transport Errors
\Terminal Services Session(0 未知#37)\Input Transport Errors
\Terminal Services Session(0 未知#38)\Input Transport Errors
\Terminal Services Session(0 未知#39)\Input Transport Errors
\Terminal Services Session(0 未知#40)\Input Transport Errors
\Terminal Services Session(0 未知#41)\Input Transport Errors
\Terminal Services Session(0 未知#42)\Input Transport Errors
\Terminal Services Session(0 未知#43)\Input Transport Errors
\Terminal Services Session(0 未知#44)\Input Transport Errors
\Terminal Services Session(0 未知#45)\Input Transport Errors
\Terminal Services Session(0 未知#46)\Input Transport Errors
\Terminal Services Session(0 未知#47)\Input Transport Errors
\Terminal Services Session(0 未知#48)\Input Transport Errors
\Terminal Services Session(0 未知#49)\Input Transport Errors
\Terminal Services Session(0 未知#50)\Input Transport Errors
\Terminal Services Session(0 未知#51)\Input Transport Errors
\Terminal Services Session(0 未知#52)\Input Transport Errors
\Terminal Services Session(0 未知#53)\Input Transport Errors
\Terminal Services Session(0 未知#54)\Input Transport Errors
\Terminal Services Session(0 未知)\Output WdBytes
\Terminal Services Session(0 未知#1)\Output WdBytes
\Terminal Services Session(0 未知#2)\Output WdBytes
\Terminal Services Session(0 未知#3)\Output WdBytes
\Terminal Services Session(0 未知#4)\Output WdBytes
\Terminal Services Session(0 未知#5)\Output WdBytes
\Terminal Services Session(0 未知#6)\Output WdBytes
\Terminal Services Session(0 未知#7)\Output WdBytes
\Terminal Services Session(0 未知#8)\Output WdBytes
\Terminal Services Session(0 未知#9)\Output WdBytes
\Terminal Services Session(0 未知#10)\Output WdBytes
\Terminal Services Session(0 未知#11)\Output WdBytes
\Terminal Services Session(0 未知#12)\Output WdBytes
\Terminal Services Session(0 未知#13)\Output WdBytes
\Terminal Services Session(0 未知#14)\Output WdBytes
\Terminal Services Session(0 未知#15)\Output WdBytes
\Terminal Services Session(0 未知#16)\Output WdBytes
\Terminal Services Session(0 未知#17)\Output WdBytes
\Terminal Services Session(0 未知#18)\Output WdBytes
\Terminal Services Session(0 未知#19)\Output WdBytes
\Terminal Services Session(0 未知#20)\Output WdBytes
\Terminal Services Session(0 未知#21)\Output WdBytes
\Terminal Services Session(0 未知#22)\Output WdBytes
\Terminal Services Session(0 未知#23)\Output WdBytes
\Terminal Services Session(0 未知#24)\Output WdBytes
\Terminal Services Session(0 未知#25)\Output WdBytes
\Terminal Services Session(0 未知#26)\Output WdBytes
\Terminal Services Session(0 未知#27)\Output WdBytes
\Terminal Services Session(0 未知#28)\Output WdBytes
\Terminal Services Session(0 未知#29)\Output WdBytes
\Terminal Services Session(0 未知#30)\Output WdBytes
\Terminal Services Session(0 未知#31)\Output WdBytes
\Terminal Services Session(0 未知#32)\Output WdBytes
\Terminal Services Session(0 未知#33)\Output WdBytes
\Terminal Services Session(0 未知#34)\Output WdBytes
\Terminal Services Session(0 未知#35)\Output WdBytes
\Terminal Services Session(0 未知#36)\Output WdBytes
\Terminal Services Session(0 未知#37)\Output WdBytes
\Terminal Services Session(0 未知#38)\Output WdBytes
\Terminal Services Session(0 未知#39)\Output WdBytes
\Terminal Services Session(0 未知#40)\Output WdBytes
\Terminal Services Session(0 未知#41)\Output WdBytes
\Terminal Services Session(0 未知#42)\Output WdBytes
\Terminal Services Session(0 未知#43)\Output WdBytes
\Terminal Services Session(0 未知#44)\Output WdBytes
\Terminal Services Session(0 未知#45)\Output WdBytes
\Terminal Services Session(0 未知#46)\Output WdBytes
\Terminal Services Session(0 未知#47)\Output WdBytes
\Terminal Services Session(0 未知#48)\Output WdBytes
\Terminal Services Session(0 未知#49)\Output WdBytes
\Terminal Services Session(0 未知#50)\Output WdBytes
\Terminal Services Session(0 未知#51)\Output WdBytes
\Terminal Services Session(0 未知#52)\Output WdBytes
\Terminal Services Session(0 未知#53)\Output WdBytes
\Terminal Services Session(0 未知#54)\Output WdBytes
\Terminal Services Session(0 未知)\Output WdFrames
\Terminal Services Session(0 未知#1)\Output WdFrames
\Terminal Services Session(0 未知#2)\Output WdFrames
\Terminal Services Session(0 未知#3)\Output WdFrames
\Terminal Services Session(0 未知#4)\Output WdFrames
\Terminal Services Session(0 未知#5)\Output WdFrames
\Terminal Services Session(0 未知#6)\Output WdFrames
\Terminal Services Session(0 未知#7)\Output WdFrames
\Terminal Services Session(0 未知#8)\Output WdFrames
\Terminal Services Session(0 未知#9)\Output WdFrames
\Terminal Services Session(0 未知#10)\Output WdFrames
\Terminal Services Session(0 未知#11)\Output WdFrames
\Terminal Services Session(0 未知#12)\Output WdFrames
\Terminal Services Session(0 未知#13)\Output WdFrames
\Terminal Services Session(0 未知#14)\Output WdFrames
\Terminal Services Session(0 未知#15)\Output WdFrames
\Terminal Services Session(0 未知#16)\Output WdFrames
\Terminal Services Session(0 未知#17)\Output WdFrames
\Terminal Services Session(0 未知#18)\Output WdFrames
\Terminal Services Session(0 未知#19)\Output WdFrames
\Terminal Services Session(0 未知#20)\Output WdFrames
\Terminal Services Session(0 未知#21)\Output WdFrames
\Terminal Services Session(0 未知#22)\Output WdFrames
\Terminal Services Session(0 未知#23)\Output WdFrames
\Terminal Services Session(0 未知#24)\Output WdFrames
\Terminal Services Session(0 未知#25)\Output WdFrames
\Terminal Services Session(0 未知#26)\Output WdFrames
\Terminal Services Session(0 未知#27)\Output WdFrames
\Terminal Services Session(0 未知#28)\Output WdFrames
\Terminal Services Session(0 未知#29)\Output WdFrames
\Terminal Services Session(0 未知#30)\Output WdFrames
\Terminal Services Session(0 未知#31)\Output WdFrames
\Terminal Services Session(0 未知#32)\Output WdFrames
\Terminal Services Session(0 未知#33)\Output WdFrames
\Terminal Services Session(0 未知#34)\Output WdFrames
\Terminal Services Session(0 未知#35)\Output WdFrames
\Terminal Services Session(0 未知#36)\Output WdFrames
\Terminal Services Session(0 未知#37)\Output WdFrames
\Terminal Services Session(0 未知#38)\Output WdFrames
\Terminal Services Session(0 未知#39)\Output WdFrames
\Terminal Services Session(0 未知#40)\Output WdFrames
\Terminal Services Session(0 未知#41)\Output WdFrames
\Terminal Services Session(0 未知#42)\Output WdFrames
\Terminal Services Session(0 未知#43)\Output WdFrames
\Terminal Services Session(0 未知#44)\Output WdFrames
\Terminal Services Session(0 未知#45)\Output WdFrames
\Terminal Services Session(0 未知#46)\Output WdFrames
\Terminal Services Session(0 未知#47)\Output WdFrames
\Terminal Services Session(0 未知#48)\Output WdFrames
\Terminal Services Session(0 未知#49)\Output WdFrames
\Terminal Services Session(0 未知#50)\Output WdFrames
\Terminal Services Session(0 未知#51)\Output WdFrames
\Terminal Services Session(0 未知#52)\Output WdFrames
\Terminal Services Session(0 未知#53)\Output WdFrames
\Terminal Services Session(0 未知#54)\Output WdFrames
\Terminal Services Session(0 未知)\Output WaitForOutBuf
\Terminal Services Session(0 未知#1)\Output WaitForOutBuf
\Terminal Services Session(0 未知#2)\Output WaitForOutBuf
\Terminal Services Session(0 未知#3)\Output WaitForOutBuf
\Terminal Services Session(0 未知#4)\Output WaitForOutBuf
\Terminal Services Session(0 未知#5)\Output WaitForOutBuf
\Terminal Services Session(0 未知#6)\Output WaitForOutBuf
\Terminal Services Session(0 未知#7)\Output WaitForOutBuf
\Terminal Services Session(0 未知#8)\Output WaitForOutBuf
\Terminal Services Session(0 未知#9)\Output WaitForOutBuf
\Terminal Services Session(0 未知#10)\Output WaitForOutBuf
\Terminal Services Session(0 未知#11)\Output WaitForOutBuf
\Terminal Services Session(0 未知#12)\Output WaitForOutBuf
\Terminal Services Session(0 未知#13)\Output WaitForOutBuf
\Terminal Services Session(0 未知#14)\Output WaitForOutBuf
\Terminal Services Session(0 未知#15)\Output WaitForOutBuf
\Terminal Services Session(0 未知#16)\Output WaitForOutBuf
\Terminal Services Session(0 未知#17)\Output WaitForOutBuf
\Terminal Services Session(0 未知#18)\Output WaitForOutBuf
\Terminal Services Session(0 未知#19)\Output WaitForOutBuf
\Terminal Services Session(0 未知#20)\Output WaitForOutBuf
\Terminal Services Session(0 未知#21)\Output WaitForOutBuf
\Terminal Services Session(0 未知#22)\Output WaitForOutBuf
\Terminal Services Session(0 未知#23)\Output WaitForOutBuf
\Terminal Services Session(0 未知#24)\Output WaitForOutBuf
\Terminal Services Session(0 未知#25)\Output WaitForOutBuf
\Terminal Services Session(0 未知#26)\Output WaitForOutBuf
\Terminal Services Session(0 未知#27)\Output WaitForOutBuf
\Terminal Services Session(0 未知#28)\Output WaitForOutBuf
\Terminal Services Session(0 未知#29)\Output WaitForOutBuf
\Terminal Services Session(0 未知#30)\Output WaitForOutBuf
\Terminal Services Session(0 未知#31)\Output WaitForOutBuf
\Terminal Services Session(0 未知#32)\Output WaitForOutBuf
\Terminal Services Session(0 未知#33)\Output WaitForOutBuf
\Terminal Services Session(0 未知#34)\Output WaitForOutBuf
\Terminal Services Session(0 未知#35)\Output WaitForOutBuf
\Terminal Services Session(0 未知#36)\Output WaitForOutBuf
\Terminal Services Session(0 未知#37)\Output WaitForOutBuf
\Terminal Services Session(0 未知#38)\Output WaitForOutBuf
\Terminal Services Session(0 未知#39)\Output WaitForOutBuf
\Terminal Services Session(0 未知#40)\Output WaitForOutBuf
\Terminal Services Session(0 未知#41)\Output WaitForOutBuf
\Terminal Services Session(0 未知#42)\Output WaitForOutBuf
\Terminal Services Session(0 未知#43)\Output WaitForOutBuf
\Terminal Services Session(0 未知#44)\Output WaitForOutBuf
\Terminal Services Session(0 未知#45)\Output WaitForOutBuf
\Terminal Services Session(0 未知#46)\Output WaitForOutBuf
\Terminal Services Session(0 未知#47)\Output WaitForOutBuf
\Terminal Services Session(0 未知#48)\Output WaitForOutBuf
\Terminal Services Session(0 未知#49)\Output WaitForOutBuf
\Terminal Services Session(0 未知#50)\Output WaitForOutBuf
\Terminal Services Session(0 未知#51)\Output WaitForOutBuf
\Terminal Services Session(0 未知#52)\Output WaitForOutBuf
\Terminal Services Session(0 未知#53)\Output WaitForOutBuf
\Terminal Services Session(0 未知#54)\Output WaitForOutBuf
\Terminal Services Session(0 未知)\Output Frames
\Terminal Services Session(0 未知#1)\Output Frames
\Terminal Services Session(0 未知#2)\Output Frames
\Terminal Services Session(0 未知#3)\Output Frames
\Terminal Services Session(0 未知#4)\Output Frames
\Terminal Services Session(0 未知#5)\Output Frames
\Terminal Services Session(0 未知#6)\Output Frames
\Terminal Services Session(0 未知#7)\Output Frames
\Terminal Services Session(0 未知#8)\Output Frames
\Terminal Services Session(0 未知#9)\Output Frames
\Terminal Services Session(0 未知#10)\Output Frames
\Terminal Services Session(0 未知#11)\Output Frames
\Terminal Services Session(0 未知#12)\Output Frames
\Terminal Services Session(0 未知#13)\Output Frames
\Terminal Services Session(0 未知#14)\Output Frames
\Terminal Services Session(0 未知#15)\Output Frames
\Terminal Services Session(0 未知#16)\Output Frames
\Terminal Services Session(0 未知#17)\Output Frames
\Terminal Services Session(0 未知#18)\Output Frames
\Terminal Services Session(0 未知#19)\Output Frames
\Terminal Services Session(0 未知#20)\Output Frames
\Terminal Services Session(0 未知#21)\Output Frames
\Terminal Services Session(0 未知#22)\Output Frames
\Terminal Services Session(0 未知#23)\Output Frames
\Terminal Services Session(0 未知#24)\Output Frames
\Terminal Services Session(0 未知#25)\Output Frames
\Terminal Services Session(0 未知#26)\Output Frames
\Terminal Services Session(0 未知#27)\Output Frames
\Terminal Services Session(0 未知#28)\Output Frames
\Terminal Services Session(0 未知#29)\Output Frames
\Terminal Services Session(0 未知#30)\Output Frames
\Terminal Services Session(0 未知#31)\Output Frames
\Terminal Services Session(0 未知#32)\Output Frames
\Terminal Services Session(0 未知#33)\Output Frames
\Terminal Services Session(0 未知#34)\Output Frames
\Terminal Services Session(0 未知#35)\Output Frames
\Terminal Services Session(0 未知#36)\Output Frames
\Terminal Services Session(0 未知#37)\Output Frames
\Terminal Services Session(0 未知#38)\Output Frames
\Terminal Services Session(0 未知#39)\Output Frames
\Terminal Services Session(0 未知#40)\Output Frames
\Terminal Services Session(0 未知#41)\Output Frames
\Terminal Services Session(0 未知#42)\Output Frames
\Terminal Services Session(0 未知#43)\Output Frames
\Terminal Services Session(0 未知#44)\Output Frames
\Terminal Services Session(0 未知#45)\Output Frames
\Terminal Services Session(0 未知#46)\Output Frames
\Terminal Services Session(0 未知#47)\Output Frames
\Terminal Services Session(0 未知#48)\Output Frames
\Terminal Services Session(0 未知#49)\Output Frames
\Terminal Services Session(0 未知#50)\Output Frames
\Terminal Services Session(0 未知#51)\Output Frames
\Terminal Services Session(0 未知#52)\Output Frames
\Terminal Services Session(0 未知#53)\Output Frames
\Terminal Services Session(0 未知#54)\Output Frames
\Terminal Services Session(0 未知)\Output Bytes
\Terminal Services Session(0 未知#1)\Output Bytes
\Terminal Services Session(0 未知#2)\Output Bytes
\Terminal Services Session(0 未知#3)\Output Bytes
\Terminal Services Session(0 未知#4)\Output Bytes
\Terminal Services Session(0 未知#5)\Output Bytes
\Terminal Services Session(0 未知#6)\Output Bytes
\Terminal Services Session(0 未知#7)\Output Bytes
\Terminal Services Session(0 未知#8)\Output Bytes
\Terminal Services Session(0 未知#9)\Output Bytes
\Terminal Services Session(0 未知#10)\Output Bytes
\Terminal Services Session(0 未知#11)\Output Bytes
\Terminal Services Session(0 未知#12)\Output Bytes
\Terminal Services Session(0 未知#13)\Output Bytes
\Terminal Services Session(0 未知#14)\Output Bytes
\Terminal Services Session(0 未知#15)\Output Bytes
\Terminal Services Session(0 未知#16)\Output Bytes
\Terminal Services Session(0 未知#17)\Output Bytes
\Terminal Services Session(0 未知#18)\Output Bytes
\Terminal Services Session(0 未知#19)\Output Bytes
\Terminal Services Session(0 未知#20)\Output Bytes
\Terminal Services Session(0 未知#21)\Output Bytes
\Terminal Services Session(0 未知#22)\Output Bytes
\Terminal Services Session(0 未知#23)\Output Bytes
\Terminal Services Session(0 未知#24)\Output Bytes
\Terminal Services Session(0 未知#25)\Output Bytes
\Terminal Services Session(0 未知#26)\Output Bytes
\Terminal Services Session(0 未知#27)\Output Bytes
\Terminal Services Session(0 未知#28)\Output Bytes
\Terminal Services Session(0 未知#29)\Output Bytes
\Terminal Services Session(0 未知#30)\Output Bytes
\Terminal Services Session(0 未知#31)\Output Bytes
\Terminal Services Session(0 未知#32)\Output Bytes
\Terminal Services Session(0 未知#33)\Output Bytes
\Terminal Services Session(0 未知#34)\Output Bytes
\Terminal Services Session(0 未知#35)\Output Bytes
\Terminal Services Session(0 未知#36)\Output Bytes
\Terminal Services Session(0 未知#37)\Output Bytes
\Terminal Services Session(0 未知#38)\Output Bytes
\Terminal Services Session(0 未知#39)\Output Bytes
\Terminal Services Session(0 未知#40)\Output Bytes
\Terminal Services Session(0 未知#41)\Output Bytes
\Terminal Services Session(0 未知#42)\Output Bytes
\Terminal Services Session(0 未知#43)\Output Bytes
\Terminal Services Session(0 未知#44)\Output Bytes
\Terminal Services Session(0 未知#45)\Output Bytes
\Terminal Services Session(0 未知#46)\Output Bytes
\Terminal Services Session(0 未知#47)\Output Bytes
\Terminal Services Session(0 未知#48)\Output Bytes
\Terminal Services Session(0 未知#49)\Output Bytes
\Terminal Services Session(0 未知#50)\Output Bytes
\Terminal Services Session(0 未知#51)\Output Bytes
\Terminal Services Session(0 未知#52)\Output Bytes
\Terminal Services Session(0 未知#53)\Output Bytes
\Terminal Services Session(0 未知#54)\Output Bytes
\Terminal Services Session(0 未知)\Output Compressed Bytes
\Terminal Services Session(0 未知#1)\Output Compressed Bytes
\Terminal Services Session(0 未知#2)\Output Compressed Bytes
\Terminal Services Session(0 未知#3)\Output Compressed Bytes
\Terminal Services Session(0 未知#4)\Output Compressed Bytes
\Terminal Services Session(0 未知#5)\Output Compressed Bytes
\Terminal Services Session(0 未知#6)\Output Compressed Bytes
\Terminal Services Session(0 未知#7)\Output Compressed Bytes
\Terminal Services Session(0 未知#8)\Output Compressed Bytes
\Terminal Services Session(0 未知#9)\Output Compressed Bytes
\Terminal Services Session(0 未知#10)\Output Compressed Bytes
\Terminal Services Session(0 未知#11)\Output Compressed Bytes
\Terminal Services Session(0 未知#12)\Output Compressed Bytes
\Terminal Services Session(0 未知#13)\Output Compressed Bytes
\Terminal Services Session(0 未知#14)\Output Compressed Bytes
\Terminal Services Session(0 未知#15)\Output Compressed Bytes
\Terminal Services Session(0 未知#16)\Output Compressed Bytes
\Terminal Services Session(0 未知#17)\Output Compressed Bytes
\Terminal Services Session(0 未知#18)\Output Compressed Bytes
\Terminal Services Session(0 未知#19)\Output Compressed Bytes
\Terminal Services Session(0 未知#20)\Output Compressed Bytes
\Terminal Services Session(0 未知#21)\Output Compressed Bytes
\Terminal Services Session(0 未知#22)\Output Compressed Bytes
\Terminal Services Session(0 未知#23)\Output Compressed Bytes
\Terminal Services Session(0 未知#24)\Output Compressed Bytes
\Terminal Services Session(0 未知#25)\Output Compressed Bytes
\Terminal Services Session(0 未知#26)\Output Compressed Bytes
\Terminal Services Session(0 未知#27)\Output Compressed Bytes
\Terminal Services Session(0 未知#28)\Output Compressed Bytes
\Terminal Services Session(0 未知#29)\Output Compressed Bytes
\Terminal Services Session(0 未知#30)\Output Compressed Bytes
\Terminal Services Session(0 未知#31)\Output Compressed Bytes
\Terminal Services Session(0 未知#32)\Output Compressed Bytes
\Terminal Services Session(0 未知#33)\Output Compressed Bytes
\Terminal Services Session(0 未知#34)\Output Compressed Bytes
\Terminal Services Session(0 未知#35)\Output Compressed Bytes
\Terminal Services Session(0 未知#36)\Output Compressed Bytes
\Terminal Services Session(0 未知#37)\Output Compressed Bytes
\Terminal Services Session(0 未知#38)\Output Compressed Bytes
\Terminal Services Session(0 未知#39)\Output Compressed Bytes
\Terminal Services Session(0 未知#40)\Output Compressed Bytes
\Terminal Services Session(0 未知#41)\Output Compressed Bytes
\Terminal Services Session(0 未知#42)\Output Compressed Bytes
\Terminal Services Session(0 未知#43)\Output Compressed Bytes
\Terminal Services Session(0 未知#44)\Output Compressed Bytes
\Terminal Services Session(0 未知#45)\Output Compressed Bytes
\Terminal Services Session(0 未知#46)\Output Compressed Bytes
\Terminal Services Session(0 未知#47)\Output Compressed Bytes
\Terminal Services Session(0 未知#48)\Output Compressed Bytes
\Terminal Services Session(0 未知#49)\Output Compressed Bytes
\Terminal Services Session(0 未知#50)\Output Compressed Bytes
\Terminal Services Session(0 未知#51)\Output Compressed Bytes
\Terminal Services Session(0 未知#52)\Output Compressed Bytes
\Terminal Services Session(0 未知#53)\Output Compressed Bytes
\Terminal Services Session(0 未知#54)\Output Compressed Bytes
\Terminal Services Session(0 未知)\Output Compress Flushes
\Terminal Services Session(0 未知#1)\Output Compress Flushes
\Terminal Services Session(0 未知#2)\Output Compress Flushes
\Terminal Services Session(0 未知#3)\Output Compress Flushes
\Terminal Services Session(0 未知#4)\Output Compress Flushes
\Terminal Services Session(0 未知#5)\Output Compress Flushes
\Terminal Services Session(0 未知#6)\Output Compress Flushes
\Terminal Services Session(0 未知#7)\Output Compress Flushes
\Terminal Services Session(0 未知#8)\Output Compress Flushes
\Terminal Services Session(0 未知#9)\Output Compress Flushes
\Terminal Services Session(0 未知#10)\Output Compress Flushes
\Terminal Services Session(0 未知#11)\Output Compress Flushes
\Terminal Services Session(0 未知#12)\Output Compress Flushes
\Terminal Services Session(0 未知#13)\Output Compress Flushes
\Terminal Services Session(0 未知#14)\Output Compress Flushes
\Terminal Services Session(0 未知#15)\Output Compress Flushes
\Terminal Services Session(0 未知#16)\Output Compress Flushes
\Terminal Services Session(0 未知#17)\Output Compress Flushes
\Terminal Services Session(0 未知#18)\Output Compress Flushes
\Terminal Services Session(0 未知#19)\Output Compress Flushes
\Terminal Services Session(0 未知#20)\Output Compress Flushes
\Terminal Services Session(0 未知#21)\Output Compress Flushes
\Terminal Services Session(0 未知#22)\Output Compress Flushes
\Terminal Services Session(0 未知#23)\Output Compress Flushes
\Terminal Services Session(0 未知#24)\Output Compress Flushes
\Terminal Services Session(0 未知#25)\Output Compress Flushes
\Terminal Services Session(0 未知#26)\Output Compress Flushes
\Terminal Services Session(0 未知#27)\Output Compress Flushes
\Terminal Services Session(0 未知#28)\Output Compress Flushes
\Terminal Services Session(0 未知#29)\Output Compress Flushes
\Terminal Services Session(0 未知#30)\Output Compress Flushes
\Terminal Services Session(0 未知#31)\Output Compress Flushes
\Terminal Services Session(0 未知#32)\Output Compress Flushes
\Terminal Services Session(0 未知#33)\Output Compress Flushes
\Terminal Services Session(0 未知#34)\Output Compress Flushes
\Terminal Services Session(0 未知#35)\Output Compress Flushes
\Terminal Services Session(0 未知#36)\Output Compress Flushes
\Terminal Services Session(0 未知#37)\Output Compress Flushes
\Terminal Services Session(0 未知#38)\Output Compress Flushes
\Terminal Services Session(0 未知#39)\Output Compress Flushes
\Terminal Services Session(0 未知#40)\Output Compress Flushes
\Terminal Services Session(0 未知#41)\Output Compress Flushes
\Terminal Services Session(0 未知#42)\Output Compress Flushes
\Terminal Services Session(0 未知#43)\Output Compress Flushes
\Terminal Services Session(0 未知#44)\Output Compress Flushes
\Terminal Services Session(0 未知#45)\Output Compress Flushes
\Terminal Services Session(0 未知#46)\Output Compress Flushes
\Terminal Services Session(0 未知#47)\Output Compress Flushes
\Terminal Services Session(0 未知#48)\Output Compress Flushes
\Terminal Services Session(0 未知#49)\Output Compress Flushes
\Terminal Services Session(0 未知#50)\Output Compress Flushes
\Terminal Services Session(0 未知#51)\Output Compress Flushes
\Terminal Services Session(0 未知#52)\Output Compress Flushes
\Terminal Services Session(0 未知#53)\Output Compress Flushes
\Terminal Services Session(0 未知#54)\Output Compress Flushes
\Terminal Services Session(0 未知)\Output Errors
\Terminal Services Session(0 未知#1)\Output Errors
\Terminal Services Session(0 未知#2)\Output Errors
\Terminal Services Session(0 未知#3)\Output Errors
\Terminal Services Session(0 未知#4)\Output Errors
\Terminal Services Session(0 未知#5)\Output Errors
\Terminal Services Session(0 未知#6)\Output Errors
\Terminal Services Session(0 未知#7)\Output Errors
\Terminal Services Session(0 未知#8)\Output Errors
\Terminal Services Session(0 未知#9)\Output Errors
\Terminal Services Session(0 未知#10)\Output Errors
\Terminal Services Session(0 未知#11)\Output Errors
\Terminal Services Session(0 未知#12)\Output Errors
\Terminal Services Session(0 未知#13)\Output Errors
\Terminal Services Session(0 未知#14)\Output Errors
\Terminal Services Session(0 未知#15)\Output Errors
\Terminal Services Session(0 未知#16)\Output Errors
\Terminal Services Session(0 未知#17)\Output Errors
\Terminal Services Session(0 未知#18)\Output Errors
\Terminal Services Session(0 未知#19)\Output Errors
\Terminal Services Session(0 未知#20)\Output Errors
\Terminal Services Session(0 未知#21)\Output Errors
\Terminal Services Session(0 未知#22)\Output Errors
\Terminal Services Session(0 未知#23)\Output Errors
\Terminal Services Session(0 未知#24)\Output Errors
\Terminal Services Session(0 未知#25)\Output Errors
\Terminal Services Session(0 未知#26)\Output Errors
\Terminal Services Session(0 未知#27)\Output Errors
\Terminal Services Session(0 未知#28)\Output Errors
\Terminal Services Session(0 未知#29)\Output Errors
\Terminal Services Session(0 未知#30)\Output Errors
\Terminal Services Session(0 未知#31)\Output Errors
\Terminal Services Session(0 未知#32)\Output Errors
\Terminal Services Session(0 未知#33)\Output Errors
\Terminal Services Session(0 未知#34)\Output Errors
\Terminal Services Session(0 未知#35)\Output Errors
\Terminal Services Session(0 未知#36)\Output Errors
\Terminal Services Session(0 未知#37)\Output Errors
\Terminal Services Session(0 未知#38)\Output Errors
\Terminal Services Session(0 未知#39)\Output Errors
\Terminal Services Session(0 未知#40)\Output Errors
\Terminal Services Session(0 未知#41)\Output Errors
\Terminal Services Session(0 未知#42)\Output Errors
\Terminal Services Session(0 未知#43)\Output Errors
\Terminal Services Session(0 未知#44)\Output Errors
\Terminal Services Session(0 未知#45)\Output Errors
\Terminal Services Session(0 未知#46)\Output Errors
\Terminal Services Session(0 未知#47)\Output Errors
\Terminal Services Session(0 未知#48)\Output Errors
\Terminal Services Session(0 未知#49)\Output Errors
\Terminal Services Session(0 未知#50)\Output Errors
\Terminal Services Session(0 未知#51)\Output Errors
\Terminal Services Session(0 未知#52)\Output Errors
\Terminal Services Session(0 未知#53)\Output Errors
\Terminal Services Session(0 未知#54)\Output Errors
\Terminal Services Session(0 未知)\Output Timeouts
\Terminal Services Session(0 未知#1)\Output Timeouts
\Terminal Services Session(0 未知#2)\Output Timeouts
\Terminal Services Session(0 未知#3)\Output Timeouts
\Terminal Services Session(0 未知#4)\Output Timeouts
\Terminal Services Session(0 未知#5)\Output Timeouts
\Terminal Services Session(0 未知#6)\Output Timeouts
\Terminal Services Session(0 未知#7)\Output Timeouts
\Terminal Services Session(0 未知#8)\Output Timeouts
\Terminal Services Session(0 未知#9)\Output Timeouts
\Terminal Services Session(0 未知#10)\Output Timeouts
\Terminal Services Session(0 未知#11)\Output Timeouts
\Terminal Services Session(0 未知#12)\Output Timeouts
\Terminal Services Session(0 未知#13)\Output Timeouts
\Terminal Services Session(0 未知#14)\Output Timeouts
\Terminal Services Session(0 未知#15)\Output Timeouts
\Terminal Services Session(0 未知#16)\Output Timeouts
\Terminal Services Session(0 未知#17)\Output Timeouts
\Terminal Services Session(0 未知#18)\Output Timeouts
\Terminal Services Session(0 未知#19)\Output Timeouts
\Terminal Services Session(0 未知#20)\Output Timeouts
\Terminal Services Session(0 未知#21)\Output Timeouts
\Terminal Services Session(0 未知#22)\Output Timeouts
\Terminal Services Session(0 未知#23)\Output Timeouts
\Terminal Services Session(0 未知#24)\Output Timeouts
\Terminal Services Session(0 未知#25)\Output Timeouts
\Terminal Services Session(0 未知#26)\Output Timeouts
\Terminal Services Session(0 未知#27)\Output Timeouts
\Terminal Services Session(0 未知#28)\Output Timeouts
\Terminal Services Session(0 未知#29)\Output Timeouts
\Terminal Services Session(0 未知#30)\Output Timeouts
\Terminal Services Session(0 未知#31)\Output Timeouts
\Terminal Services Session(0 未知#32)\Output Timeouts
\Terminal Services Session(0 未知#33)\Output Timeouts
\Terminal Services Session(0 未知#34)\Output Timeouts
\Terminal Services Session(0 未知#35)\Output Timeouts
\Terminal Services Session(0 未知#36)\Output Timeouts
\Terminal Services Session(0 未知#37)\Output Timeouts
\Terminal Services Session(0 未知#38)\Output Timeouts
\Terminal Services Session(0 未知#39)\Output Timeouts
\Terminal Services Session(0 未知#40)\Output Timeouts
\Terminal Services Session(0 未知#41)\Output Timeouts
\Terminal Services Session(0 未知#42)\Output Timeouts
\Terminal Services Session(0 未知#43)\Output Timeouts
\Terminal Services Session(0 未知#44)\Output Timeouts
\Terminal Services Session(0 未知#45)\Output Timeouts
\Terminal Services Session(0 未知#46)\Output Timeouts
\Terminal Services Session(0 未知#47)\Output Timeouts
\Terminal Services Session(0 未知#48)\Output Timeouts
\Terminal Services Session(0 未知#49)\Output Timeouts
\Terminal Services Session(0 未知#50)\Output Timeouts
\Terminal Services Session(0 未知#51)\Output Timeouts
\Terminal Services Session(0 未知#52)\Output Timeouts
\Terminal Services Session(0 未知#53)\Output Timeouts
\Terminal Services Session(0 未知#54)\Output Timeouts
\Terminal Services Session(0 未知)\Output Async Frame Error
\Terminal Services Session(0 未知#1)\Output Async Frame Error
\Terminal Services Session(0 未知#2)\Output Async Frame Error
\Terminal Services Session(0 未知#3)\Output Async Frame Error
\Terminal Services Session(0 未知#4)\Output Async Frame Error
\Terminal Services Session(0 未知#5)\Output Async Frame Error
\Terminal Services Session(0 未知#6)\Output Async Frame Error
\Terminal Services Session(0 未知#7)\Output Async Frame Error
\Terminal Services Session(0 未知#8)\Output Async Frame Error
\Terminal Services Session(0 未知#9)\Output Async Frame Error
\Terminal Services Session(0 未知#10)\Output Async Frame Error
\Terminal Services Session(0 未知#11)\Output Async Frame Error
\Terminal Services Session(0 未知#12)\Output Async Frame Error
\Terminal Services Session(0 未知#13)\Output Async Frame Error
\Terminal Services Session(0 未知#14)\Output Async Frame Error
\Terminal Services Session(0 未知#15)\Output Async Frame Error
\Terminal Services Session(0 未知#16)\Output Async Frame Error
\Terminal Services Session(0 未知#17)\Output Async Frame Error
\Terminal Services Session(0 未知#18)\Output Async Frame Error
\Terminal Services Session(0 未知#19)\Output Async Frame Error
\Terminal Services Session(0 未知#20)\Output Async Frame Error
\Terminal Services Session(0 未知#21)\Output Async Frame Error
\Terminal Services Session(0 未知#22)\Output Async Frame Error
\Terminal Services Session(0 未知#23)\Output Async Frame Error
\Terminal Services Session(0 未知#24)\Output Async Frame Error
\Terminal Services Session(0 未知#25)\Output Async Frame Error
\Terminal Services Session(0 未知#26)\Output Async Frame Error
\Terminal Services Session(0 未知#27)\Output Async Frame Error
\Terminal Services Session(0 未知#28)\Output Async Frame Error
\Terminal Services Session(0 未知#29)\Output Async Frame Error
\Terminal Services Session(0 未知#30)\Output Async Frame Error
\Terminal Services Session(0 未知#31)\Output Async Frame Error
\Terminal Services Session(0 未知#32)\Output Async Frame Error
\Terminal Services Session(0 未知#33)\Output Async Frame Error
\Terminal Services Session(0 未知#34)\Output Async Frame Error
\Terminal Services Session(0 未知#35)\Output Async Frame Error
\Terminal Services Session(0 未知#36)\Output Async Frame Error
\Terminal Services Session(0 未知#37)\Output Async Frame Error
\Terminal Services Session(0 未知#38)\Output Async Frame Error
\Terminal Services Session(0 未知#39)\Output Async Frame Error
\Terminal Services Session(0 未知#40)\Output Async Frame Error
\Terminal Services Session(0 未知#41)\Output Async Frame Error
\Terminal Services Session(0 未知#42)\Output Async Frame Error
\Terminal Services Session(0 未知#43)\Output Async Frame Error
\Terminal Services Session(0 未知#44)\Output Async Frame Error
\Terminal Services Session(0 未知#45)\Output Async Frame Error
\Terminal Services Session(0 未知#46)\Output Async Frame Error
\Terminal Services Session(0 未知#47)\Output Async Frame Error
\Terminal Services Session(0 未知#48)\Output Async Frame Error
\Terminal Services Session(0 未知#49)\Output Async Frame Error
\Terminal Services Session(0 未知#50)\Output Async Frame Error
\Terminal Services Session(0 未知#51)\Output Async Frame Error
\Terminal Services Session(0 未知#52)\Output Async Frame Error
\Terminal Services Session(0 未知#53)\Output Async Frame Error
\Terminal Services Session(0 未知#54)\Output Async Frame Error
\Terminal Services Session(0 未知)\Output Async Overrun
\Terminal Services Session(0 未知#1)\Output Async Overrun
\Terminal Services Session(0 未知#2)\Output Async Overrun
\Terminal Services Session(0 未知#3)\Output Async Overrun
\Terminal Services Session(0 未知#4)\Output Async Overrun
\Terminal Services Session(0 未知#5)\Output Async Overrun
\Terminal Services Session(0 未知#6)\Output Async Overrun
\Terminal Services Session(0 未知#7)\Output Async Overrun
\Terminal Services Session(0 未知#8)\Output Async Overrun
\Terminal Services Session(0 未知#9)\Output Async Overrun
\Terminal Services Session(0 未知#10)\Output Async Overrun
\Terminal Services Session(0 未知#11)\Output Async Overrun
\Terminal Services Session(0 未知#12)\Output Async Overrun
\Terminal Services Session(0 未知#13)\Output Async Overrun
\Terminal Services Session(0 未知#14)\Output Async Overrun
\Terminal Services Session(0 未知#15)\Output Async Overrun
\Terminal Services Session(0 未知#16)\Output Async Overrun
\Terminal Services Session(0 未知#17)\Output Async Overrun
\Terminal Services Session(0 未知#18)\Output Async Overrun
\Terminal Services Session(0 未知#19)\Output Async Overrun
\Terminal Services Session(0 未知#20)\Output Async Overrun
\Terminal Services Session(0 未知#21)\Output Async Overrun
\Terminal Services Session(0 未知#22)\Output Async Overrun
\Terminal Services Session(0 未知#23)\Output Async Overrun
\Terminal Services Session(0 未知#24)\Output Async Overrun
\Terminal Services Session(0 未知#25)\Output Async Overrun
\Terminal Services Session(0 未知#26)\Output Async Overrun
\Terminal Services Session(0 未知#27)\Output Async Overrun
\Terminal Services Session(0 未知#28)\Output Async Overrun
\Terminal Services Session(0 未知#29)\Output Async Overrun
\Terminal Services Session(0 未知#30)\Output Async Overrun
\Terminal Services Session(0 未知#31)\Output Async Overrun
\Terminal Services Session(0 未知#32)\Output Async Overrun
\Terminal Services Session(0 未知#33)\Output Async Overrun
\Terminal Services Session(0 未知#34)\Output Async Overrun
\Terminal Services Session(0 未知#35)\Output Async Overrun
\Terminal Services Session(0 未知#36)\Output Async Overrun
\Terminal Services Session(0 未知#37)\Output Async Overrun
\Terminal Services Session(0 未知#38)\Output Async Overrun
\Terminal Services Session(0 未知#39)\Output Async Overrun
\Terminal Services Session(0 未知#40)\Output Async Overrun
\Terminal Services Session(0 未知#41)\Output Async Overrun
\Terminal Services Session(0 未知#42)\Output Async Overrun
\Terminal Services Session(0 未知#43)\Output Async Overrun
\Terminal Services Session(0 未知#44)\Output Async Overrun
\Terminal Services Session(0 未知#45)\Output Async Overrun
\Terminal Services Session(0 未知#46)\Output Async Overrun
\Terminal Services Session(0 未知#47)\Output Async Overrun
\Terminal Services Session(0 未知#48)\Output Async Overrun
\Terminal Services Session(0 未知#49)\Output Async Overrun
\Terminal Services Session(0 未知#50)\Output Async Overrun
\Terminal Services Session(0 未知#51)\Output Async Overrun
\Terminal Services Session(0 未知#52)\Output Async Overrun
\Terminal Services Session(0 未知#53)\Output Async Overrun
\Terminal Services Session(0 未知#54)\Output Async Overrun
\Terminal Services Session(0 未知)\Output Async Overflow
\Terminal Services Session(0 未知#1)\Output Async Overflow
\Terminal Services Session(0 未知#2)\Output Async Overflow
\Terminal Services Session(0 未知#3)\Output Async Overflow
\Terminal Services Session(0 未知#4)\Output Async Overflow
\Terminal Services Session(0 未知#5)\Output Async Overflow
\Terminal Services Session(0 未知#6)\Output Async Overflow
\Terminal Services Session(0 未知#7)\Output Async Overflow
\Terminal Services Session(0 未知#8)\Output Async Overflow
\Terminal Services Session(0 未知#9)\Output Async Overflow
\Terminal Services Session(0 未知#10)\Output Async Overflow
\Terminal Services Session(0 未知#11)\Output Async Overflow
\Terminal Services Session(0 未知#12)\Output Async Overflow
\Terminal Services Session(0 未知#13)\Output Async Overflow
\Terminal Services Session(0 未知#14)\Output Async Overflow
\Terminal Services Session(0 未知#15)\Output Async Overflow
\Terminal Services Session(0 未知#16)\Output Async Overflow
\Terminal Services Session(0 未知#17)\Output Async Overflow
\Terminal Services Session(0 未知#18)\Output Async Overflow
\Terminal Services Session(0 未知#19)\Output Async Overflow
\Terminal Services Session(0 未知#20)\Output Async Overflow
\Terminal Services Session(0 未知#21)\Output Async Overflow
\Terminal Services Session(0 未知#22)\Output Async Overflow
\Terminal Services Session(0 未知#23)\Output Async Overflow
\Terminal Services Session(0 未知#24)\Output Async Overflow
\Terminal Services Session(0 未知#25)\Output Async Overflow
\Terminal Services Session(0 未知#26)\Output Async Overflow
\Terminal Services Session(0 未知#27)\Output Async Overflow
\Terminal Services Session(0 未知#28)\Output Async Overflow
\Terminal Services Session(0 未知#29)\Output Async Overflow
\Terminal Services Session(0 未知#30)\Output Async Overflow
\Terminal Services Session(0 未知#31)\Output Async Overflow
\Terminal Services Session(0 未知#32)\Output Async Overflow
\Terminal Services Session(0 未知#33)\Output Async Overflow
\Terminal Services Session(0 未知#34)\Output Async Overflow
\Terminal Services Session(0 未知#35)\Output Async Overflow
\Terminal Services Session(0 未知#36)\Output Async Overflow
\Terminal Services Session(0 未知#37)\Output Async Overflow
\Terminal Services Session(0 未知#38)\Output Async Overflow
\Terminal Services Session(0 未知#39)\Output Async Overflow
\Terminal Services Session(0 未知#40)\Output Async Overflow
\Terminal Services Session(0 未知#41)\Output Async Overflow
\Terminal Services Session(0 未知#42)\Output Async Overflow
\Terminal Services Session(0 未知#43)\Output Async Overflow
\Terminal Services Session(0 未知#44)\Output Async Overflow
\Terminal Services Session(0 未知#45)\Output Async Overflow
\Terminal Services Session(0 未知#46)\Output Async Overflow
\Terminal Services Session(0 未知#47)\Output Async Overflow
\Terminal Services Session(0 未知#48)\Output Async Overflow
\Terminal Services Session(0 未知#49)\Output Async Overflow
\Terminal Services Session(0 未知#50)\Output Async Overflow
\Terminal Services Session(0 未知#51)\Output Async Overflow
\Terminal Services Session(0 未知#52)\Output Async Overflow
\Terminal Services Session(0 未知#53)\Output Async Overflow
\Terminal Services Session(0 未知#54)\Output Async Overflow
\Terminal Services Session(0 未知)\Output Async Parity Error
\Terminal Services Session(0 未知#1)\Output Async Parity Error
\Terminal Services Session(0 未知#2)\Output Async Parity Error
\Terminal Services Session(0 未知#3)\Output Async Parity Error
\Terminal Services Session(0 未知#4)\Output Async Parity Error
\Terminal Services Session(0 未知#5)\Output Async Parity Error
\Terminal Services Session(0 未知#6)\Output Async Parity Error
\Terminal Services Session(0 未知#7)\Output Async Parity Error
\Terminal Services Session(0 未知#8)\Output Async Parity Error
\Terminal Services Session(0 未知#9)\Output Async Parity Error
\Terminal Services Session(0 未知#10)\Output Async Parity Error
\Terminal Services Session(0 未知#11)\Output Async Parity Error
\Terminal Services Session(0 未知#12)\Output Async Parity Error
\Terminal Services Session(0 未知#13)\Output Async Parity Error
\Terminal Services Session(0 未知#14)\Output Async Parity Error
\Terminal Services Session(0 未知#15)\Output Async Parity Error
\Terminal Services Session(0 未知#16)\Output Async Parity Error
\Terminal Services Session(0 未知#17)\Output Async Parity Error
\Terminal Services Session(0 未知#18)\Output Async Parity Error
\Terminal Services Session(0 未知#19)\Output Async Parity Error
\Terminal Services Session(0 未知#20)\Output Async Parity Error
\Terminal Services Session(0 未知#21)\Output Async Parity Error
\Terminal Services Session(0 未知#22)\Output Async Parity Error
\Terminal Services Session(0 未知#23)\Output Async Parity Error
\Terminal Services Session(0 未知#24)\Output Async Parity Error
\Terminal Services Session(0 未知#25)\Output Async Parity Error
\Terminal Services Session(0 未知#26)\Output Async Parity Error
\Terminal Services Session(0 未知#27)\Output Async Parity Error
\Terminal Services Session(0 未知#28)\Output Async Parity Error
\Terminal Services Session(0 未知#29)\Output Async Parity Error
\Terminal Services Session(0 未知#30)\Output Async Parity Error
\Terminal Services Session(0 未知#31)\Output Async Parity Error
\Terminal Services Session(0 未知#32)\Output Async Parity Error
\Terminal Services Session(0 未知#33)\Output Async Parity Error
\Terminal Services Session(0 未知#34)\Output Async Parity Error
\Terminal Services Session(0 未知#35)\Output Async Parity Error
\Terminal Services Session(0 未知#36)\Output Async Parity Error
\Terminal Services Session(0 未知#37)\Output Async Parity Error
\Terminal Services Session(0 未知#38)\Output Async Parity Error
\Terminal Services Session(0 未知#39)\Output Async Parity Error
\Terminal Services Session(0 未知#40)\Output Async Parity Error
\Terminal Services Session(0 未知#41)\Output Async Parity Error
\Terminal Services Session(0 未知#42)\Output Async Parity Error
\Terminal Services Session(0 未知#43)\Output Async Parity Error
\Terminal Services Session(0 未知#44)\Output Async Parity Error
\Terminal Services Session(0 未知#45)\Output Async Parity Error
\Terminal Services Session(0 未知#46)\Output Async Parity Error
\Terminal Services Session(0 未知#47)\Output Async Parity Error
\Terminal Services Session(0 未知#48)\Output Async Parity Error
\Terminal Services Session(0 未知#49)\Output Async Parity Error
\Terminal Services Session(0 未知#50)\Output Async Parity Error
\Terminal Services Session(0 未知#51)\Output Async Parity Error
\Terminal Services Session(0 未知#52)\Output Async Parity Error
\Terminal Services Session(0 未知#53)\Output Async Parity Error
\Terminal Services Session(0 未知#54)\Output Async Parity Error
\Terminal Services Session(0 未知)\Output Transport Errors
\Terminal Services Session(0 未知#1)\Output Transport Errors
\Terminal Services Session(0 未知#2)\Output Transport Errors
\Terminal Services Session(0 未知#3)\Output Transport Errors
\Terminal Services Session(0 未知#4)\Output Transport Errors
\Terminal Services Session(0 未知#5)\Output Transport Errors
\Terminal Services Session(0 未知#6)\Output Transport Errors
\Terminal Services Session(0 未知#7)\Output Transport Errors
\Terminal Services Session(0 未知#8)\Output Transport Errors
\Terminal Services Session(0 未知#9)\Output Transport Errors
\Terminal Services Session(0 未知#10)\Output Transport Errors
\Terminal Services Session(0 未知#11)\Output Transport Errors
\Terminal Services Session(0 未知#12)\Output Transport Errors
\Terminal Services Session(0 未知#13)\Output Transport Errors
\Terminal Services Session(0 未知#14)\Output Transport Errors
\Terminal Services Session(0 未知#15)\Output Transport Errors
\Terminal Services Session(0 未知#16)\Output Transport Errors
\Terminal Services Session(0 未知#17)\Output Transport Errors
\Terminal Services Session(0 未知#18)\Output Transport Errors
\Terminal Services Session(0 未知#19)\Output Transport Errors
\Terminal Services Session(0 未知#20)\Output Transport Errors
\Terminal Services Session(0 未知#21)\Output Transport Errors
\Terminal Services Session(0 未知#22)\Output Transport Errors
\Terminal Services Session(0 未知#23)\Output Transport Errors
\Terminal Services Session(0 未知#24)\Output Transport Errors
\Terminal Services Session(0 未知#25)\Output Transport Errors
\Terminal Services Session(0 未知#26)\Output Transport Errors
\Terminal Services Session(0 未知#27)\Output Transport Errors
\Terminal Services Session(0 未知#28)\Output Transport Errors
\Terminal Services Session(0 未知#29)\Output Transport Errors
\Terminal Services Session(0 未知#30)\Output Transport Errors
\Terminal Services Session(0 未知#31)\Output Transport Errors
\Terminal Services Session(0 未知#32)\Output Transport Errors
\Terminal Services Session(0 未知#33)\Output Transport Errors
\Terminal Services Session(0 未知#34)\Output Transport Errors
\Terminal Services Session(0 未知#35)\Output Transport Errors
\Terminal Services Session(0 未知#36)\Output Transport Errors
\Terminal Services Session(0 未知#37)\Output Transport Errors
\Terminal Services Session(0 未知#38)\Output Transport Errors
\Terminal Services Session(0 未知#39)\Output Transport Errors
\Terminal Services Session(0 未知#40)\Output Transport Errors
\Terminal Services Session(0 未知#41)\Output Transport Errors
\Terminal Services Session(0 未知#42)\Output Transport Errors
\Terminal Services Session(0 未知#43)\Output Transport Errors
\Terminal Services Session(0 未知#44)\Output Transport Errors
\Terminal Services Session(0 未知#45)\Output Transport Errors
\Terminal Services Session(0 未知#46)\Output Transport Errors
\Terminal Services Session(0 未知#47)\Output Transport Errors
\Terminal Services Session(0 未知#48)\Output Transport Errors
\Terminal Services Session(0 未知#49)\Output Transport Errors
\Terminal Services Session(0 未知#50)\Output Transport Errors
\Terminal Services Session(0 未知#51)\Output Transport Errors
\Terminal Services Session(0 未知#52)\Output Transport Errors
\Terminal Services Session(0 未知#53)\Output Transport Errors
\Terminal Services Session(0 未知#54)\Output Transport Errors
\Terminal Services Session(0 未知)\Total WdBytes
\Terminal Services Session(0 未知#1)\Total WdBytes
\Terminal Services Session(0 未知#2)\Total WdBytes
\Terminal Services Session(0 未知#3)\Total WdBytes
\Terminal Services Session(0 未知#4)\Total WdBytes
\Terminal Services Session(0 未知#5)\Total WdBytes
\Terminal Services Session(0 未知#6)\Total WdBytes
\Terminal Services Session(0 未知#7)\Total WdBytes
\Terminal Services Session(0 未知#8)\Total WdBytes
\Terminal Services Session(0 未知#9)\Total WdBytes
\Terminal Services Session(0 未知#10)\Total WdBytes
\Terminal Services Session(0 未知#11)\Total WdBytes
\Terminal Services Session(0 未知#12)\Total WdBytes
\Terminal Services Session(0 未知#13)\Total WdBytes
\Terminal Services Session(0 未知#14)\Total WdBytes
\Terminal Services Session(0 未知#15)\Total WdBytes
\Terminal Services Session(0 未知#16)\Total WdBytes
\Terminal Services Session(0 未知#17)\Total WdBytes
\Terminal Services Session(0 未知#18)\Total WdBytes
\Terminal Services Session(0 未知#19)\Total WdBytes
\Terminal Services Session(0 未知#20)\Total WdBytes
\Terminal Services Session(0 未知#21)\Total WdBytes
\Terminal Services Session(0 未知#22)\Total WdBytes
\Terminal Services Session(0 未知#23)\Total WdBytes
\Terminal Services Session(0 未知#24)\Total WdBytes
\Terminal Services Session(0 未知#25)\Total WdBytes
\Terminal Services Session(0 未知#26)\Total WdBytes
\Terminal Services Session(0 未知#27)\Total WdBytes
\Terminal Services Session(0 未知#28)\Total WdBytes
\Terminal Services Session(0 未知#29)\Total WdBytes
\Terminal Services Session(0 未知#30)\Total WdBytes
\Terminal Services Session(0 未知#31)\Total WdBytes
\Terminal Services Session(0 未知#32)\Total WdBytes
\Terminal Services Session(0 未知#33)\Total WdBytes
\Terminal Services Session(0 未知#34)\Total WdBytes
\Terminal Services Session(0 未知#35)\Total WdBytes
\Terminal Services Session(0 未知#36)\Total WdBytes
\Terminal Services Session(0 未知#37)\Total WdBytes
\Terminal Services Session(0 未知#38)\Total WdBytes
\Terminal Services Session(0 未知#39)\Total WdBytes
\Terminal Services Session(0 未知#40)\Total WdBytes
\Terminal Services Session(0 未知#41)\Total WdBytes
\Terminal Services Session(0 未知#42)\Total WdBytes
\Terminal Services Session(0 未知#43)\Total WdBytes
\Terminal Services Session(0 未知#44)\Total WdBytes
\Terminal Services Session(0 未知#45)\Total WdBytes
\Terminal Services Session(0 未知#46)\Total WdBytes
\Terminal Services Session(0 未知#47)\Total WdBytes
\Terminal Services Session(0 未知#48)\Total WdBytes
\Terminal Services Session(0 未知#49)\Total WdBytes
\Terminal Services Session(0 未知#50)\Total WdBytes
\Terminal Services Session(0 未知#51)\Total WdBytes
\Terminal Services Session(0 未知#52)\Total WdBytes
\Terminal Services Session(0 未知#53)\Total WdBytes
\Terminal Services Session(0 未知#54)\Total WdBytes
\Terminal Services Session(0 未知)\Total WdFrames
\Terminal Services Session(0 未知#1)\Total WdFrames
\Terminal Services Session(0 未知#2)\Total WdFrames
\Terminal Services Session(0 未知#3)\Total WdFrames
\Terminal Services Session(0 未知#4)\Total WdFrames
\Terminal Services Session(0 未知#5)\Total WdFrames
\Terminal Services Session(0 未知#6)\Total WdFrames
\Terminal Services Session(0 未知#7)\Total WdFrames
\Terminal Services Session(0 未知#8)\Total WdFrames
\Terminal Services Session(0 未知#9)\Total WdFrames
\Terminal Services Session(0 未知#10)\Total WdFrames
\Terminal Services Session(0 未知#11)\Total WdFrames
\Terminal Services Session(0 未知#12)\Total WdFrames
\Terminal Services Session(0 未知#13)\Total WdFrames
\Terminal Services Session(0 未知#14)\Total WdFrames
\Terminal Services Session(0 未知#15)\Total WdFrames
\Terminal Services Session(0 未知#16)\Total WdFrames
\Terminal Services Session(0 未知#17)\Total WdFrames
\Terminal Services Session(0 未知#18)\Total WdFrames
\Terminal Services Session(0 未知#19)\Total WdFrames
\Terminal Services Session(0 未知#20)\Total WdFrames
\Terminal Services Session(0 未知#21)\Total WdFrames
\Terminal Services Session(0 未知#22)\Total WdFrames
\Terminal Services Session(0 未知#23)\Total WdFrames
\Terminal Services Session(0 未知#24)\Total WdFrames
\Terminal Services Session(0 未知#25)\Total WdFrames
\Terminal Services Session(0 未知#26)\Total WdFrames
\Terminal Services Session(0 未知#27)\Total WdFrames
\Terminal Services Session(0 未知#28)\Total WdFrames
\Terminal Services Session(0 未知#29)\Total WdFrames
\Terminal Services Session(0 未知#30)\Total WdFrames
\Terminal Services Session(0 未知#31)\Total WdFrames
\Terminal Services Session(0 未知#32)\Total WdFrames
\Terminal Services Session(0 未知#33)\Total WdFrames
\Terminal Services Session(0 未知#34)\Total WdFrames
\Terminal Services Session(0 未知#35)\Total WdFrames
\Terminal Services Session(0 未知#36)\Total WdFrames
\Terminal Services Session(0 未知#37)\Total WdFrames
\Terminal Services Session(0 未知#38)\Total WdFrames
\Terminal Services Session(0 未知#39)\Total WdFrames
\Terminal Services Session(0 未知#40)\Total WdFrames
\Terminal Services Session(0 未知#41)\Total WdFrames
\Terminal Services Session(0 未知#42)\Total WdFrames
\Terminal Services Session(0 未知#43)\Total WdFrames
\Terminal Services Session(0 未知#44)\Total WdFrames
\Terminal Services Session(0 未知#45)\Total WdFrames
\Terminal Services Session(0 未知#46)\Total WdFrames
\Terminal Services Session(0 未知#47)\Total WdFrames
\Terminal Services Session(0 未知#48)\Total WdFrames
\Terminal Services Session(0 未知#49)\Total WdFrames
\Terminal Services Session(0 未知#50)\Total WdFrames
\Terminal Services Session(0 未知#51)\Total WdFrames
\Terminal Services Session(0 未知#52)\Total WdFrames
\Terminal Services Session(0 未知#53)\Total WdFrames
\Terminal Services Session(0 未知#54)\Total WdFrames
\Terminal Services Session(0 未知)\Total WaitForOutBuf
\Terminal Services Session(0 未知#1)\Total WaitForOutBuf
\Terminal Services Session(0 未知#2)\Total WaitForOutBuf
\Terminal Services Session(0 未知#3)\Total WaitForOutBuf
\Terminal Services Session(0 未知#4)\Total WaitForOutBuf
\Terminal Services Session(0 未知#5)\Total WaitForOutBuf
\Terminal Services Session(0 未知#6)\Total WaitForOutBuf
\Terminal Services Session(0 未知#7)\Total WaitForOutBuf
\Terminal Services Session(0 未知#8)\Total WaitForOutBuf
\Terminal Services Session(0 未知#9)\Total WaitForOutBuf
\Terminal Services Session(0 未知#10)\Total WaitForOutBuf
\Terminal Services Session(0 未知#11)\Total WaitForOutBuf
\Terminal Services Session(0 未知#12)\Total WaitForOutBuf
\Terminal Services Session(0 未知#13)\Total WaitForOutBuf
\Terminal Services Session(0 未知#14)\Total WaitForOutBuf
\Terminal Services Session(0 未知#15)\Total WaitForOutBuf
\Terminal Services Session(0 未知#16)\Total WaitForOutBuf
\Terminal Services Session(0 未知#17)\Total WaitForOutBuf
\Terminal Services Session(0 未知#18)\Total WaitForOutBuf
\Terminal Services Session(0 未知#19)\Total WaitForOutBuf
\Terminal Services Session(0 未知#20)\Total WaitForOutBuf
\Terminal Services Session(0 未知#21)\Total WaitForOutBuf
\Terminal Services Session(0 未知#22)\Total WaitForOutBuf
\Terminal Services Session(0 未知#23)\Total WaitForOutBuf
\Terminal Services Session(0 未知#24)\Total WaitForOutBuf
\Terminal Services Session(0 未知#25)\Total WaitForOutBuf
\Terminal Services Session(0 未知#26)\Total WaitForOutBuf
\Terminal Services Session(0 未知#27)\Total WaitForOutBuf
\Terminal Services Session(0 未知#28)\Total WaitForOutBuf
\Terminal Services Session(0 未知#29)\Total WaitForOutBuf
\Terminal Services Session(0 未知#30)\Total WaitForOutBuf
\Terminal Services Session(0 未知#31)\Total WaitForOutBuf
\Terminal Services Session(0 未知#32)\Total WaitForOutBuf
\Terminal Services Session(0 未知#33)\Total WaitForOutBuf
\Terminal Services Session(0 未知#34)\Total WaitForOutBuf
\Terminal Services Session(0 未知#35)\Total WaitForOutBuf
\Terminal Services Session(0 未知#36)\Total WaitForOutBuf
\Terminal Services Session(0 未知#37)\Total WaitForOutBuf
\Terminal Services Session(0 未知#38)\Total WaitForOutBuf
\Terminal Services Session(0 未知#39)\Total WaitForOutBuf
\Terminal Services Session(0 未知#40)\Total WaitForOutBuf
\Terminal Services Session(0 未知#41)\Total WaitForOutBuf
\Terminal Services Session(0 未知#42)\Total WaitForOutBuf
\Terminal Services Session(0 未知#43)\Total WaitForOutBuf
\Terminal Services Session(0 未知#44)\Total WaitForOutBuf
\Terminal Services Session(0 未知#45)\Total WaitForOutBuf
\Terminal Services Session(0 未知#46)\Total WaitForOutBuf
\Terminal Services Session(0 未知#47)\Total WaitForOutBuf
\Terminal Services Session(0 未知#48)\Total WaitForOutBuf
\Terminal Services Session(0 未知#49)\Total WaitForOutBuf
\Terminal Services Session(0 未知#50)\Total WaitForOutBuf
\Terminal Services Session(0 未知#51)\Total WaitForOutBuf
\Terminal Services Session(0 未知#52)\Total WaitForOutBuf
\Terminal Services Session(0 未知#53)\Total WaitForOutBuf
\Terminal Services Session(0 未知#54)\Total WaitForOutBuf
\Terminal Services Session(0 未知)\Total Frames
\Terminal Services Session(0 未知#1)\Total Frames
\Terminal Services Session(0 未知#2)\Total Frames
\Terminal Services Session(0 未知#3)\Total Frames
\Terminal Services Session(0 未知#4)\Total Frames
\Terminal Services Session(0 未知#5)\Total Frames
\Terminal Services Session(0 未知#6)\Total Frames
\Terminal Services Session(0 未知#7)\Total Frames
\Terminal Services Session(0 未知#8)\Total Frames
\Terminal Services Session(0 未知#9)\Total Frames
\Terminal Services Session(0 未知#10)\Total Frames
\Terminal Services Session(0 未知#11)\Total Frames
\Terminal Services Session(0 未知#12)\Total Frames
\Terminal Services Session(0 未知#13)\Total Frames
\Terminal Services Session(0 未知#14)\Total Frames
\Terminal Services Session(0 未知#15)\Total Frames
\Terminal Services Session(0 未知#16)\Total Frames
\Terminal Services Session(0 未知#17)\Total Frames
\Terminal Services Session(0 未知#18)\Total Frames
\Terminal Services Session(0 未知#19)\Total Frames
\Terminal Services Session(0 未知#20)\Total Frames
\Terminal Services Session(0 未知#21)\Total Frames
\Terminal Services Session(0 未知#22)\Total Frames
\Terminal Services Session(0 未知#23)\Total Frames
\Terminal Services Session(0 未知#24)\Total Frames
\Terminal Services Session(0 未知#25)\Total Frames
\Terminal Services Session(0 未知#26)\Total Frames
\Terminal Services Session(0 未知#27)\Total Frames
\Terminal Services Session(0 未知#28)\Total Frames
\Terminal Services Session(0 未知#29)\Total Frames
\Terminal Services Session(0 未知#30)\Total Frames
\Terminal Services Session(0 未知#31)\Total Frames
\Terminal Services Session(0 未知#32)\Total Frames
\Terminal Services Session(0 未知#33)\Total Frames
\Terminal Services Session(0 未知#34)\Total Frames
\Terminal Services Session(0 未知#35)\Total Frames
\Terminal Services Session(0 未知#36)\Total Frames
\Terminal Services Session(0 未知#37)\Total Frames
\Terminal Services Session(0 未知#38)\Total Frames
\Terminal Services Session(0 未知#39)\Total Frames
\Terminal Services Session(0 未知#40)\Total Frames
\Terminal Services Session(0 未知#41)\Total Frames
\Terminal Services Session(0 未知#42)\Total Frames
\Terminal Services Session(0 未知#43)\Total Frames
\Terminal Services Session(0 未知#44)\Total Frames
\Terminal Services Session(0 未知#45)\Total Frames
\Terminal Services Session(0 未知#46)\Total Frames
\Terminal Services Session(0 未知#47)\Total Frames
\Terminal Services Session(0 未知#48)\Total Frames
\Terminal Services Session(0 未知#49)\Total Frames
\Terminal Services Session(0 未知#50)\Total Frames
\Terminal Services Session(0 未知#51)\Total Frames
\Terminal Services Session(0 未知#52)\Total Frames
\Terminal Services Session(0 未知#53)\Total Frames
\Terminal Services Session(0 未知#54)\Total Frames
\Terminal Services Session(0 未知)\Total Bytes
\Terminal Services Session(0 未知#1)\Total Bytes
\Terminal Services Session(0 未知#2)\Total Bytes
\Terminal Services Session(0 未知#3)\Total Bytes
\Terminal Services Session(0 未知#4)\Total Bytes
\Terminal Services Session(0 未知#5)\Total Bytes
\Terminal Services Session(0 未知#6)\Total Bytes
\Terminal Services Session(0 未知#7)\Total Bytes
\Terminal Services Session(0 未知#8)\Total Bytes
\Terminal Services Session(0 未知#9)\Total Bytes
\Terminal Services Session(0 未知#10)\Total Bytes
\Terminal Services Session(0 未知#11)\Total Bytes
\Terminal Services Session(0 未知#12)\Total Bytes
\Terminal Services Session(0 未知#13)\Total Bytes
\Terminal Services Session(0 未知#14)\Total Bytes
\Terminal Services Session(0 未知#15)\Total Bytes
\Terminal Services Session(0 未知#16)\Total Bytes
\Terminal Services Session(0 未知#17)\Total Bytes
\Terminal Services Session(0 未知#18)\Total Bytes
\Terminal Services Session(0 未知#19)\Total Bytes
\Terminal Services Session(0 未知#20)\Total Bytes
\Terminal Services Session(0 未知#21)\Total Bytes
\Terminal Services Session(0 未知#22)\Total Bytes
\Terminal Services Session(0 未知#23)\Total Bytes
\Terminal Services Session(0 未知#24)\Total Bytes
\Terminal Services Session(0 未知#25)\Total Bytes
\Terminal Services Session(0 未知#26)\Total Bytes
\Terminal Services Session(0 未知#27)\Total Bytes
\Terminal Services Session(0 未知#28)\Total Bytes
\Terminal Services Session(0 未知#29)\Total Bytes
\Terminal Services Session(0 未知#30)\Total Bytes
\Terminal Services Session(0 未知#31)\Total Bytes
\Terminal Services Session(0 未知#32)\Total Bytes
\Terminal Services Session(0 未知#33)\Total Bytes
\Terminal Services Session(0 未知#34)\Total Bytes
\Terminal Services Session(0 未知#35)\Total Bytes
\Terminal Services Session(0 未知#36)\Total Bytes
\Terminal Services Session(0 未知#37)\Total Bytes
\Terminal Services Session(0 未知#38)\Total Bytes
\Terminal Services Session(0 未知#39)\Total Bytes
\Terminal Services Session(0 未知#40)\Total Bytes
\Terminal Services Session(0 未知#41)\Total Bytes
\Terminal Services Session(0 未知#42)\Total Bytes
\Terminal Services Session(0 未知#43)\Total Bytes
\Terminal Services Session(0 未知#44)\Total Bytes
\Terminal Services Session(0 未知#45)\Total Bytes
\Terminal Services Session(0 未知#46)\Total Bytes
\Terminal Services Session(0 未知#47)\Total Bytes
\Terminal Services Session(0 未知#48)\Total Bytes
\Terminal Services Session(0 未知#49)\Total Bytes
\Terminal Services Session(0 未知#50)\Total Bytes
\Terminal Services Session(0 未知#51)\Total Bytes
\Terminal Services Session(0 未知#52)\Total Bytes
\Terminal Services Session(0 未知#53)\Total Bytes
\Terminal Services Session(0 未知#54)\Total Bytes
\Terminal Services Session(0 未知)\Total Compressed Bytes
\Terminal Services Session(0 未知#1)\Total Compressed Bytes
\Terminal Services Session(0 未知#2)\Total Compressed Bytes
\Terminal Services Session(0 未知#3)\Total Compressed Bytes
\Terminal Services Session(0 未知#4)\Total Compressed Bytes
\Terminal Services Session(0 未知#5)\Total Compressed Bytes
\Terminal Services Session(0 未知#6)\Total Compressed Bytes
\Terminal Services Session(0 未知#7)\Total Compressed Bytes
\Terminal Services Session(0 未知#8)\Total Compressed Bytes
\Terminal Services Session(0 未知#9)\Total Compressed Bytes
\Terminal Services Session(0 未知#10)\Total Compressed Bytes
\Terminal Services Session(0 未知#11)\Total Compressed Bytes
\Terminal Services Session(0 未知#12)\Total Compressed Bytes
\Terminal Services Session(0 未知#13)\Total Compressed Bytes
\Terminal Services Session(0 未知#14)\Total Compressed Bytes
\Terminal Services Session(0 未知#15)\Total Compressed Bytes
\Terminal Services Session(0 未知#16)\Total Compressed Bytes
\Terminal Services Session(0 未知#17)\Total Compressed Bytes
\Terminal Services Session(0 未知#18)\Total Compressed Bytes
\Terminal Services Session(0 未知#19)\Total Compressed Bytes
\Terminal Services Session(0 未知#20)\Total Compressed Bytes
\Terminal Services Session(0 未知#21)\Total Compressed Bytes
\Terminal Services Session(0 未知#22)\Total Compressed Bytes
\Terminal Services Session(0 未知#23)\Total Compressed Bytes
\Terminal Services Session(0 未知#24)\Total Compressed Bytes
\Terminal Services Session(0 未知#25)\Total Compressed Bytes
\Terminal Services Session(0 未知#26)\Total Compressed Bytes
\Terminal Services Session(0 未知#27)\Total Compressed Bytes
\Terminal Services Session(0 未知#28)\Total Compressed Bytes
\Terminal Services Session(0 未知#29)\Total Compressed Bytes
\Terminal Services Session(0 未知#30)\Total Compressed Bytes
\Terminal Services Session(0 未知#31)\Total Compressed Bytes
\Terminal Services Session(0 未知#32)\Total Compressed Bytes
\Terminal Services Session(0 未知#33)\Total Compressed Bytes
\Terminal Services Session(0 未知#34)\Total Compressed Bytes
\Terminal Services Session(0 未知#35)\Total Compressed Bytes
\Terminal Services Session(0 未知#36)\Total Compressed Bytes
\Terminal Services Session(0 未知#37)\Total Compressed Bytes
\Terminal Services Session(0 未知#38)\Total Compressed Bytes
\Terminal Services Session(0 未知#39)\Total Compressed Bytes
\Terminal Services Session(0 未知#40)\Total Compressed Bytes
\Terminal Services Session(0 未知#41)\Total Compressed Bytes
\Terminal Services Session(0 未知#42)\Total Compressed Bytes
\Terminal Services Session(0 未知#43)\Total Compressed Bytes
\Terminal Services Session(0 未知#44)\Total Compressed Bytes
\Terminal Services Session(0 未知#45)\Total Compressed Bytes
\Terminal Services Session(0 未知#46)\Total Compressed Bytes
\Terminal Services Session(0 未知#47)\Total Compressed Bytes
\Terminal Services Session(0 未知#48)\Total Compressed Bytes
\Terminal Services Session(0 未知#49)\Total Compressed Bytes
\Terminal Services Session(0 未知#50)\Total Compressed Bytes
\Terminal Services Session(0 未知#51)\Total Compressed Bytes
\Terminal Services Session(0 未知#52)\Total Compressed Bytes
\Terminal Services Session(0 未知#53)\Total Compressed Bytes
\Terminal Services Session(0 未知#54)\Total Compressed Bytes
\Terminal Services Session(0 未知)\Total Compress Flushes
\Terminal Services Session(0 未知#1)\Total Compress Flushes
\Terminal Services Session(0 未知#2)\Total Compress Flushes
\Terminal Services Session(0 未知#3)\Total Compress Flushes
\Terminal Services Session(0 未知#4)\Total Compress Flushes
\Terminal Services Session(0 未知#5)\Total Compress Flushes
\Terminal Services Session(0 未知#6)\Total Compress Flushes
\Terminal Services Session(0 未知#7)\Total Compress Flushes
\Terminal Services Session(0 未知#8)\Total Compress Flushes
\Terminal Services Session(0 未知#9)\Total Compress Flushes
\Terminal Services Session(0 未知#10)\Total Compress Flushes
\Terminal Services Session(0 未知#11)\Total Compress Flushes
\Terminal Services Session(0 未知#12)\Total Compress Flushes
\Terminal Services Session(0 未知#13)\Total Compress Flushes
\Terminal Services Session(0 未知#14)\Total Compress Flushes
\Terminal Services Session(0 未知#15)\Total Compress Flushes
\Terminal Services Session(0 未知#16)\Total Compress Flushes
\Terminal Services Session(0 未知#17)\Total Compress Flushes
\Terminal Services Session(0 未知#18)\Total Compress Flushes
\Terminal Services Session(0 未知#19)\Total Compress Flushes
\Terminal Services Session(0 未知#20)\Total Compress Flushes
\Terminal Services Session(0 未知#21)\Total Compress Flushes
\Terminal Services Session(0 未知#22)\Total Compress Flushes
\Terminal Services Session(0 未知#23)\Total Compress Flushes
\Terminal Services Session(0 未知#24)\Total Compress Flushes
\Terminal Services Session(0 未知#25)\Total Compress Flushes
\Terminal Services Session(0 未知#26)\Total Compress Flushes
\Terminal Services Session(0 未知#27)\Total Compress Flushes
\Terminal Services Session(0 未知#28)\Total Compress Flushes
\Terminal Services Session(0 未知#29)\Total Compress Flushes
\Terminal Services Session(0 未知#30)\Total Compress Flushes
\Terminal Services Session(0 未知#31)\Total Compress Flushes
\Terminal Services Session(0 未知#32)\Total Compress Flushes
\Terminal Services Session(0 未知#33)\Total Compress Flushes
\Terminal Services Session(0 未知#34)\Total Compress Flushes
\Terminal Services Session(0 未知#35)\Total Compress Flushes
\Terminal Services Session(0 未知#36)\Total Compress Flushes
\Terminal Services Session(0 未知#37)\Total Compress Flushes
\Terminal Services Session(0 未知#38)\Total Compress Flushes
\Terminal Services Session(0 未知#39)\Total Compress Flushes
\Terminal Services Session(0 未知#40)\Total Compress Flushes
\Terminal Services Session(0 未知#41)\Total Compress Flushes
\Terminal Services Session(0 未知#42)\Total Compress Flushes
\Terminal Services Session(0 未知#43)\Total Compress Flushes
\Terminal Services Session(0 未知#44)\Total Compress Flushes
\Terminal Services Session(0 未知#45)\Total Compress Flushes
\Terminal Services Session(0 未知#46)\Total Compress Flushes
\Terminal Services Session(0 未知#47)\Total Compress Flushes
\Terminal Services Session(0 未知#48)\Total Compress Flushes
\Terminal Services Session(0 未知#49)\Total Compress Flushes
\Terminal Services Session(0 未知#50)\Total Compress Flushes
\Terminal Services Session(0 未知#51)\Total Compress Flushes
\Terminal Services Session(0 未知#52)\Total Compress Flushes
\Terminal Services Session(0 未知#53)\Total Compress Flushes
\Terminal Services Session(0 未知#54)\Total Compress Flushes
\Terminal Services Session(0 未知)\Total Errors
\Terminal Services Session(0 未知#1)\Total Errors
\Terminal Services Session(0 未知#2)\Total Errors
\Terminal Services Session(0 未知#3)\Total Errors
\Terminal Services Session(0 未知#4)\Total Errors
\Terminal Services Session(0 未知#5)\Total Errors
\Terminal Services Session(0 未知#6)\Total Errors
\Terminal Services Session(0 未知#7)\Total Errors
\Terminal Services Session(0 未知#8)\Total Errors
\Terminal Services Session(0 未知#9)\Total Errors
\Terminal Services Session(0 未知#10)\Total Errors
\Terminal Services Session(0 未知#11)\Total Errors
\Terminal Services Session(0 未知#12)\Total Errors
\Terminal Services Session(0 未知#13)\Total Errors
\Terminal Services Session(0 未知#14)\Total Errors
\Terminal Services Session(0 未知#15)\Total Errors
\Terminal Services Session(0 未知#16)\Total Errors
\Terminal Services Session(0 未知#17)\Total Errors
\Terminal Services Session(0 未知#18)\Total Errors
\Terminal Services Session(0 未知#19)\Total Errors
\Terminal Services Session(0 未知#20)\Total Errors
\Terminal Services Session(0 未知#21)\Total Errors
\Terminal Services Session(0 未知#22)\Total Errors
\Terminal Services Session(0 未知#23)\Total Errors
\Terminal Services Session(0 未知#24)\Total Errors
\Terminal Services Session(0 未知#25)\Total Errors
\Terminal Services Session(0 未知#26)\Total Errors
\Terminal Services Session(0 未知#27)\Total Errors
\Terminal Services Session(0 未知#28)\Total Errors
\Terminal Services Session(0 未知#29)\Total Errors
\Terminal Services Session(0 未知#30)\Total Errors
\Terminal Services Session(0 未知#31)\Total Errors
\Terminal Services Session(0 未知#32)\Total Errors
\Terminal Services Session(0 未知#33)\Total Errors
\Terminal Services Session(0 未知#34)\Total Errors
\Terminal Services Session(0 未知#35)\Total Errors
\Terminal Services Session(0 未知#36)\Total Errors
\Terminal Services Session(0 未知#37)\Total Errors
\Terminal Services Session(0 未知#38)\Total Errors
\Terminal Services Session(0 未知#39)\Total Errors
\Terminal Services Session(0 未知#40)\Total Errors
\Terminal Services Session(0 未知#41)\Total Errors
\Terminal Services Session(0 未知#42)\Total Errors
\Terminal Services Session(0 未知#43)\Total Errors
\Terminal Services Session(0 未知#44)\Total Errors
\Terminal Services Session(0 未知#45)\Total Errors
\Terminal Services Session(0 未知#46)\Total Errors
\Terminal Services Session(0 未知#47)\Total Errors
\Terminal Services Session(0 未知#48)\Total Errors
\Terminal Services Session(0 未知#49)\Total Errors
\Terminal Services Session(0 未知#50)\Total Errors
\Terminal Services Session(0 未知#51)\Total Errors
\Terminal Services Session(0 未知#52)\Total Errors
\Terminal Services Session(0 未知#53)\Total Errors
\Terminal Services Session(0 未知#54)\Total Errors
\Terminal Services Session(0 未知)\Total Timeouts
\Terminal Services Session(0 未知#1)\Total Timeouts
\Terminal Services Session(0 未知#2)\Total Timeouts
\Terminal Services Session(0 未知#3)\Total Timeouts
\Terminal Services Session(0 未知#4)\Total Timeouts
\Terminal Services Session(0 未知#5)\Total Timeouts
\Terminal Services Session(0 未知#6)\Total Timeouts
\Terminal Services Session(0 未知#7)\Total Timeouts
\Terminal Services Session(0 未知#8)\Total Timeouts
\Terminal Services Session(0 未知#9)\Total Timeouts
\Terminal Services Session(0 未知#10)\Total Timeouts
\Terminal Services Session(0 未知#11)\Total Timeouts
\Terminal Services Session(0 未知#12)\Total Timeouts
\Terminal Services Session(0 未知#13)\Total Timeouts
\Terminal Services Session(0 未知#14)\Total Timeouts
\Terminal Services Session(0 未知#15)\Total Timeouts
\Terminal Services Session(0 未知#16)\Total Timeouts
\Terminal Services Session(0 未知#17)\Total Timeouts
\Terminal Services Session(0 未知#18)\Total Timeouts
\Terminal Services Session(0 未知#19)\Total Timeouts
\Terminal Services Session(0 未知#20)\Total Timeouts
\Terminal Services Session(0 未知#21)\Total Timeouts
\Terminal Services Session(0 未知#22)\Total Timeouts
\Terminal Services Session(0 未知#23)\Total Timeouts
\Terminal Services Session(0 未知#24)\Total Timeouts
\Terminal Services Session(0 未知#25)\Total Timeouts
\Terminal Services Session(0 未知#26)\Total Timeouts
\Terminal Services Session(0 未知#27)\Total Timeouts
\Terminal Services Session(0 未知#28)\Total Timeouts
\Terminal Services Session(0 未知#29)\Total Timeouts
\Terminal Services Session(0 未知#30)\Total Timeouts
\Terminal Services Session(0 未知#31)\Total Timeouts
\Terminal Services Session(0 未知#32)\Total Timeouts
\Terminal Services Session(0 未知#33)\Total Timeouts
\Terminal Services Session(0 未知#34)\Total Timeouts
\Terminal Services Session(0 未知#35)\Total Timeouts
\Terminal Services Session(0 未知#36)\Total Timeouts
\Terminal Services Session(0 未知#37)\Total Timeouts
\Terminal Services Session(0 未知#38)\Total Timeouts
\Terminal Services Session(0 未知#39)\Total Timeouts
\Terminal Services Session(0 未知#40)\Total Timeouts
\Terminal Services Session(0 未知#41)\Total Timeouts
\Terminal Services Session(0 未知#42)\Total Timeouts
\Terminal Services Session(0 未知#43)\Total Timeouts
\Terminal Services Session(0 未知#44)\Total Timeouts
\Terminal Services Session(0 未知#45)\Total Timeouts
\Terminal Services Session(0 未知#46)\Total Timeouts
\Terminal Services Session(0 未知#47)\Total Timeouts
\Terminal Services Session(0 未知#48)\Total Timeouts
\Terminal Services Session(0 未知#49)\Total Timeouts
\Terminal Services Session(0 未知#50)\Total Timeouts
\Terminal Services Session(0 未知#51)\Total Timeouts
\Terminal Services Session(0 未知#52)\Total Timeouts
\Terminal Services Session(0 未知#53)\Total Timeouts
\Terminal Services Session(0 未知#54)\Total Timeouts
\Terminal Services Session(0 未知)\Total Async Frame Error
\Terminal Services Session(0 未知#1)\Total Async Frame Error
\Terminal Services Session(0 未知#2)\Total Async Frame Error
\Terminal Services Session(0 未知#3)\Total Async Frame Error
\Terminal Services Session(0 未知#4)\Total Async Frame Error
\Terminal Services Session(0 未知#5)\Total Async Frame Error
\Terminal Services Session(0 未知#6)\Total Async Frame Error
\Terminal Services Session(0 未知#7)\Total Async Frame Error
\Terminal Services Session(0 未知#8)\Total Async Frame Error
\Terminal Services Session(0 未知#9)\Total Async Frame Error
\Terminal Services Session(0 未知#10)\Total Async Frame Error
\Terminal Services Session(0 未知#11)\Total Async Frame Error
\Terminal Services Session(0 未知#12)\Total Async Frame Error
\Terminal Services Session(0 未知#13)\Total Async Frame Error
\Terminal Services Session(0 未知#14)\Total Async Frame Error
\Terminal Services Session(0 未知#15)\Total Async Frame Error
\Terminal Services Session(0 未知#16)\Total Async Frame Error
\Terminal Services Session(0 未知#17)\Total Async Frame Error
\Terminal Services Session(0 未知#18)\Total Async Frame Error
\Terminal Services Session(0 未知#19)\Total Async Frame Error
\Terminal Services Session(0 未知#20)\Total Async Frame Error
\Terminal Services Session(0 未知#21)\Total Async Frame Error
\Terminal Services Session(0 未知#22)\Total Async Frame Error
\Terminal Services Session(0 未知#23)\Total Async Frame Error
\Terminal Services Session(0 未知#24)\Total Async Frame Error
\Terminal Services Session(0 未知#25)\Total Async Frame Error
\Terminal Services Session(0 未知#26)\Total Async Frame Error
\Terminal Services Session(0 未知#27)\Total Async Frame Error
\Terminal Services Session(0 未知#28)\Total Async Frame Error
\Terminal Services Session(0 未知#29)\Total Async Frame Error
\Terminal Services Session(0 未知#30)\Total Async Frame Error
\Terminal Services Session(0 未知#31)\Total Async Frame Error
\Terminal Services Session(0 未知#32)\Total Async Frame Error
\Terminal Services Session(0 未知#33)\Total Async Frame Error
\Terminal Services Session(0 未知#34)\Total Async Frame Error
\Terminal Services Session(0 未知#35)\Total Async Frame Error
\Terminal Services Session(0 未知#36)\Total Async Frame Error
\Terminal Services Session(0 未知#37)\Total Async Frame Error
\Terminal Services Session(0 未知#38)\Total Async Frame Error
\Terminal Services Session(0 未知#39)\Total Async Frame Error
\Terminal Services Session(0 未知#40)\Total Async Frame Error
\Terminal Services Session(0 未知#41)\Total Async Frame Error
\Terminal Services Session(0 未知#42)\Total Async Frame Error
\Terminal Services Session(0 未知#43)\Total Async Frame Error
\Terminal Services Session(0 未知#44)\Total Async Frame Error
\Terminal Services Session(0 未知#45)\Total Async Frame Error
\Terminal Services Session(0 未知#46)\Total Async Frame Error
\Terminal Services Session(0 未知#47)\Total Async Frame Error
\Terminal Services Session(0 未知#48)\Total Async Frame Error
\Terminal Services Session(0 未知#49)\Total Async Frame Error
\Terminal Services Session(0 未知#50)\Total Async Frame Error
\Terminal Services Session(0 未知#51)\Total Async Frame Error
\Terminal Services Session(0 未知#52)\Total Async Frame Error
\Terminal Services Session(0 未知#53)\Total Async Frame Error
\Terminal Services Session(0 未知#54)\Total Async Frame Error
\Terminal Services Session(0 未知)\Total Async Overrun
\Terminal Services Session(0 未知#1)\Total Async Overrun
\Terminal Services Session(0 未知#2)\Total Async Overrun
\Terminal Services Session(0 未知#3)\Total Async Overrun
\Terminal Services Session(0 未知#4)\Total Async Overrun
\Terminal Services Session(0 未知#5)\Total Async Overrun
\Terminal Services Session(0 未知#6)\Total Async Overrun
\Terminal Services Session(0 未知#7)\Total Async Overrun
\Terminal Services Session(0 未知#8)\Total Async Overrun
\Terminal Services Session(0 未知#9)\Total Async Overrun
\Terminal Services Session(0 未知#10)\Total Async Overrun
\Terminal Services Session(0 未知#11)\Total Async Overrun
\Terminal Services Session(0 未知#12)\Total Async Overrun
\Terminal Services Session(0 未知#13)\Total Async Overrun
\Terminal Services Session(0 未知#14)\Total Async Overrun
\Terminal Services Session(0 未知#15)\Total Async Overrun
\Terminal Services Session(0 未知#16)\Total Async Overrun
\Terminal Services Session(0 未知#17)\Total Async Overrun
\Terminal Services Session(0 未知#18)\Total Async Overrun
\Terminal Services Session(0 未知#19)\Total Async Overrun
\Terminal Services Session(0 未知#20)\Total Async Overrun
\Terminal Services Session(0 未知#21)\Total Async Overrun
\Terminal Services Session(0 未知#22)\Total Async Overrun
\Terminal Services Session(0 未知#23)\Total Async Overrun
\Terminal Services Session(0 未知#24)\Total Async Overrun
\Terminal Services Session(0 未知#25)\Total Async Overrun
\Terminal Services Session(0 未知#26)\Total Async Overrun
\Terminal Services Session(0 未知#27)\Total Async Overrun
\Terminal Services Session(0 未知#28)\Total Async Overrun
\Terminal Services Session(0 未知#29)\Total Async Overrun
\Terminal Services Session(0 未知#30)\Total Async Overrun
\Terminal Services Session(0 未知#31)\Total Async Overrun
\Terminal Services Session(0 未知#32)\Total Async Overrun
\Terminal Services Session(0 未知#33)\Total Async Overrun
\Terminal Services Session(0 未知#34)\Total Async Overrun
\Terminal Services Session(0 未知#35)\Total Async Overrun
\Terminal Services Session(0 未知#36)\Total Async Overrun
\Terminal Services Session(0 未知#37)\Total Async Overrun
\Terminal Services Session(0 未知#38)\Total Async Overrun
\Terminal Services Session(0 未知#39)\Total Async Overrun
\Terminal Services Session(0 未知#40)\Total Async Overrun
\Terminal Services Session(0 未知#41)\Total Async Overrun
\Terminal Services Session(0 未知#42)\Total Async Overrun
\Terminal Services Session(0 未知#43)\Total Async Overrun
\Terminal Services Session(0 未知#44)\Total Async Overrun
\Terminal Services Session(0 未知#45)\Total Async Overrun
\Terminal Services Session(0 未知#46)\Total Async Overrun
\Terminal Services Session(0 未知#47)\Total Async Overrun
\Terminal Services Session(0 未知#48)\Total Async Overrun
\Terminal Services Session(0 未知#49)\Total Async Overrun
\Terminal Services Session(0 未知#50)\Total Async Overrun
\Terminal Services Session(0 未知#51)\Total Async Overrun
\Terminal Services Session(0 未知#52)\Total Async Overrun
\Terminal Services Session(0 未知#53)\Total Async Overrun
\Terminal Services Session(0 未知#54)\Total Async Overrun
\Terminal Services Session(0 未知)\Total Async Overflow
\Terminal Services Session(0 未知#1)\Total Async Overflow
\Terminal Services Session(0 未知#2)\Total Async Overflow
\Terminal Services Session(0 未知#3)\Total Async Overflow
\Terminal Services Session(0 未知#4)\Total Async Overflow
\Terminal Services Session(0 未知#5)\Total Async Overflow
\Terminal Services Session(0 未知#6)\Total Async Overflow
\Terminal Services Session(0 未知#7)\Total Async Overflow
\Terminal Services Session(0 未知#8)\Total Async Overflow
\Terminal Services Session(0 未知#9)\Total Async Overflow
\Terminal Services Session(0 未知#10)\Total Async Overflow
\Terminal Services Session(0 未知#11)\Total Async Overflow
\Terminal Services Session(0 未知#12)\Total Async Overflow
\Terminal Services Session(0 未知#13)\Total Async Overflow
\Terminal Services Session(0 未知#14)\Total Async Overflow
\Terminal Services Session(0 未知#15)\Total Async Overflow
\Terminal Services Session(0 未知#16)\Total Async Overflow
\Terminal Services Session(0 未知#17)\Total Async Overflow
\Terminal Services Session(0 未知#18)\Total Async Overflow
\Terminal Services Session(0 未知#19)\Total Async Overflow
\Terminal Services Session(0 未知#20)\Total Async Overflow
\Terminal Services Session(0 未知#21)\Total Async Overflow
\Terminal Services Session(0 未知#22)\Total Async Overflow
\Terminal Services Session(0 未知#23)\Total Async Overflow
\Terminal Services Session(0 未知#24)\Total Async Overflow
\Terminal Services Session(0 未知#25)\Total Async Overflow
\Terminal Services Session(0 未知#26)\Total Async Overflow
\Terminal Services Session(0 未知#27)\Total Async Overflow
\Terminal Services Session(0 未知#28)\Total Async Overflow
\Terminal Services Session(0 未知#29)\Total Async Overflow
\Terminal Services Session(0 未知#30)\Total Async Overflow
\Terminal Services Session(0 未知#31)\Total Async Overflow
\Terminal Services Session(0 未知#32)\Total Async Overflow
\Terminal Services Session(0 未知#33)\Total Async Overflow
\Terminal Services Session(0 未知#34)\Total Async Overflow
\Terminal Services Session(0 未知#35)\Total Async Overflow
\Terminal Services Session(0 未知#36)\Total Async Overflow
\Terminal Services Session(0 未知#37)\Total Async Overflow
\Terminal Services Session(0 未知#38)\Total Async Overflow
\Terminal Services Session(0 未知#39)\Total Async Overflow
\Terminal Services Session(0 未知#40)\Total Async Overflow
\Terminal Services Session(0 未知#41)\Total Async Overflow
\Terminal Services Session(0 未知#42)\Total Async Overflow
\Terminal Services Session(0 未知#43)\Total Async Overflow
\Terminal Services Session(0 未知#44)\Total Async Overflow
\Terminal Services Session(0 未知#45)\Total Async Overflow
\Terminal Services Session(0 未知#46)\Total Async Overflow
\Terminal Services Session(0 未知#47)\Total Async Overflow
\Terminal Services Session(0 未知#48)\Total Async Overflow
\Terminal Services Session(0 未知#49)\Total Async Overflow
\Terminal Services Session(0 未知#50)\Total Async Overflow
\Terminal Services Session(0 未知#51)\Total Async Overflow
\Terminal Services Session(0 未知#52)\Total Async Overflow
\Terminal Services Session(0 未知#53)\Total Async Overflow
\Terminal Services Session(0 未知#54)\Total Async Overflow
\Terminal Services Session(0 未知)\Total Async Parity Error
\Terminal Services Session(0 未知#1)\Total Async Parity Error
\Terminal Services Session(0 未知#2)\Total Async Parity Error
\Terminal Services Session(0 未知#3)\Total Async Parity Error
\Terminal Services Session(0 未知#4)\Total Async Parity Error
\Terminal Services Session(0 未知#5)\Total Async Parity Error
\Terminal Services Session(0 未知#6)\Total Async Parity Error
\Terminal Services Session(0 未知#7)\Total Async Parity Error
\Terminal Services Session(0 未知#8)\Total Async Parity Error
\Terminal Services Session(0 未知#9)\Total Async Parity Error
\Terminal Services Session(0 未知#10)\Total Async Parity Error
\Terminal Services Session(0 未知#11)\Total Async Parity Error
\Terminal Services Session(0 未知#12)\Total Async Parity Error
\Terminal Services Session(0 未知#13)\Total Async Parity Error
\Terminal Services Session(0 未知#14)\Total Async Parity Error
\Terminal Services Session(0 未知#15)\Total Async Parity Error
\Terminal Services Session(0 未知#16)\Total Async Parity Error
\Terminal Services Session(0 未知#17)\Total Async Parity Error
\Terminal Services Session(0 未知#18)\Total Async Parity Error
\Terminal Services Session(0 未知#19)\Total Async Parity Error
\Terminal Services Session(0 未知#20)\Total Async Parity Error
\Terminal Services Session(0 未知#21)\Total Async Parity Error
\Terminal Services Session(0 未知#22)\Total Async Parity Error
\Terminal Services Session(0 未知#23)\Total Async Parity Error
\Terminal Services Session(0 未知#24)\Total Async Parity Error
\Terminal Services Session(0 未知#25)\Total Async Parity Error
\Terminal Services Session(0 未知#26)\Total Async Parity Error
\Terminal Services Session(0 未知#27)\Total Async Parity Error
\Terminal Services Session(0 未知#28)\Total Async Parity Error
\Terminal Services Session(0 未知#29)\Total Async Parity Error
\Terminal Services Session(0 未知#30)\Total Async Parity Error
\Terminal Services Session(0 未知#31)\Total Async Parity Error
\Terminal Services Session(0 未知#32)\Total Async Parity Error
\Terminal Services Session(0 未知#33)\Total Async Parity Error
\Terminal Services Session(0 未知#34)\Total Async Parity Error
\Terminal Services Session(0 未知#35)\Total Async Parity Error
\Terminal Services Session(0 未知#36)\Total Async Parity Error
\Terminal Services Session(0 未知#37)\Total Async Parity Error
\Terminal Services Session(0 未知#38)\Total Async Parity Error
\Terminal Services Session(0 未知#39)\Total Async Parity Error
\Terminal Services Session(0 未知#40)\Total Async Parity Error
\Terminal Services Session(0 未知#41)\Total Async Parity Error
\Terminal Services Session(0 未知#42)\Total Async Parity Error
\Terminal Services Session(0 未知#43)\Total Async Parity Error
\Terminal Services Session(0 未知#44)\Total Async Parity Error
\Terminal Services Session(0 未知#45)\Total Async Parity Error
\Terminal Services Session(0 未知#46)\Total Async Parity Error
\Terminal Services Session(0 未知#47)\Total Async Parity Error
\Terminal Services Session(0 未知#48)\Total Async Parity Error
\Terminal Services Session(0 未知#49)\Total Async Parity Error
\Terminal Services Session(0 未知#50)\Total Async Parity Error
\Terminal Services Session(0 未知#51)\Total Async Parity Error
\Terminal Services Session(0 未知#52)\Total Async Parity Error
\Terminal Services Session(0 未知#53)\Total Async Parity Error
\Terminal Services Session(0 未知#54)\Total Async Parity Error
\Terminal Services Session(0 未知)\Total Transport Errors
\Terminal Services Session(0 未知#1)\Total Transport Errors
\Terminal Services Session(0 未知#2)\Total Transport Errors
\Terminal Services Session(0 未知#3)\Total Transport Errors
\Terminal Services Session(0 未知#4)\Total Transport Errors
\Terminal Services Session(0 未知#5)\Total Transport Errors
\Terminal Services Session(0 未知#6)\Total Transport Errors
\Terminal Services Session(0 未知#7)\Total Transport Errors
\Terminal Services Session(0 未知#8)\Total Transport Errors
\Terminal Services Session(0 未知#9)\Total Transport Errors
\Terminal Services Session(0 未知#10)\Total Transport Errors
\Terminal Services Session(0 未知#11)\Total Transport Errors
\Terminal Services Session(0 未知#12)\Total Transport Errors
\Terminal Services Session(0 未知#13)\Total Transport Errors
\Terminal Services Session(0 未知#14)\Total Transport Errors
\Terminal Services Session(0 未知#15)\Total Transport Errors
\Terminal Services Session(0 未知#16)\Total Transport Errors
\Terminal Services Session(0 未知#17)\Total Transport Errors
\Terminal Services Session(0 未知#18)\Total Transport Errors
\Terminal Services Session(0 未知#19)\Total Transport Errors
\Terminal Services Session(0 未知#20)\Total Transport Errors
\Terminal Services Session(0 未知#21)\Total Transport Errors
\Terminal Services Session(0 未知#22)\Total Transport Errors
\Terminal Services Session(0 未知#23)\Total Transport Errors
\Terminal Services Session(0 未知#24)\Total Transport Errors
\Terminal Services Session(0 未知#25)\Total Transport Errors
\Terminal Services Session(0 未知#26)\Total Transport Errors
\Terminal Services Session(0 未知#27)\Total Transport Errors
\Terminal Services Session(0 未知#28)\Total Transport Errors
\Terminal Services Session(0 未知#29)\Total Transport Errors
\Terminal Services Session(0 未知#30)\Total Transport Errors
\Terminal Services Session(0 未知#31)\Total Transport Errors
\Terminal Services Session(0 未知#32)\Total Transport Errors
\Terminal Services Session(0 未知#33)\Total Transport Errors
\Terminal Services Session(0 未知#34)\Total Transport Errors
\Terminal Services Session(0 未知#35)\Total Transport Errors
\Terminal Services Session(0 未知#36)\Total Transport Errors
\Terminal Services Session(0 未知#37)\Total Transport Errors
\Terminal Services Session(0 未知#38)\Total Transport Errors
\Terminal Services Session(0 未知#39)\Total Transport Errors
\Terminal Services Session(0 未知#40)\Total Transport Errors
\Terminal Services Session(0 未知#41)\Total Transport Errors
\Terminal Services Session(0 未知#42)\Total Transport Errors
\Terminal Services Session(0 未知#43)\Total Transport Errors
\Terminal Services Session(0 未知#44)\Total Transport Errors
\Terminal Services Session(0 未知#45)\Total Transport Errors
\Terminal Services Session(0 未知#46)\Total Transport Errors
\Terminal Services Session(0 未知#47)\Total Transport Errors
\Terminal Services Session(0 未知#48)\Total Transport Errors
\Terminal Services Session(0 未知#49)\Total Transport Errors
\Terminal Services Session(0 未知#50)\Total Transport Errors
\Terminal Services Session(0 未知#51)\Total Transport Errors
\Terminal Services Session(0 未知#52)\Total Transport Errors
\Terminal Services Session(0 未知#53)\Total Transport Errors
\Terminal Services Session(0 未知#54)\Total Transport Errors
\Terminal Services Session(0 未知)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#1)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#2)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#3)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#4)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#5)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#6)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#7)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#8)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#9)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#10)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#11)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#12)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#13)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#14)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#15)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#16)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#17)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#18)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#19)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#20)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#21)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#22)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#23)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#24)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#25)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#26)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#27)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#28)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#29)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#30)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#31)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#32)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#33)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#34)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#35)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#36)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#37)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#38)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#39)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#40)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#41)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#42)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#43)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#44)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#45)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#46)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#47)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#48)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#49)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#50)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#51)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#52)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#53)\Total Protocol Cache Reads
\Terminal Services Session(0 未知#54)\Total Protocol Cache Reads
\Terminal Services Session(0 未知)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#1)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#2)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#3)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#4)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#5)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#6)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#7)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#8)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#9)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#10)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#11)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#12)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#13)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#14)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#15)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#16)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#17)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#18)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#19)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#20)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#21)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#22)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#23)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#24)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#25)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#26)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#27)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#28)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#29)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#30)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#31)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#32)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#33)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#34)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#35)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#36)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#37)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#38)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#39)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#40)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#41)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#42)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#43)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#44)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#45)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#46)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#47)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#48)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#49)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#50)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#51)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#52)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#53)\Total Protocol Cache Hits
\Terminal Services Session(0 未知#54)\Total Protocol Cache Hits
\Terminal Services Session(0 未知)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#1)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#2)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#3)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#4)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#5)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#6)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#7)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#8)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#9)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#10)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#11)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#12)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#13)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#14)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#15)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#16)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#17)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#18)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#19)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#20)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#21)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#22)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#23)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#24)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#25)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#26)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#27)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#28)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#29)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#30)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#31)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#32)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#33)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#34)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#35)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#36)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#37)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#38)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#39)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#40)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#41)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#42)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#43)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#44)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#45)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#46)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#47)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#48)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#49)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#50)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#51)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#52)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#53)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知#54)\Total Protocol Cache Hit Ratio
\Terminal Services Session(0 未知)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#1)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#2)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#3)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#4)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#5)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#6)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#7)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#8)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#9)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#10)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#11)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#12)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#13)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#14)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#15)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#16)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#17)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#18)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#19)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#20)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#21)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#22)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#23)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#24)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#25)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#26)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#27)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#28)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#29)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#30)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#31)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#32)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#33)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#34)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#35)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#36)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#37)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#38)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#39)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#40)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#41)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#42)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#43)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#44)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#45)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#46)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#47)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#48)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#49)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#50)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#51)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#52)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#53)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知#54)\Protocol Bitmap Cache Reads
\Terminal Services Session(0 未知)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#1)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#2)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#3)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#4)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#5)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#6)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#7)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#8)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#9)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#10)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#11)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#12)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#13)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#14)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#15)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#16)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#17)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#18)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#19)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#20)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#21)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#22)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#23)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#24)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#25)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#26)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#27)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#28)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#29)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#30)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#31)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#32)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#33)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#34)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#35)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#36)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#37)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#38)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#39)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#40)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#41)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#42)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#43)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#44)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#45)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#46)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#47)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#48)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#49)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#50)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#51)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#52)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#53)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知#54)\Protocol Bitmap Cache Hits
\Terminal Services Session(0 未知)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#1)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#2)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#3)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#4)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#5)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#6)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#7)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#8)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#9)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#10)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#11)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#12)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#13)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#14)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#15)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#16)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#17)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#18)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#19)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#20)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#21)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#22)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#23)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#24)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#25)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#26)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#27)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#28)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#29)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#30)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#31)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#32)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#33)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#34)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#35)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#36)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#37)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#38)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#39)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#40)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#41)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#42)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#43)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#44)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#45)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#46)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#47)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#48)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#49)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#50)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#51)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#52)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#53)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#54)\Protocol Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#1)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#2)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#3)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#4)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#5)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#6)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#7)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#8)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#9)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#10)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#11)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#12)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#13)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#14)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#15)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#16)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#17)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#18)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#19)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#20)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#21)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#22)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#23)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#24)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#25)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#26)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#27)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#28)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#29)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#30)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#31)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#32)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#33)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#34)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#35)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#36)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#37)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#38)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#39)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#40)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#41)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#42)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#43)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#44)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#45)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#46)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#47)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#48)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#49)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#50)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#51)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#52)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#53)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知#54)\Protocol Glyph Cache Reads
\Terminal Services Session(0 未知)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#1)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#2)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#3)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#4)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#5)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#6)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#7)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#8)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#9)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#10)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#11)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#12)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#13)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#14)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#15)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#16)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#17)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#18)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#19)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#20)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#21)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#22)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#23)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#24)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#25)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#26)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#27)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#28)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#29)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#30)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#31)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#32)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#33)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#34)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#35)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#36)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#37)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#38)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#39)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#40)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#41)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#42)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#43)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#44)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#45)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#46)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#47)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#48)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#49)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#50)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#51)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#52)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#53)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知#54)\Protocol Glyph Cache Hits
\Terminal Services Session(0 未知)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#1)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#2)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#3)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#4)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#5)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#6)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#7)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#8)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#9)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#10)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#11)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#12)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#13)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#14)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#15)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#16)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#17)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#18)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#19)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#20)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#21)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#22)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#23)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#24)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#25)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#26)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#27)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#28)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#29)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#30)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#31)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#32)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#33)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#34)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#35)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#36)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#37)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#38)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#39)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#40)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#41)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#42)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#43)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#44)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#45)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#46)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#47)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#48)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#49)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#50)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#51)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#52)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#53)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知#54)\Protocol Glyph Cache Hit Ratio
\Terminal Services Session(0 未知)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#1)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#2)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#3)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#4)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#5)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#6)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#7)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#8)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#9)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#10)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#11)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#12)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#13)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#14)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#15)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#16)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#17)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#18)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#19)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#20)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#21)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#22)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#23)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#24)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#25)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#26)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#27)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#28)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#29)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#30)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#31)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#32)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#33)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#34)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#35)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#36)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#37)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#38)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#39)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#40)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#41)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#42)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#43)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#44)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#45)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#46)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#47)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#48)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#49)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#50)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#51)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#52)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#53)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知#54)\Protocol Brush Cache Reads
\Terminal Services Session(0 未知)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#1)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#2)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#3)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#4)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#5)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#6)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#7)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#8)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#9)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#10)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#11)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#12)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#13)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#14)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#15)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#16)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#17)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#18)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#19)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#20)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#21)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#22)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#23)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#24)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#25)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#26)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#27)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#28)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#29)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#30)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#31)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#32)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#33)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#34)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#35)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#36)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#37)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#38)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#39)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#40)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#41)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#42)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#43)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#44)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#45)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#46)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#47)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#48)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#49)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#50)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#51)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#52)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#53)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知#54)\Protocol Brush Cache Hits
\Terminal Services Session(0 未知)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#1)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#2)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#3)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#4)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#5)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#6)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#7)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#8)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#9)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#10)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#11)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#12)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#13)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#14)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#15)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#16)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#17)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#18)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#19)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#20)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#21)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#22)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#23)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#24)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#25)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#26)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#27)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#28)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#29)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#30)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#31)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#32)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#33)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#34)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#35)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#36)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#37)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#38)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#39)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#40)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#41)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#42)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#43)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#44)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#45)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#46)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#47)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#48)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#49)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#50)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#51)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#52)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#53)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知#54)\Protocol Brush Cache Hit Ratio
\Terminal Services Session(0 未知)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#1)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#2)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#3)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#4)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#5)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#6)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#7)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#8)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#9)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#10)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#11)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#12)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#13)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#14)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#15)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#16)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#17)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#18)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#19)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#20)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#21)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#22)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#23)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#24)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#25)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#26)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#27)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#28)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#29)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#30)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#31)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#32)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#33)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#34)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#35)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#36)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#37)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#38)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#39)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#40)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#41)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#42)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#43)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#44)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#45)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#46)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#47)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#48)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#49)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#50)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#51)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#52)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#53)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知#54)\Protocol Save Screen Bitmap Cache Reads
\Terminal Services Session(0 未知)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#1)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#2)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#3)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#4)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#5)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#6)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#7)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#8)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#9)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#10)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#11)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#12)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#13)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#14)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#15)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#16)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#17)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#18)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#19)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#20)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#21)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#22)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#23)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#24)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#25)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#26)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#27)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#28)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#29)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#30)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#31)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#32)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#33)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#34)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#35)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#36)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#37)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#38)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#39)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#40)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#41)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#42)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#43)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#44)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#45)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#46)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#47)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#48)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#49)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#50)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#51)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#52)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#53)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知#54)\Protocol Save Screen Bitmap Cache Hits
\Terminal Services Session(0 未知)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#1)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#2)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#3)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#4)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#5)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#6)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#7)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#8)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#9)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#10)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#11)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#12)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#13)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#14)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#15)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#16)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#17)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#18)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#19)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#20)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#21)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#22)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#23)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#24)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#25)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#26)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#27)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#28)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#29)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#30)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#31)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#32)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#33)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#34)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#35)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#36)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#37)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#38)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#39)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#40)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#41)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#42)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#43)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#44)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#45)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#46)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#47)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#48)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#49)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#50)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#51)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#52)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#53)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知#54)\Protocol Save Screen Bitmap Cache Hit Ratio
\Terminal Services Session(0 未知)\Input Compression Ratio
\Terminal Services Session(0 未知#1)\Input Compression Ratio
\Terminal Services Session(0 未知#2)\Input Compression Ratio
\Terminal Services Session(0 未知#3)\Input Compression Ratio
\Terminal Services Session(0 未知#4)\Input Compression Ratio
\Terminal Services Session(0 未知#5)\Input Compression Ratio
\Terminal Services Session(0 未知#6)\Input Compression Ratio
\Terminal Services Session(0 未知#7)\Input Compression Ratio
\Terminal Services Session(0 未知#8)\Input Compression Ratio
\Terminal Services Session(0 未知#9)\Input Compression Ratio
\Terminal Services Session(0 未知#10)\Input Compression Ratio
\Terminal Services Session(0 未知#11)\Input Compression Ratio
\Terminal Services Session(0 未知#12)\Input Compression Ratio
\Terminal Services Session(0 未知#13)\Input Compression Ratio
\Terminal Services Session(0 未知#14)\Input Compression Ratio
\Terminal Services Session(0 未知#15)\Input Compression Ratio
\Terminal Services Session(0 未知#16)\Input Compression Ratio
\Terminal Services Session(0 未知#17)\Input Compression Ratio
\Terminal Services Session(0 未知#18)\Input Compression Ratio
\Terminal Services Session(0 未知#19)\Input Compression Ratio
\Terminal Services Session(0 未知#20)\Input Compression Ratio
\Terminal Services Session(0 未知#21)\Input Compression Ratio
\Terminal Services Session(0 未知#22)\Input Compression Ratio
\Terminal Services Session(0 未知#23)\Input Compression Ratio
\Terminal Services Session(0 未知#24)\Input Compression Ratio
\Terminal Services Session(0 未知#25)\Input Compression Ratio
\Terminal Services Session(0 未知#26)\Input Compression Ratio
\Terminal Services Session(0 未知#27)\Input Compression Ratio
\Terminal Services Session(0 未知#28)\Input Compression Ratio
\Terminal Services Session(0 未知#29)\Input Compression Ratio
\Terminal Services Session(0 未知#30)\Input Compression Ratio
\Terminal Services Session(0 未知#31)\Input Compression Ratio
\Terminal Services Session(0 未知#32)\Input Compression Ratio
\Terminal Services Session(0 未知#33)\Input Compression Ratio
\Terminal Services Session(0 未知#34)\Input Compression Ratio
\Terminal Services Session(0 未知#35)\Input Compression Ratio
\Terminal Services Session(0 未知#36)\Input Compression Ratio
\Terminal Services Session(0 未知#37)\Input Compression Ratio
\Terminal Services Session(0 未知#38)\Input Compression Ratio
\Terminal Services Session(0 未知#39)\Input Compression Ratio
\Terminal Services Session(0 未知#40)\Input Compression Ratio
\Terminal Services Session(0 未知#41)\Input Compression Ratio
\Terminal Services Session(0 未知#42)\Input Compression Ratio
\Terminal Services Session(0 未知#43)\Input Compression Ratio
\Terminal Services Session(0 未知#44)\Input Compression Ratio
\Terminal Services Session(0 未知#45)\Input Compression Ratio
\Terminal Services Session(0 未知#46)\Input Compression Ratio
\Terminal Services Session(0 未知#47)\Input Compression Ratio
\Terminal Services Session(0 未知#48)\Input Compression Ratio
\Terminal Services Session(0 未知#49)\Input Compression Ratio
\Terminal Services Session(0 未知#50)\Input Compression Ratio
\Terminal Services Session(0 未知#51)\Input Compression Ratio
\Terminal Services Session(0 未知#52)\Input Compression Ratio
\Terminal Services Session(0 未知#53)\Input Compression Ratio
\Terminal Services Session(0 未知#54)\Input Compression Ratio
\Terminal Services Session(0 未知)\Output Compression Ratio
\Terminal Services Session(0 未知#1)\Output Compression Ratio
\Terminal Services Session(0 未知#2)\Output Compression Ratio
\Terminal Services Session(0 未知#3)\Output Compression Ratio
\Terminal Services Session(0 未知#4)\Output Compression Ratio
\Terminal Services Session(0 未知#5)\Output Compression Ratio
\Terminal Services Session(0 未知#6)\Output Compression Ratio
\Terminal Services Session(0 未知#7)\Output Compression Ratio
\Terminal Services Session(0 未知#8)\Output Compression Ratio
\Terminal Services Session(0 未知#9)\Output Compression Ratio
\Terminal Services Session(0 未知#10)\Output Compression Ratio
\Terminal Services Session(0 未知#11)\Output Compression Ratio
\Terminal Services Session(0 未知#12)\Output Compression Ratio
\Terminal Services Session(0 未知#13)\Output Compression Ratio
\Terminal Services Session(0 未知#14)\Output Compression Ratio
\Terminal Services Session(0 未知#15)\Output Compression Ratio
\Terminal Services Session(0 未知#16)\Output Compression Ratio
\Terminal Services Session(0 未知#17)\Output Compression Ratio
\Terminal Services Session(0 未知#18)\Output Compression Ratio
\Terminal Services Session(0 未知#19)\Output Compression Ratio
\Terminal Services Session(0 未知#20)\Output Compression Ratio
\Terminal Services Session(0 未知#21)\Output Compression Ratio
\Terminal Services Session(0 未知#22)\Output Compression Ratio
\Terminal Services Session(0 未知#23)\Output Compression Ratio
\Terminal Services Session(0 未知#24)\Output Compression Ratio
\Terminal Services Session(0 未知#25)\Output Compression Ratio
\Terminal Services Session(0 未知#26)\Output Compression Ratio
\Terminal Services Session(0 未知#27)\Output Compression Ratio
\Terminal Services Session(0 未知#28)\Output Compression Ratio
\Terminal Services Session(0 未知#29)\Output Compression Ratio
\Terminal Services Session(0 未知#30)\Output Compression Ratio
\Terminal Services Session(0 未知#31)\Output Compression Ratio
\Terminal Services Session(0 未知#32)\Output Compression Ratio
\Terminal Services Session(0 未知#33)\Output Compression Ratio
\Terminal Services Session(0 未知#34)\Output Compression Ratio
\Terminal Services Session(0 未知#35)\Output Compression Ratio
\Terminal Services Session(0 未知#36)\Output Compression Ratio
\Terminal Services Session(0 未知#37)\Output Compression Ratio
\Terminal Services Session(0 未知#38)\Output Compression Ratio
\Terminal Services Session(0 未知#39)\Output Compression Ratio
\Terminal Services Session(0 未知#40)\Output Compression Ratio
\Terminal Services Session(0 未知#41)\Output Compression Ratio
\Terminal Services Session(0 未知#42)\Output Compression Ratio
\Terminal Services Session(0 未知#43)\Output Compression Ratio
\Terminal Services Session(0 未知#44)\Output Compression Ratio
\Terminal Services Session(0 未知#45)\Output Compression Ratio
\Terminal Services Session(0 未知#46)\Output Compression Ratio
\Terminal Services Session(0 未知#47)\Output Compression Ratio
\Terminal Services Session(0 未知#48)\Output Compression Ratio
\Terminal Services Session(0 未知#49)\Output Compression Ratio
\Terminal Services Session(0 未知#50)\Output Compression Ratio
\Terminal Services Session(0 未知#51)\Output Compression Ratio
\Terminal Services Session(0 未知#52)\Output Compression Ratio
\Terminal Services Session(0 未知#53)\Output Compression Ratio
\Terminal Services Session(0 未知#54)\Output Compression Ratio
\Terminal Services Session(0 未知)\Total Compression Ratio
\Terminal Services Session(0 未知#1)\Total Compression Ratio
\Terminal Services Session(0 未知#2)\Total Compression Ratio
\Terminal Services Session(0 未知#3)\Total Compression Ratio
\Terminal Services Session(0 未知#4)\Total Compression Ratio
\Terminal Services Session(0 未知#5)\Total Compression Ratio
\Terminal Services Session(0 未知#6)\Total Compression Ratio
\Terminal Services Session(0 未知#7)\Total Compression Ratio
\Terminal Services Session(0 未知#8)\Total Compression Ratio
\Terminal Services Session(0 未知#9)\Total Compression Ratio
\Terminal Services Session(0 未知#10)\Total Compression Ratio
\Terminal Services Session(0 未知#11)\Total Compression Ratio
\Terminal Services Session(0 未知#12)\Total Compression Ratio
\Terminal Services Session(0 未知#13)\Total Compression Ratio
\Terminal Services Session(0 未知#14)\Total Compression Ratio
\Terminal Services Session(0 未知#15)\Total Compression Ratio
\Terminal Services Session(0 未知#16)\Total Compression Ratio
\Terminal Services Session(0 未知#17)\Total Compression Ratio
\Terminal Services Session(0 未知#18)\Total Compression Ratio
\Terminal Services Session(0 未知#19)\Total Compression Ratio
\Terminal Services Session(0 未知#20)\Total Compression Ratio
\Terminal Services Session(0 未知#21)\Total Compression Ratio
\Terminal Services Session(0 未知#22)\Total Compression Ratio
\Terminal Services Session(0 未知#23)\Total Compression Ratio
\Terminal Services Session(0 未知#24)\Total Compression Ratio
\Terminal Services Session(0 未知#25)\Total Compression Ratio
\Terminal Services Session(0 未知#26)\Total Compression Ratio
\Terminal Services Session(0 未知#27)\Total Compression Ratio
\Terminal Services Session(0 未知#28)\Total Compression Ratio
\Terminal Services Session(0 未知#29)\Total Compression Ratio
\Terminal Services Session(0 未知#30)\Total Compression Ratio
\Terminal Services Session(0 未知#31)\Total Compression Ratio
\Terminal Services Session(0 未知#32)\Total Compression Ratio
\Terminal Services Session(0 未知#33)\Total Compression Ratio
\Terminal Services Session(0 未知#34)\Total Compression Ratio
\Terminal Services Session(0 未知#35)\Total Compression Ratio
\Terminal Services Session(0 未知#36)\Total Compression Ratio
\Terminal Services Session(0 未知#37)\Total Compression Ratio
\Terminal Services Session(0 未知#38)\Total Compression Ratio
\Terminal Services Session(0 未知#39)\Total Compression Ratio
\Terminal Services Session(0 未知#40)\Total Compression Ratio
\Terminal Services Session(0 未知#41)\Total Compression Ratio
\Terminal Services Session(0 未知#42)\Total Compression Ratio
\Terminal Services Session(0 未知#43)\Total Compression Ratio
\Terminal Services Session(0 未知#44)\Total Compression Ratio
\Terminal Services Session(0 未知#45)\Total Compression Ratio
\Terminal Services Session(0 未知#46)\Total Compression Ratio
\Terminal Services Session(0 未知#47)\Total Compression Ratio
\Terminal Services Session(0 未知#48)\Total Compression Ratio
\Terminal Services Session(0 未知#49)\Total Compression Ratio
\Terminal Services Session(0 未知#50)\Total Compression Ratio
\Terminal Services Session(0 未知#51)\Total Compression Ratio
\Terminal Services Session(0 未知#52)\Total Compression Ratio
\Terminal Services Session(0 未知#53)\Total Compression Ratio
\Terminal Services Session(0 未知#54)\Total Compression Ratio
\Terminal Services\Total Sessions
\Terminal Services\Active Sessions
\Terminal Services\Inactive Sessions
\VMware\Virtual Disk Transfers/sec
\VMware\Virtual Disk Reads/sec
\VMware\Virtual Disk Writes/sec
\VMware\Virtual Disk Bytes Transferred/sec
\VMware\Virtual Disk Bytes Read/sec
\VMware\Virtual Disk Bytes Written/sec
\VMware\Guest Locked Memory Bytes
\VMware\Guest Virtual Physical Memory Bytes
\VMware\Percent Guest Physical Memory Touched
\VMware\Network Transfers/sec
\VMware\Network Bytes Transferred/sec
\VMware\Network Transfer Errors/sec
\VMware\Network Packets Sent/sec
\VMware\Network Bytes Sent/sec
\VMware\Network Send Errors/sec
\VMware\Network Packets Received/sec
\VMware\Network Bytes Received/sec
\VMware\Network Receive Errors/sec
\ServiceModelService 3.0.0.0\Calls
\ServiceModelService 3.0.0.0\Calls Per Second
\ServiceModelService 3.0.0.0\Calls Outstanding
\ServiceModelService 3.0.0.0\Calls Failed
\ServiceModelService 3.0.0.0\Calls Failed Per Second
\ServiceModelService 3.0.0.0\Calls Faulted
\ServiceModelService 3.0.0.0\Calls Faulted Per Second
\ServiceModelService 3.0.0.0\Calls Duration
\ServiceModelService 3.0.0.0\Transactions Flowed
\ServiceModelService 3.0.0.0\Transactions Flowed Per Second
\ServiceModelService 3.0.0.0\Transacted Operations Committed
\ServiceModelService 3.0.0.0\Transacted Operations Committed Per Second
\ServiceModelService 3.0.0.0\Transacted Operations Aborted
\ServiceModelService 3.0.0.0\Transacted Operations Aborted Per Second
\ServiceModelService 3.0.0.0\Transacted Operations In Doubt
\ServiceModelService 3.0.0.0\Transacted Operations In Doubt Per Second
\ServiceModelService 3.0.0.0\Security Validation and Authentication Failures
\ServiceModelService 3.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelService 3.0.0.0\Security Calls Not Authorized
\ServiceModelService 3.0.0.0\Security Calls Not Authorized Per Second
\ServiceModelService 3.0.0.0\Instances
\ServiceModelService 3.0.0.0\Instances Created Per Second
\ServiceModelService 3.0.0.0\Reliable Messaging Sessions Faulted
\ServiceModelService 3.0.0.0\Reliable Messaging Sessions Faulted Per Second
\ServiceModelService 3.0.0.0\Reliable Messaging Messages Dropped
\ServiceModelService 3.0.0.0\Reliable Messaging Messages Dropped Per Second
\ServiceModelService 3.0.0.0\Queued Poison Messages
\ServiceModelService 3.0.0.0\Queued Poison Messages Per Second
\ServiceModelService 3.0.0.0\Queued Messages Rejected
\ServiceModelService 3.0.0.0\Queued Messages Rejected Per Second
\ServiceModelService 3.0.0.0\Queued Messages Dropped
\ServiceModelService 3.0.0.0\Queued Messages Dropped Per Second
\ServiceModelService 4.0.0.0\Calls
\ServiceModelService 4.0.0.0\Calls Per Second
\ServiceModelService 4.0.0.0\Calls Outstanding
\ServiceModelService 4.0.0.0\Calls Failed
\S正在退出，请稍候...                        
命令成功结束。
erviceModelService 4.0.0.0\Calls Failed Per Second
\ServiceModelService 4.0.0.0\Calls Faulted
\ServiceModelService 4.0.0.0\Calls Faulted Per Second
\ServiceModelService 4.0.0.0\Calls Duration
\ServiceModelService 4.0.0.0\Transactions Flowed
\ServiceModelService 4.0.0.0\Transactions Flowed Per Second
\ServiceModelService 4.0.0.0\Transacted Operations Committed
\ServiceModelService 4.0.0.0\Transacted Operations Committed Per Second
\ServiceModelService 4.0.0.0\Transacted Operations Aborted
\ServiceModelService 4.0.0.0\Transacted Operations Aborted Per Second
\ServiceModelService 4.0.0.0\Transacted Operations In Doubt
\ServiceModelService 4.0.0.0\Transacted Operations In Doubt Per Second
\ServiceModelService 4.0.0.0\Security Validation and Authentication Failures
\ServiceModelService 4.0.0.0\Security Validation and Authentication Failures Per Second
\ServiceModelService 4.0.0.0\Security Calls Not Authorized
\ServiceModelService 4.0.0.0\Security Calls Not Authorized Per Second
\ServiceModelService 4.0.0.0\Instances
\ServiceModelService 4.0.0.0\Instances Created Per Second
\ServiceModelService 4.0.0.0\Reliable Messaging Sessions Faulted
\ServiceModelService 4.0.0.0\Reliable Messaging Sessions Faulted Per Second
\ServiceModelService 4.0.0.0\Reliable Messaging Messages Dropped
\ServiceModelService 4.0.0.0\Reliable Messaging Messages Dropped Per Second
\ServiceModelService 4.0.0.0\Queued Poison Messages
\ServiceModelService 4.0.0.0\Queued Poison Messages Per Second
\ServiceModelService 4.0.0.0\Queued Messages Rejected
\ServiceModelService 4.0.0.0\Queued Messages Rejected Per Second
\ServiceModelService 4.0.0.0\Queued Messages Dropped
\ServiceModelService 4.0.0.0\Queued Messages Dropped Per Second
\ServiceModelService 4.0.0.0\Percent Of Max Concurrent Calls
\ServiceModelService 4.0.0.0\Percent Of Max Concurrent Instances
\ServiceModelService 4.0.0.0\Percent Of Max Concurrent Sessions
\WMI Objects\HiPerf Classes
\WMI Objects\HiPerf Validity

