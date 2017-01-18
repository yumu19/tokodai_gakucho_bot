# coding: utf-8
require 'bundler/setup'
require 'twitter'
require 'yaml'
require 'prime'

config = YAML.load_file('config.yml')

twitter_client = Twitter::REST::Client.new do |c|
  c.consumer_key = config["twitter"]["consumer_key"]
  c.consumer_secret = config["twitter"]["consumer_secret"]
  c.access_token = config["twitter"]["access_token"]
  c.access_token_secret = config["twitter"]["access_token_secret"]
end

s = ""

a = rand(10)
if (a > 6)
  lc = open("res.txt").read.count("\n")
  open("res.txt") {|f|
    s << f.readlines[rand(lc)]
  }
elsif (a == 6)
  b = rand(10000000)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
elsif (a > 3)
  b = rand(1000000)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
elsif (a == 3)
  b = rand(10000)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
elsif (a > 0)
  b = rand(100)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
else
  b = rand(10)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
end

p s
twitter_client.update(s)
