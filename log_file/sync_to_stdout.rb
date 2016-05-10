#!/usr/bin/env ruby

require 'tmpdir'
require 'fileutils'
require 'io/wait'

require 'pry'

log_file = File.join(Dir.tmpdir, 'test.log')

FileUtils.mkdir_p File.dirname(log_file)
FileUtils.touch log_file
FileUtils.chmod 0777, log_file
File.truncate(log_file, 0)

writer = File.open(log_file, 'r')
writer.wait_readable

while true
  if line = writer.gets
    puts line
  end
end
