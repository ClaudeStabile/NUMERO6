# NUMERO6 Telephone WebRTC - Bonjour chez vous !

## But : Remplacer le poste de tel fixe par une technologie bien plus avancée. Le WebRTC est une disruption majeure dans notre façon de communiquer et vous utilisez déjà tous cette technologie. Appliquer les même technologies au Tel Fixe représente une disruption et une évolution majeure.
Tout deviens ultra simplissible et d'enormes avantages en résultent.

## Avantage Tel WebRTC

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.en-uk.md)
[![fr-ch](https://img.shields.io/badge/lang-fr--ch-green.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.md)

Site GitHub en construction, à suivre...
Testeurs , experienceurs, particuliers, entreprises et projects sont les bienvenus.
Un concentré de technlogies opensource est utilisé pour ce projet. Merci de bien vouloir contribuer en ouvrant des issues et bugs



# Ubuntu 20.04 & Ubuntu 22.04
## Packages nécessaires

#### Executez les commandes suivantes pour installer les packages requis pour NUMERO6_FS

apt install chromium-browser -y apt install xvfb -y apt install pulseaudio -y apt install fbi -y apt install qrencode -y apt install curl -y

Puis téléchargez l'executable pour Ubuntu/debian/Mint NUMERO6_FS ici : (https://github.com/ClaudeStabile/NUMERO6
C'est un binaire il vous faut donc faire un chmod +x NUMERO6_FS 
  Voir l'aide ./NUMERO6_FS -h 
  Demarrer votre telephone WebRTC : executez le script sans option : ./NUMERO6_FS Le système démarre et crée l'image avec le QRCode du Call

# RaspBerry PI3 & PI4
Hardware you need A Raspberry PI 3 or 6 A microSD card of 16GB or more A USB Microphone or a camera with a micro included ==> plug on USB before booting up A speaker connect to the audio output : A basic speaker permanently connected will do optional : USB keyboard & mouse A TV HDMI monitor, only to get your URL You can also go to https://tel,free-solutions.ch to find your PI in the list. So no TV is really needed

1-Install balena etcher on your computer from https://www.balena.io/etcher/

2-Burn a 16GB or + microSD card with the distro at URL : http://green-spider.free-solutions.org/NUMERO6_RASP_PI.dd.gz

3-Startup you RaspBerry PI with freshly burn microSD card

Video ici

4-Share URL or QR Code to call your RaspBerry
