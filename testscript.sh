#!/bin/sh
url_status_1="$(curl -io /dev/null --silent --write-out '%{http_code}' https://harbor.infrastructure.volvo.care/v2/bakeryharborrepo/helloworld-spring-boot/tags/list)"
url_status_2="$(curl -io /dev/null --silent --write-out '%{http_code}' https://harbor.infrastructure.volvo.care/api/v2.0/ping)"
#echo $url_status_1
#echo $url_status_2
if [ "$url_status_1" == "200" ] && [ "$url_status_2" == "200" ]; then
#  echo "GOOD"
  exit 0
else
#  echo "BAD"
  exit 1
fi
