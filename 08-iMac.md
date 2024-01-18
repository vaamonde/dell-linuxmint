#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/12/2023<br>
#Data de atualização: 15/01/2024<br>
#Versão: 0.04<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64

#Lançamentos Oficiais do Linux Mint<br>
12/01/2024 - Lançamento Oficial do Linux Mint 21.3: https://blog.linuxmint.com/?p=4624<br>
10/12/2023 - Lançamento do BETA do Linux Mint 21.3: https://blog.linuxmint.com/?p=4611<br>
06/12/2023 - Novidades da Versão do Linux Mint 21.3: https://blog.linuxmint.com/?p=4604<br>
26/10/2023 - Anunciado a Versão do Linux Mint 21.3: https://blog.linuxmint.com/?p=4591<br>
02/07/2023 - Planejamento do Lançamento da Versão 21.3: https://blog.linuxmint.com/?p=4554<br>

Novos Recursos do Linux Mint 21.2 Victoria Cinnamon: https://www.linuxmint.com/rel_victoria_cinnamon_whatsnew.php<br>
16/07/2023 - Lançamento da Versão Oficial do Linux Mint 21.2 Victoria: https://blog.linuxmint.com/?p=4543<br>
21/06/2023 - Lançamento da Versão BETA do Linux Mint 21.2 Victoria: https://blog.linuxmint.com/?p=4523

Novos Recursos do Linux Mint 21.1 Vera Cinnamon: https://www.linuxmint.com/rel_vera_cinnamon_whatsnew.php<br>
Informações da Nova Versão do Linux Mint 21.1 Vera: https://www.linuxmint.com/rel_vera_cinnamon.php<br>
06/12/2022 - Lançamento da Versão BETA do Linux Mint 21.1 Vera Cinnamon: https://blog.linuxmint.com/?p=4442<br>
03/12/2022 - Lançamento das Versões "BETA" do Linux Mint 21.1 Vera: https://blog.linuxmint.com/?p=4438

08/07/2021 - Linux Mint 20.2 “Uma” Cinnamon released!: https://blog.linuxmint.com/?p=4102<br>
08/07/2021 - How to upgrade to Linux Mint 20.2: https://blog.linuxmint.com/?p=4111<br>
New features in Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon_whatsnew.php<br>
Release Notes for Linux Mint 20.2 Cinnamon: https://www.linuxmint.com/rel_uma_cinnamon.phpp<br>
07/01/2022 - Linux Mint 20.3 “Una” Cinnamon released! https://blog.linuxmint.com/?p=4220<br>
Release Notes for Linux Mint 20.3 Cinnamon: https://www.linuxmint.com/rel_una_cinnamon.php

#Instalação do Linux Mint 64 Bits no Apple iMac A1225 2008 

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus: https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/

#02_ Configurações do Hardware do Apple iMac A1225 2008<br>

	_ Intel Core 2 Duo de 2,8 GHz (E8235) 6MB Cache, 4GB DDR-2 1066Mhz, HD Samsung HM500JI-(S1) 500GB, LCD 24", 
	_ Webcam iSigh, VGA AMD Radeon RV730/M96, Ethernet Realtek RTL8111/8168, Audio Intel 5 Series/3400 e AMD
	_ RV710/730 HDMI Radeon 4000 Series

#03_ Configuração da BIOS Apple iMac A1225 2008<br>

	_ Configuração Padrão de Fábrica, Hard Disk HD em AHCI, VT-x habilitado, Audio, Wireless e 
	_ Bluetooth habilitados segurança UEFI habilitada
	
#04_ Inicialização da Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma, 20.3 Una, 21 Vanessa, 21.1 Vera ou 21.2 Victoria<br>

	_ Inicialização padrão, a falha de resolução de vídeo não acontece nesse modelo de iMac 
	_ da Apple devido o monitor ser de 24" e atingir altas resoluções.

#05_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

	OBSERVAÇÃO IMPORTANTE: No Linux Mint 21.x a Placa de Rede Sem-Fio (Wi-Fi/Wireless) Broadcom BCM4321 não
	é conhecida no boot sendo necessirário instalar o driver utilizando o Gerenciador de Drivers

#06_ Hard Disk SATA HD Samsung 500GB<br>

	_ Modelo HM500JI, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento
	_ (instalação padrão).

	_ OBSERVAÇÃO IMPORTANTE: sempre utilizar o software GParted para remover todas as partições
	_ existente no disco que será feito a instalação do Linux Mint, isso deixar o sistema mais
	_ seguro e não causa o problemas de Múltiplos Boots.
	
#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma, 20.3 Una, 21 Vanessa ou 21.1 Vera<br>

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;

	#Atualização utilizando o comando Apt no Terminal
	Terminal Atalho: Ctrl + Alt + T
	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean
	sudo apt clean
	
	#Reinicializar o Sistema
	sudo reboot

#08_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.15.x suportado até 2025)<br>

	#INSTALAÇÃO DO KERNEL OEM LINUX MINT 20.x (KERNEL >= 5.14)
	sudo apt install linux-oem-20.04 fdutils
	
	#Reinicializar o Sistema
	sudo reboot
	
	#Verificando a versão do Kernel que está rodando na inicialização do Linux Mint
	#opção do comando uname: -a (all)
	sudo uname -a

	#INSTALAÇÃO DO KERNEL OEM LINUX MINT 21.x (KERNEL >= 5.14, KERNEL >= 6.0, KERNEL >= 6.1 e KERNEL >= 6.5)
	
	#Linux Mint Versão 21.x - Kernel >= 5.17
	sudo apt install linux-oem-22.04a fdutils
	
	#Linux Mint Versão 21.x - Kernel >= 6.0
	sudo apt install linux-oem-22.04b fdutils
	
	#Linux Mint Versão 21.x - Kernel >= 6.1
	sudo apt install linux-oem-22.04c fdutils

	#Linux Mint Versão 21.x - Kernel >= 6.5 - (TESTADO E HOMOLOGADO, RECOMENDO A SUA INSTALAÇÃO)
	sudo apt install linux-oem-22.04d fdutils

	#Reinicializar o Sistema
	sudo reboot 

	#Verificando a versão do Kernel que está rodando na inicialização do Linux Mint
	#opção do comando uname: -a (all)
	sudo uname -a

#09_ Instalação dos Aplicativos Básicos do Linux Mint<br>

	#Instalação do software base do Linux Mint
	sudo apt update
	sudo apt install software-properties-common build-essential lsb-core dkms lsb-release apt-transport-https

	#Instalação dos software básicos de hardware e monitoramento
	sudo apt install htop nmon psensor tlp tlp-rdw cpufrequtils cputool ipmitool ipmiutil smartmontools
	
	#Instalação dos software básicos de produtividade e facilidade
	sudo apt install ttf-mscorefonts-installer cheese guvcview v4l-utils cairo-dock vim git p7zip-full p7zip-rar
	
	#Reinicializar o Sistema
	sudo reboot

#10_ Instalação dos Drivers VGA Intel Graphics e Nvidia<br>

	OBSERVAÇÃO IMPORTANTE: O modelo da Placa de Vídeo Nvidia Serie 8 GeForce 8800M GS/GTS G92M
	não é mais suportado no Linux Mint 21.x utilizando o Kernel na versão 6.5.
	
	#Instalação dos Drivers de vídeo Intel
	sudo apt update
	sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra
	sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5
	
	#Reinicializar o Sistema
	sudo reboot
	
	#Testando o suporte ao Driver da Intel Mesa
	sudo glxinfo | less
	sudo glxgears

	#Software de Benchmark para GNU/Linux para Testar Desempenho
	_ PassMark: https://www.passmark.com/products/pt_linux/index.php
	_ Hardinfo: https://github.com/lpereira/hardinfo
	_ Unigine.: https://benchmark.unigine.com/
	_ GpuTest.: https://www.geeks3d.com/gputest/

#11_ Instalando o Driver Sem-Fio Broadcom BCM4321<br>

	#Instalação em Modo Gráfico
	Menu
		Busca Indexada
			Gerenciador de Drivers
				Selecione: bcmwl-kernel-source
				<Aplicar Mudanças>
			Digite a sua senha do usuário: <Autenticar>
			<Reiniciar>

#12_ Instalação e Configuração dos Principais Aplicativos utilizados no Dia-a-Dia<br>

	_ VirtualBOX: https://www.virtualbox.org/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/01-virtualbox.md)

	_ VMware Workstation: https://www.vmware.com/br/products/workstation-pro.html
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/02-vmware.md)	

	_ Docker CE: https://www.docker.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/03-docker.md)

	_ GNS3: https://www.gns3.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/04-gns3.md)

	_ Packet Tracer: https://www.packettracernetwork.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/05-packettracer.md)

	_ Tilix: https://gnunn1.github.io/tilix-web/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/06-tilix.md)

	_ Vagrant: https://www.vagrantup.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/08-vagrant.md)

	_ Powershell: https://docs.microsoft.com/pt-br/powershell/scripting/overview?view=powershell-7.2
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/09-powershell.md)

	_ VS Code: https://code.visualstudio.com/
		(Link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/10-vscode.md)

	_ WPS Office: http://linux.wps.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/11-wpsoffice.md)

	_ Arduino: https://www.arduino.cc/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/13-arduino.md)

	_ Swap Off: https://wiki.archlinux.org/title/Swap_(Portugu%C3%AAs)
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/15-swapoff.md)

	_ EdrawMax: https://www.edrawsoft.com/pt/edraw-max/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/17-edrawmax.md)

	_ Eclipse: https://www.eclipse.org/downloads/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/19-eclipse.md)

	_ NotepadQQ: https://notepadqq.com/s/
		sudo apt update && sudo apt install notepadqq

	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint
		sudo apt update && sudo apt install kolourpaint

	_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/

	_ Genymotion: https://www.genymotion.com/download/

	_ Kazam: https://launchpad.net/kazam
		sudo apt update && sudo apt install kazam

	_ Kdenlive: https://kdenlive.org/en/
		(link da versão AppImage >=23.08.x: https://kdenlive.org/en/download/)

	_ Audacity: https://www.audacityteam.org/
		sudo apt update && sudo apt install audacity

	_ OBS Studio: https://obsproject.com/pt-br
		(link da versão para Linux: https://obsproject.com/pt-br/download)

	_ VLC: https://www.videolan.org/vlc/index.pt-BR.html
		sudo apt update && sudo apt install vlc

	_ Redshift: http://jonls.dk/redshift/
		(nativo no Linux Mint, versão >= 1.12)

	_ Timeshift: https://github.com/teejee2008/timeshift
		(nativo no Linux Mint, versão >= 22.06)