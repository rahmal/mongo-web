$:.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'bundler'
Bundler.require(:default)

set :environment, :development 

log = File.new("log/mongo-web.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'serve'
run Sinatra::Application

