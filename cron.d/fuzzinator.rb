require 'net/http'
require 'uri'

every "2s" do
  [
    "http://truestack-fuzzer.com/",
    "http://truestack-fuzzer.herokuapp.com/fuzz/1"
  ].each do |url|
    puts "Calling #{url}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
  end
end

every "4s" do
  [
    "http://truestack-fuzzer.herokuapp.com/fuzz/exception"
  ].each do |url|
    puts "Calling #{url}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
  end
end

every "6s" do
  [
    "http://truestack-fuzzer.herokuapp.com/fuzz/2",
    "http://truestack-fuzzer.herokuapp.com/fuzz/3"
  ].each do |url|
    puts "Calling #{url}"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
  end
end
