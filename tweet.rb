# coding: utf-8
require 'rubygems'
gem 'twitter'
require 'twitter'
require 'sqlite3'
require 'uri'
require 'yaml'
require 'prime'

f1 = open("config.yml")
yaml = YAML.load(f1.read) 
f1.close

Twitter.configure do |config|
  config.consumer_key = yaml['consumer_key']
  config.consumer_secret = yaml['consumer_secret']
  config.oauth_token = yaml['access_token']
  config.oauth_token_secret = yaml['access_token_secret']
end

s = ""

a = rand(10)
if (a > 6)
  lc = open("res.txt").read.count("\n")
  open("res.txt") {|f|
    s << f.readlines[rand(lc)]
  }
else
  b = rand(1000000)
  n = Prime.each(b).each{|prime| prime }
  s = "#{n}"
end

p s
Twitter.update(s)
