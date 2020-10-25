Instalação do Linux Mint 20 Ulyana 64 Bits no Dell Vostro 5480 (2015)

#00_ Hardware: CPU Intel i7 5500U 2.4Ghz, 8.0GB DDR-3 1600Mhz, SSD Kingston 240GB<br>
	_ LCD 14", Biometria, Webcam, HDMI, Ethernet Realtek RTL-8168, Wireless Intel<br>
	_ 7265, Intel HD Graphics 5500, NVIDIA GM108M GeForce 830M, Audio Intel 

#01_ Configuração da BIOS UEFI (versão A03)<br>
	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado<br>
	_ Audio, Wireless e Bluetooth habilitados, segurança UEFI desabilitado
	
#02_ Inicialização da Instalação<br>
	_ Inicialização padrão, nesse notebook não acontece a falha de resolução devido<br>
	_ ao suporte de altas resoluções do LCD

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)<br>
	_ Já é reconhecida no Live-CD do Mint, depois de instalado ela já está habilitada.

#04_ Hard Disk SATA SSD 240<br>
	_ Modelo Kingston, Hard Disk para a instalação do Linux Mint, sem necessidade<br>
	_ de particionamento (instalação padrão).
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana<br>
	_ Atualização do sistema utilizando o MintUpdate;<br>
	_ Atualização do sistema utilizando o Apt;<br>
		(apt update && apt upgrade && apt full-upgrade && apt dist-upgrade)<br>
	_ Atualização do Kernel utilizando o MintUpdate.<br>
		(versão do kernel instalada >= 5.8)<br>
	_ Reinicializar o Sistema (Menu, Sair, Reiniciar)

#06_ Atualização dos Drivers NVIDIA e Intel Graphics<br>
	_ Recomendado utilizar o Gerenciador de Drivers do Linux Mint (ou por linha de comando)<br>.
	_ Reinicializar o Sistema (Menu, Sair, Reiniciar)
	_ sudo apt update<br>
	_ sudo apt install vainfo intel-gpu-tools intel-media-va-driver<br>
	_ sudo apt install intel-microcode mesa-utils xserver-xorg-video-intel<br>
	_ Reinicializar o Sistema (sudo reboot)<br>
	_ sudo update-pciids<br>
	_ sudo lspci | grep -i nvidia<br>
	_ sudo nvidia-smi | grep -i cuda<br>
	_ sudo apt instal nvidia-cuda-toolkit<br>
	_ sudo nvcc --version
	  
#07_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential dkms lsb-core<br>
	_ sudo apt install ttf-mscorefonts-installer mint-meta-codecs cheese cairo-dock vim git<br>
	_ sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool
	_ Reinicializar o Sistema (sudo reboot)<br>

#08_ Instalação do Leitor de Biometria<br>
	_ lsusb<br>
	_ sudo add-apt-repository ppa:fingerprint/fingerprint-gui<br>
	_ sudo apt update<br>
	_ sudo apt-get install libbsapi policykit-1-fingerprint-gui fingerprint-gui

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
	_ Skype: https://www.skype.com/pt-br/