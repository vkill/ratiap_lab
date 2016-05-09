#!/usr/bin/env ruby

require 'tmpdir'
require 'fileutils'
require 'pry'

log_file = File.join(Dir.tmpdir, 'test.log')

FileUtils.mkdir_p File.dirname(log_file)
FileUtils.touch log_file
FileUtils.chmod 0777, log_file

writer = File.open(log_file, 'r')

while true
  if line = writer.gets
    puts line
  end
end
