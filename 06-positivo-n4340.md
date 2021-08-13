#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 13/08/2021<br>
#Data de atualização: 13/08/2021<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa e 20.2 Uma x64

08/07/2021 - Linux Mint 20.2 “Uma” Cinnamon released!: https://blog.linuxmint.com/?p=4102
08/07/2021 - How to upgrade to Linux Mint 20.2: https://blog.linuxmint.com/?p=4111
New features in Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon_whatsnew.php
Release Notes for Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon.php

#Instalação do Linux Mint 64 Bits no Notebook Positivo N4340

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus: https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/

#02_ Configurações do Hardware do Notebook Positivo N4340<br>

	_ CPU Intel i3 10110U 2.10Ghz 2/4 L2 4MB, 8GB DDR-4 2666Mhz, SSD M.2 CVB-8D256 - 256GB, LCD 14", Webcam, VGA,
	_ Ethernet Realtek RTL-8111, Wireless Intel AC 9462, Intel UHD Graphics CLEVO/KAPOK, Audio Intel CLEVO/KAPOK

#03_ Configuração da BIOS UEFI insyde 0111.x<br>

	_ Configuração Padrão de Fábrica, Hard Disk SSD em AHCI, VT-x habilitado, Audio, Wireless e Bluetooth habilitados
	_ segurança UEFI habilitada
	
#04_ Inicialização da Instalação do Linux Mint 20.1 Ulyssa ou 20.2 Uma<br>

	_ Inicialização padrão, nesse notebook não acontece a falha de resolução devido ao suporte a altas resoluções do LCD

#05_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

#06_ Hard Disk SATA SSD M.2 256<br>

	_ Modelo KCVB-8D256, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento (instalação padrão).

#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa ou 20.2 Uma<br>

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean
		sudo apt clean
		sudo reboot (Reinicializar o Sistema)

#08_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.10.x suportado até 2025)<br>

		sudo apt update
		sudo uname -a
		sudo apt install linux-oem-20.04 fdutils
		sudo reboot (Reinicializar o Sistema)

#09_ Instalação dos Aplicativos Básicos<br>

		sudo apt update
		sudo apt install software-properties-common build-essential lsb-core dkms
		sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool
		sudo apt install ttf-mscorefonts-installer cheese guvcview cairo-dock vim git p7zip-full p7zip-rar
		sudo reboot (Reinicializar o Sistema)

#10_ Instalação dos Drivers VGA Intel Graphics<br>

		sudo apt update
		sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra
		sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5 beignet-opencl-icd
		sudo reboot (Reinicializar o Sistema)

#11_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>

	_ VirtualBOX: https://www.virtualbox.org/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/virtualbox.md)

	_ NotepadQQ: https://notepadqq.com/s/
		sudo apt update && sudo apt install notepadqq

	_ Packet Tracer: https://www.packettracernetwork.com/
		(link: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI)

	_ GNS3: https://www.gns3.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/gns3.md)

	_ WPS Office: http://linux.wps.com/
		(link: https://linux.wps.com/)

	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint
		sudo apt update && sudo apt install kolourpaint

	_ VS Code: https://code.visualstudio.com/
		(extensions: Bash Beautify, BATS for VSCode, Brazilian Portuguese - Code Spell Checker 
		Pacote de Idioma Português Brasileiro para VS Code Shell-Format e Shell)

	_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/

	_ Genymotion: https://www.genymotion.com/download/

	_ Kazam: https://launchpad.net/kazam
		sudo apt update && sudo apt install kazam

	_ Kdenlive: https://kdenlive.org/en/
		(link da versão AppImage >=20.08.2: https://kdenlive.org/en/download/)

	_ Audacity: https://www.audacityteam.org/
		sudo apt update && sudo apt install audacity

	_ OBS Studio: https://obsproject.com/pt-br
		(link da versão para Linux: https://obsproject.com/pt-br/download)

	_ Mega: https://mega.nz/
		(link da versão >=: https://mega.nz/sync)

	_ Teams: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app
		(link da versão >=1.3.00: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app#desktopAppDownloadregion)

	_ VLC: https://www.videolan.org/vlc/index.pt-BR.html
		sudo apt update && sudo apt install vlc

	_ Skype: https://www.skype.com/pt-br/
		(link da versão >=8.66.0.74: https://www.skype.com/pt-br/get-skype/)<br>

	_ Redshift: http://jonls.dk/redshift/
		(nativo no Linux Mint, versão >= 1.12)

	_ Timeshift: https://github.com/teejee2008/timeshift
		(nativo no Linux Mint, versão >= 20.03)