#!/usr/bin/env ruby

%w(sinatra slim).each do |gem|
  require gem
end

get '/' do
  slim :index
end
