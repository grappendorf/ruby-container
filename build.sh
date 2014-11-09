#!/bin/bash
docker build -t grappendorf/ruby:2.1.3 .
docker tag grappendorf/ruby:2.1.3 grappendorf/ruby:2.1
docker tag grappendorf/ruby:2.1.3 grappendorf/ruby:2
