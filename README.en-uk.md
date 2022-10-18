# NUMERO6 WebRTC telephone - Hello there!

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.en-uk.md)
[![fr-ch](https://img.shields.io/badge/lang-fr--ch-green.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.md)

GitHub site under construction, to be continued...
Testers, experimenters, individuals, companies and projects are welcome.
A concentrate of opensource technologies is used for this project. Please contribute by opening issues and bugs.

##### Goal: To replace the fixed telephone set with much more advanced technology. WebRTC is a major disruption in the way we communicate and you are all already using this technology. Applying the same technologies to Fixed Phone represents a major disruption and evolution.
Everything becomes super simple and huge benefits result.

Some of my clients already use it in business, today I have the opportunity to offer this functionality to everyone. Calls are voluntarily limited to 2 participants. I use the backend tel.free-solutions.org

## Immediate Tel WebRTC Advantage:

- Free and unlimited communications in duration whatever the country
- Turn your TV into a free and unlimited phone with a Raspberry PI
- More Numbers, for your contacts, just click on the call URL on Android, Iphone or PC & Mac
- Secured by default because limited and locked to 2 users. When you have your contact on the line, no one can join the call.
- Possibility of having a global directory of URLs see https://tel.free-solutions.org
- Consumes only 2.5W on average on RaspBerry to be permanently reachable via a web URL
- Nothing to install for your contacts just a click on the URL
- Audio communications are encrypted by default/https unlike standard telephony
- Allows voice over IP without complexity with very high audio quality
- The links are P2P most of the time if you use a browser based on chromium.


## Developers and contributors:
Everyone is welcome to contribute, introduce ideas and or help to evolve the code.

# Ubuntu 20.04 & Ubuntu 22.04
## Required Packages
- chromium-browser: It is IMPERATIVE to use chromium with the xvfb, no firefox in the shell script, THANK YOU!
- xvfb
- pulseaudio
- fbi
- qrencode
- curl
- imagemagick
- libttspico-utils

#### Execute the following commands to install the required packages for NUMERO6_FS

### Prerequisites
apt install chromium-browser -y &&
apt install xvfb -y &&
apt install pulseaudio -y &&
apt install fbi -y &&
apt install qrencode -y &&
apt install curl -y &&
apt install imagemagick -y
apt install libttspico-utils -y


### Install and use NUMERO6_FS
- Download the executable for Ubuntu/Debian/Mint NUMERO6_FS here: https://github.com/ClaudeStabile/NUMERO6
- It's a binary so you have to chmod +x ./NUMERO6_FS
- See help ./NUMERO6_FS -h
- Start your WebRTC phone: run the script without options: ./NUMERO6_FS The system starts and creates the image with the QRCode of the Call
- To stop your WebRTC phone ./NUMERO6_FS -s

# RaspBerry PI3 & PI4
Hardware
- You need PI3 or a PI4 a microSD card of 16GB or more.
- A USB microphone or a camera with a microphone included ==> IT IS IMPERATIVE A MICRO USB ON THE USB PORT, a camera with a microphone included does the trick, it is imperative and it must be plugged in before booting !! !
- Connect your USB devices before booting.
- A standard speaker connected to the wired audio output: A simple HP allows you to have the audio connected all the time
- An internet connection via RJ45 / No WIFI
- Optional: a USB keyboard and mouse.
- Optional: An HDMI monitor TV screen, if you don't have a Display, you can go to https://tel.free-solutions.org to find your URL in the list. So the screen is not necessarily necessary!

1-Install balena etcher on your PC/Mac from here https://www.balena.io/etcher/

2-Make your microSD card with a capacity of 16GB or + with balena etcher and the URL: http://green-spider.free-solutions.org/NUMERO6_RASP_PI.dd.gz

3-Start your RaspBerry PI with your microSD card

### LICENSE: The script is under GNU License and therefore if you use this script or the binary produced, you must provide the source shell script as well as the GNU/GPL license of this directory. You can copy modify redistribute as much as you want by respecting this condition. Thanks


See the RaspBerry boot in the video below
[![Watch the video](https://www.free-solutions.ch/clearspace/servlet/JiveServlet/previewBody/4823-102-1-8030/thumnailrasp.jpg)](https://www.free- solutions.ch/clearspace/servlet/JiveServlet/previewBody/4822-102-1-8026/Raspi3bootosp.webm)

4-Share the URL or QR Code to your contacts so they can reach you

#### ATTENTION: Voluntarily I change URL each time the PI or the call restart on Ubuntu. This is not the case for my clients who can have a dedicated call URL per employee

### Raspberry sound output

- By default the sound output is on the Audio port
- You can change the audio output by launching "sudo raspi-config" blindly at the prompt then "system options" then "audio"
- To access the terminal: ESC
- You can also configure the WIFI with the raspi-config menu
- After configuring WIFI, Reboot and your Pi becomes mobile, a single electrical outlet and it works!
