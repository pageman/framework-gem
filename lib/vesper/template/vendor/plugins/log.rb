module Log

  # Writes a message to /log/messages.log
  #
  # Example:
  #  >> Log.message 'This is a message'
  #
  # Arguments:
  #  msg
  #
  def self.message msg
    File.open('log/messages.log', 'a+') { |f| f.write("\n#{msg}\n") }
  end

  # Writes errors to a log file
  #
  # Example:
  #  >> Log.write_errors request.env, request
  #
  # Arguments:
  #  env (also the name of the log file, ex: development.log), request (used to parse errors)
  #
  def self.write_errors env, request
    if env['sinatra.error']
      File.open("log/#{settings.environment}.log", 'a+') do |f|
        f.write("\n#{env['sinatra.error']}\n")
        f.write("  #{Time.now} #{env['SERVER_PROTOCOL']} #{request.port} #{request.request_method} #{request.url}\n\n")
      end
    end
  end
  
  # Writes errors and requests to a log file
  #
  # Example:
  #  >> Log.write_requests_and_errors request.env, request
  #
  # Arguments:
  #  env (also the name of the log file, ex: development.log), request (used to parse errors and requests)
  #
  def self.write_requests_and_errors env, request
    File.open("log/#{settings.environment}.log", 'a+') do |f|
      f.write("\n#{env['sinatra.error']}\n") if env['sinatra.error']
      f.write("  #{Time.now} #{env['SERVER_PROTOCOL']} #{request.port} #{request.request_method} #{request.url}\n")
      f.write("\n") if env['sinatra.error']
    end
  end

  # Clears a log file
  #
  # Example:
  #  >> Log.clear 'messages'
  #
  # Arguments:
  #  file (name of log file to clear)
  #
  def self.clear file
    File.open("log/#{file}.log", 'w+') if File::exists?("log/#{file}.log")
  end

end