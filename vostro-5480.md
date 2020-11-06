#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 06/11/2020<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20 e 20.1

#Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits no Dell Vostro 5480 (2015)

#00_ Hardware: CPU Intel i7 5500U 2.4Ghz, 8.0GB DDR-3 1600Mhz, SSD Kingston 240GB<br>

	_ LCD 14", Biometria, Webcam, HDMI, Ethernet Realtek RTL-8168, Wireless Intel 7265, Intel HD Graphics 5500, 
	_ NVIDIA GM108M GeForce 830M, Audio Intel 

#01_ Configuração da BIOS UEFI (versão A03)<br>

	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio, Wireless e Bluetooth habilitados, 
	_ segurança UEFI desabilitado
	
#02_ Inicialização da Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>

	_ Inicialização padrão, nesse notebook não acontece a falha de resolução devido ao suporte a altas resoluções do LCD

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

#04_ Hard Disk SATA SSD 240<br>

	_ Modelo Kingston SA400S37240G, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento 
	_ (instalação padrão).
	
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
		sudo apt install linux-oem linux-oem-20.04
		sudo reboot (Reinicializar o Sistema)

#07_ Instalação dos Aplicativos Básicos<br>

		sudo apt update
		sudo apt install software-properties-common build-essential lsb-core
		sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool
		sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim git p7zip-full p7zip-rar
		sudo reboot (Reinicializar o Sistema)

#08_ Instalação dos Drives da NVIDIA, CUDA e Intel Graphics<br>

	_ Recomendado utilizar o Gerenciador de Drives do Linux Mint (ou por linha de comando)
	_ Reinicializar o Sistema após a instalação (Menu, Sair, Reiniciar)
	_ Instalar os software necessários para o bom funcionamento dos Drivers da NVIDIA e Intel
		sudo apt update
		sudo apt install vainfo intel-gpu-tools intel-media-va-driver
		sudo apt install intel-microcode mesa-utils xserver-xorg-video-intel
		sudo reboot (Reinicializar o Sistema)
		sudo update-pciids
		sudo lspci | grep -i nvidia
		sudo nvidia-smi | grep -i cuda
	_ Instalação do suporte ao CUDA do Driver da NVIDIA
		sudo apt install nvidia-cuda-toolkit
		sudo nvcc --version

#09_ Instalação do Leitor de Biometria<br>

		sudo lsusb
		sudo add-apt-repository ppa:fingerprint/fingerprint-gui
		sudo apt update
		sudo apt-get install libbsapi policykit-1-fingerprint-gui fingerprint-gui

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
