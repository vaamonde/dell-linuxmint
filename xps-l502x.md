Instalação do Linux Mint 20 Ulyana 64 Bits no Dell XPS L502X (2011)

#00_ Hardware: CPU Intel i7 2670QM 3.1Ghz, 16.0GB DDR-3 1600Mhz, SSD Corsair 240GB<br>
	_ HD Seagate 500GB 7200rpm, LCD 15", Webcam, HDMI, Ethernet Realtek RTL-8168, <br>
	_ Wireless Intel Centrino 1030, Intel HD Graphics, NVIDIA GeForce GT 525M, Audio Intel 

#01_ Configuração da BIOS (versão A12)<br>
	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado<br>
	_ Audio, Wireless e Bluetooth habilitados
	
#02_ Inicialização da Instalação<br>
	_ Inicialização padrão, nesse notebook não acontece a falha de resolução devido<br>
	_ ao suporte de altas resoluções do LCD

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)<br>
	_ Já é reconhecida no Live-CD do Mint, depois de instalado ela já está habilitada.

#04_ Hard Disk SATA SSD 240<br>
	_ Modelo Corsair Force GT3, Hard Disk para a instalação do Linux Mint, sem<br>
	_ necessidade de particionamento (instalação padrão), HD Seagate 500GB 7200rpm<br>
	_ usado para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana<br>
	_ Atualização do sistema utilizando o MintUpdate;<br>
	_ Atualização do sistema utilizando o Apt;<br>
		(apt update && apt upgrade && apt full-upgrade && apt dist-upgrade)<br>
	_ Atualização do Kernel utilizando o MintUpdate.<br>
		(versão do kernel instalada >= 5.8)<br>
	_ Reinicializar o Sistema
	
#06_ Atualização dos Drivers NVIDIA e Intel Graphics<br>
	_ Recomendado utilizar o Gerenciador de Drivers do Linux Mint (ou por linha de comando)<br>.
	_ Reinicializar o Sistema
	_ sudo apt update<br>
	_ sudo apt install vainfo intel-gpu-tools intel-media-va-driver<br>
	_ sudo apt install intel-microcode mesa-utils xserver-xorg-video-intel<br>
	_ Reinicializar o Sistema<br>
	_ sudo update-pciids<br>
	_ sudo lspci | grep -i nvidia<br>
	_ sudo nvidia-smi | grep -i cuda<br>
	_ sudo apt instal nvidia-cuda-toolkit<br>
	_ sudo nvcc --version
	  
#07_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential dkms<br>
	_ sudo apt install ttf-mscorefonts-installer mint-meta-codecs cheese cairo-dock vim git<br>
	_ sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool
	_ sudo reboot

#08_ Instalação dos Aplicativos do meu Dia-a-Dia<br>
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
	_ Skype: https://www.skype.com/pt-br/