#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 02/07/2021<br>
#Data de atualização: 05/02/2022<br>
#Versão: 0.15<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

08/07/2021 - Linux Mint 20.2 “Uma” Cinnamon released!: https://blog.linuxmint.com/?p=4102<br>
08/07/2021 - How to upgrade to Linux Mint 20.2: https://blog.linuxmint.com/?p=4111<br>
New features in Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon_whatsnew.php<br>
Release Notes for Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon.phpp<br>
07/01/2022 - Linux Mint 20.3 “Una” Cinnamon released! https://blog.linuxmint.com/?p=4220<br>
Release Notes for Linux Mint 20.3 Cinnamon: https://www.linuxmint.com/rel_una_cinnamon.php

#Instalação do Linux Mint 64 Bits no Desktop Huananzhi X99-F8 Xeon E5-2678 V3

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus: https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/

#02_ Configurações do Hardware do Desktop Huananzhi X99-F8 Xeon E5-2678 V3<br>

	_ CPU Intel Xeon E5-2678 V3 2.5Ghz 12/24, 32.0GB DDR-4 3000Mhz, SSD Adata SU630 - 240GB, 
	_ SSD NVMe Lexar NM700 - 512GB, Monitor 17", Ethernet Realtek RTL-8168, Intel UHD Graphics 
	_ 630, Asus Strix AMD Radeon RX Vega64, Power Supply Silver Stone ET750, Water Cooler Lian 
	_ Li Galahad AIO 360mm RGB, Kit Fan Resi Mode Fan Galaxy, Gabinete Lian Li Lancool 215

#03_ Configuração da BIOS (versão 5.11)<br>

	_ Bios já atualizada pelo Professorramos (Leandro Ramos) possibilitando trabalhar com Turbo 
	_ Unlock X99, Hard Disk SATA em AHCI, VT-x habilitado e Audio habilitados.
	_ Mais informações acesse o vídeo de Upgrade da Bios: https://www.youtube.com/watch?v=d_KtZfNG4RY
	
#04_ Inicialização da Instalação<br>

	_ Inicialização padrão, a falha de resolução de vídeo não acontece nesse modelo de desktop gamer 
	_ devido a placa de vídeo e monitor atingir altas resoluções.

#05_ Hard Disk SSD NVMe Lexar NM700 e SSD Adata SU630<br>

	_ Modelo SSD NVMe Lexar NM700, Hard Disk para a instalação do Linux Mint, sem necessidade de
	_ particionamento (instalação padrão), SSD Adata SU630 usado para armazenamento de arquivos, 
	_ backup e jogos.

#06_ Placa de Rede Sem-Fio (Wi-Fi/Wireless)

	_ Utilização do Adaptador Sem-Fio TP-Link 300Mbps Modelo TL-WN821N, já reconhecido no Linux Mint 
	_ sem necessidade de instalação de Driver/Módulos para o seu funcionamento.
	_ Teste feito com o Adaptador Sem-Fio TP-Link 150Mbps Modelo TL-WN721N, já reconhecido no Linux 
	_ Mint sem necessidade de instalação de Driver/Módulos para o seu funcionamento.

#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64 Bits<br>

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
		sudo apt install htop nmon psensor cpufrequtils cputool
		sudo apt install ttf-mscorefonts-installer cheese guvcview v4l-utils cairo-dock vim git p7zip-full p7zip-rar
		sudo reboot (Reinicializar o Sistema)

#10_ Instalação dos Drives da AMD Radeon e Suporte ao Vulkan<br>

	OBSERVAÇÃO IMPORTANTE: Em Janeiro/2022 a AMD mudou a forma de Baixar e Instalar o Driver
	da Radeon no GNU/Linux, facilitando a vida utilizando agora um Pacote *.DEB que adiciona
	os Repositórios Oficiais da AMD Radeon. O procedimento para baixar é o mesmo do vídeo, só 
	a instalação que mudou.
	DÚVIDAS: digita o comando: sudo amdgpu-install --help

	_ Recomendado baixar o Driver mais novo do site da AMD: https://www.amd.com/pt/support
		_ Download AMD Radeon RX Vega 64: https://www.amd.com/pt/support/graphics/radeon-rx-vega-series/radeon-rx-vega-series/radeon-rx-vega-64
		_ Opção do download: Ubuntu x86 64-Bit Radeon™ Software for Linux® installer version 21.40.2 for
		_ Ubuntu 20.04.3 (Revision Number 21.40.2, Release Date 19/01/2022)
		_ Fazer o download do arquivo: amdgpu-install_21.40.2.40502-1_all.deb
		_ Fazer a instalação utilizando o Gerenciador Gráfico do Linux Mint GDEB (recomendado)
		_ (clicar duas vezes no instalador e selecionar: Instalar Pacote)
		_ Acessar o terminal pressionando: Ctrl+Alt+T
		_ Atualizar as Lista da Apt com o novo Source: sudo apt update
		_ Instalar os Drivers da AMD Radeon: sudo amdgpu-install
		_ Finalizar a instalação reinicializando o sistema: reboot
	
	_ Instalação do suporte ao Vulkan do Driver da AMD Radeon
		sudo apt update
		sudo apt install mesa-vulkan-drivers vulkan-utils vulkan-tools libassimp5 libvulkan1
		sudo amdgpu-install --usecase=graphics,opencl --opencl=rocr,legacy --vulkan=amdvlk,pro
		sudo reboot
	
	_ Testando o suporte ao Vulkan do Driver da AMD Radeon
		sudo vulkaninfo | less
		sudo glxinfo | less
		sudo glxgears
	
	_ Software de Benchmark para GNU/Linux
		_ PassMark: https://www.passmark.com/products/pt_linux/index.php
		_ Hardinfo: https://github.com/lpereira/hardinfo
		_ Unigine: https://benchmark.unigine.com/
		_ GpuTest: https://www.geeks3d.com/gputest/
		_ Basemark: https://www.basemark.com/benchmarks/basemark-gpu/

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
