#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 04/11/2020<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20 e 20.1

#Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits no Dell XPS L502X (2011)

#00_ Configurações do Hardware do Dell XPS L502X<br>
_ CPU Intel i7 2670QM 3.1Ghz, 16.0GB DDR-3 1600Mhz, SSD Corsair 240GB HD Seagate 500GB 7200rpm, LCD 15", Webcam, HDMI,<br>
_ Ethernet Realtek RTL-8168, Wireless Intel Centrino 1030, Intel HD Graphics, NVIDIA GeForce GT 525M, Audio Intel. 

#01_ Configuração da BIOS (versão A12)<br>
_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio, Wireless e Bluetooth habilitados.
	
#02_ Inicialização da Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>
_ Inicialização padrão, a falha de resolução de vídeo não acontece nesse modelo de notebook da Dell.

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>
_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

#04_ Hard Disk SATA SSD 240 e 500GB<br>
_ Modelo Corsair Force GT3, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento (instalação padrão),<br>
_ HD Seagate 500GB 7200rpm usado para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>
_ Atualização do sistema utilizando o MintUpdate;<br>
_ Atualização do sistema utilizando o Apt;<br>
_ sudo apt update<br>
_ sudo apt upgrade<br>
_ sudo apt full-upgrade<br>
_ sudo apt dist-upgrade<br>
_ sudo apt autoremove<br>
_ sudo apt autoclean<br>
_ sudo apt clean<br>
_ Reinicializar o Sistema (sudo reboot).

#06_ Instalação do Linux Kernel OEM<br>
_ sudo apt update<br>
_ sudo apt install linux-oem linux-oem-20.04<br>
	(versão do Kernel instalada >= 5.6.x suportado até 2025)<br>
_ Reinicializar o Sistema (sudo reboot)

#07_ Instalação dos Aplicativos Básicos<br>
_ sudo apt update<br>
_ sudo apt install software-properties-common build-essential lsb-core htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool<br>
_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim git<br>
_ Reinicializar o Sistema (sudo reboot)
	
#08_ Instalação dos Drivers da NVIDIA e Intel Graphics<br>
_ Recomendado utilizar o Gerenciador de Drivers do Linux Mint (ou por linha de comando);<br>
_ Reinicializar o Sistema (Menu, Sair, Reiniciar)<br>
_ sudo apt update<br>
_ sudo apt install vainfo intel-gpu-tools intel-microcode mesa-utils xserver-xorg-video-intel<br>
_ Reinicializar o Sistema (sudo reboot);<br>
_ sudo update-pciids<br>
_ sudo lspci | grep -i nvidia<br>
_ sudo nvidia-smi

#09_ Instalação dos Aplicativos utilizados no meu Dia-a-Dia

_ VirtualBOX: https://www.virtualbox.org/<br>
	(link: https://github.com/vaamonde/dell-linuxmint/blob/master/virtualbox.md)

_ NotepadQQ: https://notepadqq.com/s/<br>
	(sudo apt update && sudo apt install notepadqq)

_ Packet Tracer: https://www.packettracernetwork.com/<br>
	(link: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI)

_ GNS3: https://www.gns3.com/<br>
	(link: https://github.com/vaamonde/dell-linuxmint/blob/master/gns3.md)

_ WPS Office: http://linux.wps.com/<br>
	(versão >= 11.1.0.9719)

_ Pacotes de Tradução e Dicionário do WPS Office<br>
	(link: https://github.com/vaamonde/dell-linuxmint/blob/master/wpsoffice.md)

_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint<br>
	(sudo apt update && sudo apt install kolourpaint)

_ VS Code: https://code.visualstudio.com/<br>
	(versão >= 1.50.1)<br>
	(extensions: Bash Beautify, BATS for VSCode, Brazilian Portuguese - Code Spell Checker Pacote de Idioma Português Brasileiro para<br>
	VS Code Shell-Format e Shell)

_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/<br>
	(versão >= 86.0.4240.183)

_ Genymotion: https://www.genymotion.com/download/<br>

_ Kazam: https://launchpad.net/kazam<br>
	(sudo apt update && sudo apt install kazam)

_ Kdenlive: https://kdenlive.org/en/<br>
	(link da versão AppImage >=20.08.2: https://kdenlive.org/en/download/)

_ Audacity: https://www.audacityteam.org/<br>
	(sudo apt update && sudo apt install audacity)

_ Mega: https://mega.nz/<br>
	(link da versão >=: https://mega.nz/sync)

_ Teams: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app<br>
	(link da versão >=1.3.00: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app#desktopAppDownloadregion)

_ VLC: https://www.videolan.org/vlc/index.pt-BR.html<br>
	(sudo apt update && sudo apt install vlc)

_ Skype: https://www.skype.com/pt-br/<br>
	(link da versão >=8.66.0.74: https://www.skype.com/pt-br/get-skype/)<br>

_ Redshift: http://jonls.dk/redshift/<br>
	(nativo no Linux Mint, versão >= 1.12)

_ Timeshift: https://github.com/teejee2008/timeshift<br>
	(nativo no Linux Mint, versão >= 20.03)
