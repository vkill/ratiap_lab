#!/usr/bin/env ruby

#
# ref https://en.wikipedia.org/wiki/Unix_signal
# ref http://ruby-doc.org/core-2.2.0/Signal.html
# ref http://blog.csdn.net/bingqingsuimeng/article/details/8603696
#
# $ kill -l | sed -e 's/ /\n/g' | awk '{print FNR, $1}'
#

# SIGINT
# ^C
# Ctrl-C
Signal.trap("INT") do
  puts "INT"
  exit
end

# SIGTERM
# kill pid or killall ruby
Signal.trap("TERM") do
  puts "TERM"
  exit
end

# SIGQUIT
# ^\
# Ctrl-\ or Ctrl-4
Signal.trap("QUIT") do
  puts "QUIT"
  exit
end

# SIGABRT
#
Signal.trap("ABRT") do
  puts "ABRT"
  exit
end

# SIGPIPE
#
Signal.trap("PIPE") do
  puts "PIPE"
  exit
end

puts %^
Press Ctrl-C
Press Ctrl-\ or Ctrl-4
$ kill #{Process.pid}
$ killall ruby
$ kill -9 #{Process.pid}
^

loop {}


