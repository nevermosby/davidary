#!/bin/env ruby

require 'rest_client'
require 'nokogiri'
puts "this is test"

response = RestClient.get 'http://www.tianqi.com/chuanyi-shanghai-2/'
puts "response code: #{response.code}"
# puts "response header: #{response.headers}"
puts "response content: #{response.to_s}"
doc = Nokogiri::HTML(response.to_s)
doc.css('#main .left700 .r480 p').each do |p|
  puts p.content
end
