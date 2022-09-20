#!/bin/bash
#
export PID=`ps -ef | grep chromium | grep media | grep tel.free-solutions | awk '{ print $2 }'`
if [[ ( $@ == "--help") ||  $@ == "-h" ]]
then
	echo "Usage: $0 [no option start an audio call | -l list audiocall conf running | -s stop call process | -h help ]"
	exit 0
fi
while getopts 'lsh' OPTION; do
  case "$OPTION" in
    l)
       export CurrentURL=`ps -ef | grep chromium | grep tel.free-solutions  | awk '{ print $13 }'` 
       echo "Audio Conference currently running :"$CurrentURL
          exit 0
      ;;
    s)
      if [ -z "$PID" ]
      then 
        echo "No vidcall process to be killed !"
        exit;
     else 
	echo "Kiling process "$PID
	kill -9 $PID
      exit;
      fi
      ;;
    h)
      echo "script usage: $(basename \$0) [-s] [-h]" >&2
	  exit 0
      ;;
    ?)
      echo "script usage: $(basename \$0) [-s] [-h]" >&2
      exit 1
      ;;
  esac
done
#if [ ! -z "$PID" ]
#then 
#	echo "There is already an audio call conference running, please stop it with "-s" option before re-starting"
#	exit
#fi
Xvfb :1 -screen 0 '1280x1024x16' -ac &> /dev/null &
export DISPLAY=:1
xset -q &>/dev/null
#DetermineRoom Name 
# Free-Solutions tel https://tel.free-solutions.org
#Random number
export RandomNumber=`tr -dc "[:digit:]" < /dev/urandom | head -c 4`
# Get city & country
geolocate(){ 
export PubIP=`curl -s ifconfig.me`
curl -s https://ipinfo.io/$PubIP | grep $1 | awk '{ print$2 }' | sed 's/\"//g' | sed 's/,//g'
}
export CITY=`geolocate city`
export COUNTRY=`geolocate country`
#echo "ville :"$CITY
#echo "Pays:"$COUNTRY
export RoomName=$COUNTRY"_"$CITY"_"$RandomNumber
export URLName="https://tel.free-solutions.org/"$RoomName
qrencode -l H $URLName -o QRCode_Tel_Free_Solutions.png
#echo $RoomName
#echo $URLName
#echo "You are reacheable at this URL NOW ! : "$URLName
#if [ -z "$PID" ]
#      then
/usr/bin/chromium-browser -disable-gpu -disable-crashpad -use-fake-ui-for-media-stream $URLName &>/dev/null & 
echo "You are reacheable at this URL NOW ! :  "$URLName
echo "Your URL QRcode image is named QRCode_Tel_Free_Solutions.png and located in your home directory"
exit
#else
	#Currrent URL
#	export CurrentURL=`ps -ef | grep chromium | grep tel.free-solutions  | awk '{ print $13 }'` 
#	echo "Conference running :"$CurrentURL
#	echo "There is already an audio call conference running, please stop it with "-s" option before re-starting"
#	echo "Process Number :"$PID
#	exit 0
#fi
#echo "There is already an audio call conference running, please stop it with "-s" option before re-starting"
