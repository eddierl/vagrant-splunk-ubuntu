#!/usr/bin/env bash

cd /vagrant
echo Download Splunk
wget  -nc -O splunk-6.0.1-189883-Linux-i686.tgz 'http://www.splunk.com/page/download_track?file=6.0.1/splunk/linux/splunk-6.0.1-189883-Linux-i686.tgz&ac=&wget=true&name=wget&platform=Linux&architecture=x86&version=6.0.1&product=splunkd&typed=release&elq=39e6a0cd-5032-44ee-a31a-794a91c868d5'

echo Extracting Splunk
tar -C /opt -xzkf splunk-6.0.1-189883-Linux-i686.tgz 

IFS=$(echo -en "\n\b")
for splunk_app in `ls /vagrant/apps`
do
	ln -s /vagrant/apps/$splunk_app /opt/splunk/etc/apps/$splunk_app
done
/opt/splunk/bin/splunk start --accept-license
/opt/splunk/bin/splunk enable boot-start
touch /opt/splunk/etc/.ui_login