#!/bin/bash
cd ~/tokodai_gakucho_bot/
date >> log
/usr/local/bin/bundle exec ruby tweet.rb >> log
