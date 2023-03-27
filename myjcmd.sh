 my prefered java diagnosis commands
 
## Prints the list of running Java processes ids with the main class and command-line arguments.
sudo jcmd -l


## Show process info (like the process_user ...etc) using OS commad
ps -up process_id


## You know the user, and you need corresponding java process
sudo -u process_user jcmd -l


## List of available diagnosis info that can be requested to jvm 
sudo -u process_user jcmd process_id help

e.g. 

> sudo -u tomcat jcmd  27938 help
> The following commands are available:
VM.unlock_commercial_features
JFR.configure
JFR.stop
JFR.start
JFR.dump
JFR.check
VM.native_memory
ManagementAgent.stop
ManagementAgent.start_local
ManagementAgent.start
VM.classloader_stats
GC.rotate_log
Thread.print
GC.class_stats
GC.class_histogram
GC.heap_dump
GC.finalizer_info
GC.heap_info
GC.run_finalization
GC.run
VM.uptime
VM.dynlibs
VM.flags
VM.system_properties
VM.command_line
VM.version
help


## Show System.getProperties()
sudo -u process_user jcmd process_id VM.system_properties


## Show arguments used directly when java commad line si executed
sudo -u process_user jcmd process_id VM.command_line


## Show jvm tuning flags of a java process
sudo -u process_user jcmd process_id VM.flags


## Collect threads dump
sudo -u process_user jcmd process_id Thread.print
