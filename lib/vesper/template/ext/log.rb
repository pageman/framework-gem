module Log

  def self.message(msg)
    File.open('log/messages.log', 'a+') { |f| f.write("\n#{msg}\n") }
  end

  def self.write_errors(env, request)
    if env['sinatra.error']
      File.open("log/#{settings.environment}.log", 'a+') do |f|
        f.write("\n#{env['sinatra.error']}\n")
        f.write("  #{Time.now} #{env['SERVER_PROTOCOL']} #{request.port} #{request.request_method} #{request.url}\n\n")
      end
    end
  end

  def self.write_requests_and_errors(env, request)
    File.open("log/#{settings.environment}.log", 'a+') do |f|
      f.write("\n#{env['sinatra.error']}\n") if env['sinatra.error']
      f.write("  #{Time.now} #{env['SERVER_PROTOCOL']} #{request.port} #{request.request_method} #{request.url}\n")
      f.write("\n") if env['sinatra.error']
    end
  end

  def self.clear(file)
    File.open("log/#{file}.log", 'w+') if File::exists?("log/#{file}.log")
  end

end