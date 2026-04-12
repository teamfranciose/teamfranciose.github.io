require 'webrick'
dir = File.dirname(File.expand_path(__FILE__))
server = WEBrick::HTTPServer.new(
  Port: 3456,
  DocumentRoot: dir,
  AccessLog: [],
  Logger: WEBrick::Log.new(File.open(File::NULL, 'w'))
)
trap('INT') { server.stop }
server.start
