#!/bin/bash
docker build -t grappendorf/ruby:2.1.5 .
docker tag grappendorf/ruby:2.1.5 grappendorf/ruby:2.1
docker tag grappendorf/ruby:2.1.5 grappendorf/ruby:2
