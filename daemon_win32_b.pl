#!/usr/bin/perl

  # This style of Win32::Daemon use is obsolete. It still works but the
  # callback model is more efficient and easier to use. Refer to examples 4 and 5.
  use Win32;
  use Win32::Daemon;
  $SERVICE_SLEEP_TIME = 20; # 20 milliseconds
  $PrevState = SERVICE_START_PENDING;
  Win32::Daemon::StartService();
  while( SERVICE_STOPPED != ( $State = Win32::Daemon::State() ) )
  {
    if( SERVICE_START_PENDING == $State )
    {
        # Initialization code
        Win32::Daemon::State( SERVICE_RUNNING );
        $PrevState = SERVICE_RUNNING;
    }
    elsif( SERVICE_STOP_PENDING == $State )
    {
      Win32::Daemon::State( SERVICE_STOPPED );
    }
    elsif( SERVICE_PAUSE_PENDING == $State )
    {
      # "Pausing...";
      Win32::Daemon::State( SERVICE_PAUSED );
      $PrevState = SERVICE_PAUSED;
      next;
    }
    elsif( SERVICE_CONTINUE_PENDING == $State )
    {
      # "Resuming...";
      Win32::Daemon::State( SERVICE_RUNNING );
      $PrevState = SERVICE_RUNNING;
      next;
    }
    elsif( SERVICE_STOP_PENDING == $State )
    {
      # "Stopping...";
      Win32::Daemon::State( SERVICE_STOPPED );
      $PrevState = SERVICE_STOPPED;
      next;
    }
    elsif( SERVICE_RUNNING == $State )
    {
      # The service is running as normal...
      # ...add the main code here...
	  
    }
    else
    {
      # Got an unhandled control message. Set the state to
      # whatever the previous state was.
      Win32::Daemon::State( $PrevState );
    }

	# Check for any outstanding commands. Pass in a non zero value
	# and it resets the Last Message to SERVICE_CONTROL_NONE.
	if( SERVICE_CONTROL_NONE != ( my $Message = Win32::Daemon::QueryLastMessage( 1 ) ) )
	{
          if( SERVICE_CONTROL_INTERROGATE == $Message )
          {
            # Got here if the Service Control Manager is requesting
            # the current state of the service. This can happen for
            # a variety of reasons. Report the last state we set.
            Win32::Daemon::State( $PrevState );
          }
        elsif( SERVICE_CONTROL_SHUTDOWN == $Message )
        {
          # Yikes! The system is shutting down. We had better clean up
          # and stop.
          # Tell the SCM that we are preparing to shutdown and that we expect
          # it to take 25 seconds (so don't terminate us for at least 25 seconds)...
          Win32::Daemon::State( SERVICE_STOP_PENDING, 25000 );
        }
      }
      # Snooze for awhile so we don't suck up cpu time...
      Win32::Sleep( $SERVICE_SLEEP_TIME );
   }
   # We are done so close down...
   Win32::Daemon::StopService();
