#Autor: Robson Vaamonde
#Procedimentos em TI: http://procedimentosemti.com.br
#Bora para Prática: http://boraparapratica.com.br
#Robson Vaamonde: http://vaamonde.com.br
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
#Data de criação: 01/10/2020
#Data de atualização: 04/11/2020
#Versão: 0.01
#Testado e homologado no Linux Mint 20 e 20.1

#Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits no Dell XPS L502X (2011)

#00_ Hardware: CPU Intel i7 2670QM 3.1Ghz, 16.0GB DDR-3 1600Mhz, SSD Corsair 240GB<br>
	_ HD Seagate 500GB 7200rpm, LCD 15", Webcam, HDMI, Ethernet Realtek RTL-8168,<br>
	_ Wireless Intel Centrino 1030, Intel HD Graphics, NVIDIA GeForce GT 525M, Audio Intel. 

#01_ Configuração da BIOS (versão A12)<br>
	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio,<br>
	_ Wireless e Bluetooth habilitados.
	
#02_ Inicialização da Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>
	_ Inicialização padrão, nesse notebook não acontece a falha de resolução vídeo devido<br>
	_ ao suporte a altas resoluções do LCD.

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>
	_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

#04_ Hard Disk SATA SSD 240 e 500GB<br>
	_ Modelo Corsair Force GT3, Hard Disk para a instalação do Linux Mint, sem<br>
	_ necessidade de particionamento (instalação padrão), HD Seagate 500GB 7200rpm<br>
	_ usado para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>
	_ Atualização do sistema utilizando o MintUpdate;<br>
	_ Atualização do sistema utilizando o Apt;<br>
		apt update<br>
        apt upgrade<br>
        apt full-upgrade<br>
        apt dist-upgrade<br>
        apt autoremove<br>
        apt autoclean<br>
        apt clean<br>
	_ Reinicializar o Sistema (Menu, Sair, Reiniciar ou sudo reboot).

#06_ Instalação do Linux Kernel OEM<br>
    _ sudo apt update<br>
    _ sudo apt install linux-oem linux-oem-20.04<br>
		(versão do Kernel instalada >= 5.6.x suportado até 2025)<br>
   	_ Reinicializar o Sistema (sudo reboot)

#07_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential lsb-core<br>
	_ sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool<br>
	_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim git<br>
	_ Reinicializar o Sistema (sudo reboot)
	
#07_ Atualização dos Drivers NVIDIA e Intel Graphics<br>
	_ Recomendado utilizar o Gerenciador de Drivers do Linux Mint (ou por linha de comando);<br>
	_ Reinicializar o Sistema (Menu, Sair, Reiniciar)<br>
	_ sudo apt update<br>
	_ sudo apt install vainfo intel-gpu-tools<br>
	_ sudo apt install intel-microcode mesa-utils xserver-xorg-video-intel<br>
	_ Reinicializar o Sistema (sudo reboot);<br>
	_ sudo update-pciids<br>
	_ sudo lspci | grep -i nvidia<br>
	_ sudo nvidia-smi
	  
#08_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential lsb-core<br>
	_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim git<br>
	_ sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool<br>
	_ Reinicializar o Sistema (sudo reboot)<br>

#09_ Instalação dos Aplicativos do meu Dia-a-Dia<br>
	_ VirtualBOX: https://www.virtualbox.org/<br>
	_ NotepadQQ: https://notepadqq.com/s/<br>
	_ Packet Tracer: https://www.packettracernetwork.com/<br>
	_ GNS3: https://www.gns3.com/<br>
	_ WPS Office: http://linux.wps.com/<br>
	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint<br>
	_ VS Code: https://code.visualstudio.com/<br>
	_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/<br>
	_ Genymotion: https://www.genymotion.com/download/<br>
	_ Kazam: https://launchpad.net/kazam<br>
	_ Kdenlive: https://kdenlive.org/en/<br>
	_ Audacity: https://www.audacityteam.org/<br>
	_ Mega: https://mega.nz/<br>
	_ Teams: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app<br>
	_ VLC: https://www.videolan.org/vlc/index.pt-BR.html<br>
	_ Skype: https://www.skype.com/pt-br/<br>
    _ Redshift: http://jonls.dk/redshift/<br>
    _ Timeshift: https://github.com/teejee2008/timeshift
