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

#Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits no Dell Inspiron 1440 (2009)

#00_ Hardware: CPU Intel Core 2 Duo P8700 2.5Ghz, 3.0GB DDR-2 800Mhz, SSD Corsair 60GB<br>
	_ HD WD 500GB, LCD 14", Webcam, VGA, Ethernet Realtek RTL-8101, Wireless Broadcom<br>
	_ BCM-4312, Intel HD Graphics GM45, Audio Intel 82801L

#01_ Configuração da BIOS (versão A07)<br>
	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio,<br>
	_ Wireless e Bluetooth habilitados.
	
#02_ Inicialização da Instalação do Linux Mint 20 Ulyana 20.1 Ulyssa<br>
	_ Para não ter falhas de inicialização da instalação, utilizei o recurso de Modo<br>
	_ de Compatibilidade, recomendado para equipamentos legados.<br>
		(inicialização em modo de compatibilidade e mais lento no Dell Inspiron 1440)

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)<br>
	_ Modelo Broadcom BCM-4312, por padrão não é reconhecida no Linux Mint<br>
	_ sendo necessário instalar o Driver Proprietário pelo Gerenciador de<br>
	_ Drivers do Linux Mint (ou por linha de comando, recomendado pelo GUI).

#04_ Hard Disk SATA SSD 60GB e 500GB<br>
	_ Modelo Corsair Force 3, Hard Disk para a instalação do Linux Mint, sem<br>
	_ necessidade de particionamento (instalação padrão), Hard Disk WD usado<br>
	_ para armazenamento de arquivos e backup (case Akasa AK-OA2SSA-BKV2 2,5").

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
   	_ Reinicializar o Sistema (sudo reboot)<br>

#07_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential dkms lsb-core<br>
	_ sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool<br>
	_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim git<br>
	_ Reinicializar o Sistema (sudo reboot)
	
#08_ Instalação dos Drivers VGA Intel Graphics<br>
	_ sudo apt update<br>
	_ sudo apt install vainfo intel-gpu-tools intel-media-va-driver intel-microcode xserver-xorg-video-intel<br>
    _ sudo apt install mesa-vulkan-drivers mesa-vdpau-drivers mesa-va-drivers mesa-utils mesa-opencl-icd mesa-utils-extra<br>
    _ sudo apt install libegl1-mesa libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libgles2-mesa libassimp5 beignet-opencl-icd<br>
    _ Reinicializar o Sistema (sudo reboot)

#09_ Instalação dos Drivers WIRELESS Broadcom<br>
	_ Recomendado utilizar o Gerenciador de Drivers do Linux Mint (ou por linha de comando);<br>
	_ Reinicializar o Sistema (Menu, Sair, Reiniciar)<br>

#10_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>
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
