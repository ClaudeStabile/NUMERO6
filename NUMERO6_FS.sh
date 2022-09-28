#!/bin/bash
#
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
       export CurrentURL=`ps -ef | grep chromium | grep tel.free-solutions  | awk '{ print $NF }'` 
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
Xvfb :1 -screen 0 '64x48x16' -ac &> /dev/null &
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
qrencode -s 6 -l H $URLName -o ~/QRCode_Tel_Free_Solutions.png
#echo $RoomName
#echo $URLName
#echo "You are reacheable at this URL NOW ! : "$URLName
DISPLAY=:1 /usr/bin/chromium-browser --incognito --noerrdialogs --disable-gpu --disable-crashpad --use-fake-ui-for-media-stream --window-size 64x48 --kiosk --display $URLName &>/dev/null & 
echo "You are reacheable at this URL NOW ! :  "$URLName
echo "Your URL QRcode image is named QRCode_Tel_Free_Solutions.png and located in your home directory"
#
#
convert ~/QRCode_Tel_Free_Solutions.png  -compose copy -bordercolor blue -resize 1280x1024 -border 100 ~/QRCode_Tel_Free_Solutions_Border.png
mogrify ~/QRCode_Tel_Free_Solutions_Border.png -font helvetica -fill red -pointsize 52 -annotate +80+60 $URLName ~/QRCode_Tel_Free_Solutions_Border.png
convert ~/QRCode_Tel_Free_Solutions_Border.png ~/New_logo_3d1_1200.png +smush -0 ~/QRCode_Tel_Free_Solutions.png
mogrify ~/QRCode_Tel_Free_Solutions.png -resize 1920x1080 -font helvetica -fill black -pointsize 38 -annotate +1000+60 "Utilisez votre mobile\n pour aller sur l'URL de votre Tel Web privé\nScannez ce code QR et accedez directement !\n\n\Vous êtes maintenant joignable directement\n    via cette URL d'un simple click\n\ Sur Mobile ou ordinateur\n\n\n\n\n\n\n CTRL + ALT + DEL pour arrêter le raspberry\n\n ESC pour retourner au shell\n\n Votre téléphone web est prêt à l'usage"  ~/QRCode_Tel_Free_Solutions.png
export ARCHOS=`uname -a | grep aarch64`
echo "archos :"$ARCHOS
if [ ! -z "$ARCHOS" ] 
then
sudo /usr/bin/fbi -T 1 ~/QRCode_Tel_Free_Solutions.png
pico2wave --lang="fr-FR" -w out.wav "Votre téléphone ouaibe R T C est maintenant joignable vi a h t t p s 2 points // telle point free tirêt solutions point org" && aplay out.wav 
pico2wave --lang="fr-FR" -w out.wav "Votre meeting room est  " && aplay out.wav 
pico2wave --lang="fr-FR" -w out.wav "`echo $COUNTRY` tirébas `echo $CITY` tiret bas `echo $RandomNumber`" && aplay out.wav
pico2wave --lang="fr-FR" -w out.wav "Je répète `echo $COUNTRY` tirébas `echo $CITY` tiret bas `echo $RandomNumber`" && aplay out.wav
sleep2 
pico2wave --lang="fr-FR" -w out.wav "Allez sur h t t p s 2 points // telle point free tirêt solutions point org et recherchez votre U R L" && aplay out.wav 
exit;
else
	echo "This is Ubuntu version, l'image avec le QRCode se trouve dans votre home directory"
fi
exit
