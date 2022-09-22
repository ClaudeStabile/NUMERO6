# NUMERO6 Telephone WebRTC - Bonjour chez vous !

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.en-uk.md)
[![fr-ch](https://img.shields.io/badge/lang-fr--ch-green.svg)](https://github.com/ClaudeStabile/NUMERO6/blob/main/README.md)

Site GitHub en construction, à suivre...
Testeurs , experienceurs, particuliers, entreprises et projects sont les bienvenus.
Un concentré de technlogies opensource est utilisé pour ce projet. Merci de bien vouloir contribuer en ouvrant des issues et bugs.

##### But : Remplacer le poste de telephone fixe par une technologie bien plus avancée. Le WebRTC est une disruption majeure dans notre façon de communiquer et vous utilisez déjà tous cette technologie. Appliquer les mêmes technologies au Tel Fixe représente une disruption et une évolution majeure.
Tout deviens ultra simplissible et d'énormes avantages en résultent.

Certains de mes clients utilisent déjà en entreprise, j'ai aujourd'hui la possibilité d'offrir cette fonctionalité à tous. Les Call sont volontairement limités à 2 participants. J'utilise le backend tel.free-solutions.org d'autre

## Avantage Tel WebRTC immédiats :

- Communication gratuites et illimitées en durée quelque soit le pays
- Plus de Numeros, juste à cliquer sur l'URL du call sur Android, Iphone ou PC & Mac
- Sécurisé par défaut car limité et vérouillé à 2 utilisateurs. Lorsque vous avez votre interlocuteur en ligne personne ne peut rejoindre le call.
- Possibilité d'avoir un annuaire global des URL voir https://tel.free-solutions.org 
- Ne consome que 2.5W en moy sur RaspBerry pour être en permanence joignable via une URL web
- Rien à installer pour vos contacts juste un click sur l'URL
- Les communications audio sont encryptés par défaut/https contrairement à la téléphonie standard
- Permet de faire de la voice over IP sans complexité avec un très haute qualité audio
- Les liaisons sont P2P la plupart du temps si vous utilisez un browser basé sur chromium.


## Developpeurs et contributeurs :
Tout le monde est le bienvenu pour contribuer, introduire des idées et ou aider à faire évoluer le code.

# Ubuntu 20.04 & Ubuntu 22.04
## Packages nécessaires

#### Executez les commandes suivantes pour installer les packages requis pour NUMERO6_FS

apt install chromium-browser -y apt install xvfb -y apt install pulseaudio -y apt install fbi -y apt install qrencode -y apt install curl -y

Puis téléchargez l'executable pour Ubuntu/debian/Mint NUMERO6_FS ici : (https://github.com/ClaudeStabile/NUMERO6
C'est un binaire il vous faut donc faire un chmod +x NUMERO6_FS 
  Voir l'aide ./NUMERO6_FS -h 
  Demarrer votre telephone WebRTC : executez le script sans option : ./NUMERO6_FS Le système démarre et crée l'image avec le QRCode du Call

# RaspBerry PI3 & PI4
Hardware you need A Raspberry PI 3 or 6 A microSD card of 16GB or more A USB Microphone or a camera with a micro included ==> plug on USB before booting up A speaker connect to the audio output : A basic speaker permanently connected will do optional : USB keyboard & mouse A TV HDMI monitor, only to get your URL You can also go to https://tel.free-solutions.org to find your PI in the list. So no TV is really needed

1-Install balena etcher on your computer from https://www.balena.io/etcher/

2-Burn a 16GB or + microSD card with the distro at URL : http://green-spider.free-solutions.org/NUMERO6_RASP_PI.dd.gz

3-Startup you RaspBerry PI with freshly burn microSD card

Video ici

[![Watch the video](https://www.free-solutions.ch/clearspace/servlet/JiveServlet/previewBody/4823-102-1-8030/thumnailrasp.jpg)](https://www.free-solutions.ch/clearspace/servlet/JiveServlet/previewBody/4822-102-1-8026/Raspi3bootosp.webm)

4-Share URL or QR Code to call your RaspBerry
