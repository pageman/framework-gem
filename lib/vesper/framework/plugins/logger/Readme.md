Logger Vesper Plugin
====================
> Writes to and clears out log files.


message(msg)
------------
> Writes to log/messages.log.

    >> Log.message('This is my message.')
	=> This is my message


write_errors(request)
---------------------
> Writes errors to a log file.

	>> before do
	>>   Log.write_errors request
	>> end


write_requests_and_errors(request)
----------------------------------
> Writes errors and requests to a log file.

	>> before do
	>>   Log.write_requests_and_errors request
	>> end


clear(file)
-----------
> Clears out a log file.

    >> Log.clear('messages')
	
> Also useful as a rake task.

	>> rake log:clear file=messages