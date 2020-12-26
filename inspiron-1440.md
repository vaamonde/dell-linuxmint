#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 26/12/2020<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20 e 20.1

#Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits no Dell Inspiron 1440 (2009)

#00_ Hardware: CPU Intel Core 2 Duo P8700 2.5Ghz, 3.0GB DDR-2 800Mhz, SSD Corsair 60GB<br>

	_ HD WD 500GB, LCD 14", Webcam, VGA, Ethernet Realtek RTL-8101, Wireless Broadcom BCM-4312, Intel HD Graphics GM45, 
	Audio Intel 82801L

#01_ Configuração da BIOS (versão A07)<br>

	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio, Wireless e Bluetooth habilitados.
	
#02_ Inicialização da Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>

	_ Para não ter falhas de inicialização da instalação, utilizei o recurso de Modo de Compatibilidade, recomendado 
	para equipamentos legados (inicialização em modo de compatibilidade e mais lento no Dell Inspiron 1440)

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)<br>

	_ Modelo Broadcom BCM-4312, por padrão não é reconhecida no Linux Mint sendo necessário instalar o Driver Proprietário
	_ pelo Gerenciador de Drivers do Linux Mint ou por linha de comando.

#04_ Hard Disk SATA SSD 60GB e 500GB<br>

	_ Modelo Corsair Force 3, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento 
	_ (instalação padrão), Hard Disk WD usado para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").

#05_ Pós-Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>

	_ Atualização do sistema utilizando o MintUpdate
	_ Atualização do sistema utilizando o Apt ou Apt-Get
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean
		sudo apt clean
		sudo reboot (Reinicializar o Sistema)

#06_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.6.x suportado até 2025)<br>

		sudo apt update
		sudo apt install linux-oem-20.04 fdutils
		sudo reboot (Reinicializar o Sistema)
        sudo uname -a

#07_ Instalação dos Aplicativos Básicos<br>

		sudo apt update
		sudo apt install software-properties-common build-essential lsb-core
		sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool
		sudo apt install ttf-mscorefonts-installer cheese guvcview cairo-dock vim git p7zip-full p7zip-rar
		sudo reboot (Reinicializar o Sistema)

#08_ Instalação dos Drivers VGA Intel Graphics<br>

		sudo apt update
		sudo apt install vainfo intel-gpu-tools intel-media-va-driver intel-microcode xserver-xorg-video-intel
		sudo apt install mesa-vulkan-drivers mesa-vdpau-drivers mesa-va-drivers mesa-utils mesa-opencl-icd mesa-utils-extra
		sudo apt install libegl1-mesa libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libgles2-mesa libassimp5 beignet-opencl-icd
		sudo reboot (Reinicializar o Sistema)

#09_ Instalação dos Drivers WIRELESS Broadcom BCM-4312<br>

	    sudo apt update
        sudo apt install firmware-b43-installer firmware-b43legacy-installer dkms
	    sudo reboot (Reinicializar o Sistema)

#10_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>

	_ VirtualBOX: https://www.virtualbox.org/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/virtualbox.md)

	_ NotepadQQ: https://notepadqq.com/s/
		sudo apt update && sudo apt install notepadqq

	_ Packet Tracer: https://www.packettracernetwork.com/
		(link: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI)

	_ GNS3: https://www.gns3.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/gns3.md)

	_ WPS Office: http://linux.wps.com/
		(versão >= 11.1.0.9719)

	_ Pacotes de Tradução e Dicionário do WPS Office
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/wpsoffice.md)

	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint
		sudo apt update && sudo apt install kolourpaint

	_ VS Code: https://code.visualstudio.com/
		(versão >= 1.50.1)
		(extensions: Bash Beautify, BATS for VSCode, Brazilian Portuguese - Code Spell Checker 
		Pacote de Idioma Português Brasileiro para VS Code Shell-Format e Shell)

	_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/
		(versão >= 86.0.4240.183)

	_ Genymotion: https://www.genymotion.com/download/

	_ Kazam: https://launchpad.net/kazam
		sudo apt update && sudo apt install kazam

	_ Kdenlive: https://kdenlive.org/en/
		(link da versão AppImage >=20.08.2: https://kdenlive.org/en/download/)

	_ Audacity: https://www.audacityteam.org/
		sudo apt update && sudo apt install audacity

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
