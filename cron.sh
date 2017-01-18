#!/bin/bash
source /home/yumu/.bash_profile
cd /home/yumu/tokodai_gakucho_bot/
date >> log
ruby tweet.rb >> log
