#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Linkedin Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 19/01/2022<br>
#Versão: 0.13<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

08/07/2021 - Linux Mint 20.2 “Uma” Cinnamon released!: https://blog.linuxmint.com/?p=4102<br>
08/07/2021 - How to upgrade to Linux Mint 20.2: https://blog.linuxmint.com/?p=4111<br>
New features in Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon_whatsnew.php<br>
Release Notes for Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon.phpp<br>
07/01/2022 - Linux Mint 20.3 “Una” Cinnamon released! https://blog.linuxmint.com/?p=4220<br>
Release Notes for Linux Mint 20.3 Cinnamon: https://www.linuxmint.com/rel_una_cinnamon.php

#Instalação do Linux Mint 64 Bits no Dell Inspiron 1440 (2009)

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus: https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/

#02_ Configurações do Hardware do Dell Inspiron 1440<br>

	_ CPU Intel Core 2 Duo P8700 2.5Ghz, 3.0GB DDR-2 800Mhz, SSD Corsair 60GB, HD WD 500GB, LCD 14", Webcam, VGA, 
	_ Ethernet Realtek RTL-8101, Wireless Broadcom BCM-4312, Intel HD Graphics GM45, Audio Intel 82801L

#03_ Configuração da BIOS (versão A07)<br>

	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio, Wireless e Bluetooth habilitados.
	
#04_ Inicialização da Instalação do Linux Mint 20.1, 20.2 e 20.3<br>

	_ Para não ter falhas de inicialização da instalação, utilizei o recurso de Modo de Compatibilidade, recomendado 
	para equipamentos legados (inicialização em modo de compatibilidade e mais lento no Dell Inspiron 1440)

#05_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Modelo Broadcom BCM-4312, por padrão não é reconhecida no Linux Mint sendo necessário instalar o Driver Proprietário
	_ pelo Gerenciador de Drivers do Linux Mint ou por linha de comando.
	_ OBS: se você utilizar o Kernel OEM >= 5.6 a instalação do Driver da Broadcom via Gerenciador de Driver não funciona
	_ corretamente, sendo necessário instalar o Firmware e Driver manualmente por linha de comando

#06_ Hard Disk SATA SSD 60GB e SATA 500GB 7200rpm<br>

	_ Modelo Corsair Force 3, Hard Disk utilizado para a instalação do Linux Mint, sem necessidade de particionamento 
	_ (instalação padrão), Hard Disk WD usado para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").

#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma 20.3 Una<br>

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
		sudo uname -a

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

#11_ Instalação dos Drivers Sem-Fio (Wi-Fi/Wireless) Broadcom BCM-4312<br>

		OBSERVAÇÃO IMPORTANTE: Na versão do Linux Mint 20.2 Uma, ele reconhece a Placa de Rede Sem-Fio
		no Gerenciador de Driver, mais o Driver padrão: bcmwl-kernel-source não funciona corretamente
		no Kernel padrão e no Kernel OEM, no vídeo fiz a remoção do driver depois de instalar os novos,
		recomendo marcar a opção: Não usar esse dispositivo primeiro, Aplicar as Mudanças, reiniciar o
		Desktop/Notebook e depois instalar os Drivers abaixo.

		sudo apt update
		sudo apt install firmware-b43-installer firmware-b43legacy-installer
		sudo reboot (Reinicializar o Sistema)

#12_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>

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
