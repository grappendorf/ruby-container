#!/bin/bash
docker rmi -f ruby:2.1.3
docker build -t grappendorf/ruby:2.1.3 .
