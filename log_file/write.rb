#!/usr/bin/env ruby

require 'tmpdir'
require 'logger'

log_file = File.join(Dir.tmpdir, 'test.log')

logger = Logger.new(log_file)

loop do
  logger.info Time.now
  sleep 3
end
