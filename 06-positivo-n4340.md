#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 13/08/2021<br>
#Data de atualização: 12/12/2022<br>
#Versão: 0.20<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

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

#Instalação do Linux Mint 64 Bits no Notebook Positivo N4340

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus: https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/

#02_ Configurações do Hardware do Notebook Positivo N4340<br>

	_ CPU Intel i3 10110U 2.10Ghz 2/4 L2 4MB, 8GB DDR-4 2666Mhz, SSD M.2 CVB-8D256 - 256GB, 
	_ LCD 14", Webcam, VGA, Ethernet Realtek RTL-8111, Wireless Intel AC 9462, Intel UHD Graphics 
	_ CLEVO/KAPOK, Audio Intel CLEVO/KAPOK

#03_ Configuração da BIOS UEFI insyde 0111.x<br>

	_ Configuração Padrão de Fábrica, Hard Disk SSD em AHCI, VT-x habilitado, Audio, Wireless e 
	_ Bluetooth habilitados segurança UEFI habilitada
	
#04_ Inicialização da Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma, 20.3 Una, 21 Vanessa ou 21.1 Vera<br>

	_ Inicialização padrão, a falha de resolução de vídeo não acontece nesse modelo de notebook 
	_ da Positivo N4340 devido o monitor ser de 14" e atingir altas resoluções.

#05_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Já é reconhecida no Live-CD do Mint, depois de instalado o Mint ela já está habilitada.

#06_ Hard Disk SATA SSD M.2 256GB<br>

	_ Modelo CVB-8D256, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento
	_ (instalação padrão).

#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma, 20.3 Una, 21 Vanessa ou 21.1 Vera<br>

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

#08_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.15.x suportado até 2025)<br>

		sudo apt update
		sudo uname -a
		sudo apt install linux-oem-20.04 fdutils
		sudo reboot (Reinicializar o Sistema)

#09_ Instalação dos Aplicativos Básicos<br>

		sudo apt update
		sudo apt install software-properties-common build-essential lsb-core dkms
		sudo apt install htop nmon psensor tlp tlp-rdw cpufrequtils cputool ipmitool ipmiutil smartmontools
		sudo apt install ttf-mscorefonts-installer cheese guvcview v4l-utils cairo-dock vim git p7zip-full p7zip-rar
		sudo reboot (Reinicializar o Sistema)

#10_ Instalação dos Drivers VGA Intel Graphics<br>

		sudo apt update
		sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra
		sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5 beignet-opencl-icd
		sudo reboot (Reinicializar o Sistema)
	
	_ Testando o suporte ao Driver da Intel Mesa
		sudo glxinfo | less
		sudo glxgears
	
	_ Software de Benchmark para GNU/Linux
		_ PassMark: https://www.passmark.com/products/pt_linux/index.php
		_ Hardinfo: https://github.com/lpereira/hardinfo
		_ Unigine: https://benchmark.unigine.com/
		_ GpuTest: https://www.geeks3d.com/gputest/

OBSERVAÇÃO IMPORTANTE: NO VÍDEO DE CONFIGURAÇÃO DO POSITIVO N4340 EU NÃO FIZ MENÇÃO AO SWAPFILE
QUE É CRIADO AUTOMATICAMENTE NA INSTALAÇÃO DO LINUX MINT, QUANDO VOCÊ ESTÁ UTILIZANDO SSD, M.2 OU 
NVME É RECOMENDADO DESATIVAR O SUPORTE AO SWAPFILE PARA AUMENTAR O TEMPO DE VIDA DO SSD. TRIM É UM 
COMANDO QUE INFORMA QUAIS PÁGINAS OU BLOCOS ESTÃO REALMENTE EM USO EM SEU SSD. ESSA FUNÇÃO AUMENTA 
O DESEMPENHO DO DISPOSITIVO, GERA MAIS ESPAÇO LIVRE E AINDA AUXILIA A PROLONGAR SUA VIDA ÚTIL.

	_ Executar os procedimentos no Terminal (Ctrl + Alt + T)
		sudo swapon --show
		sudo swapoff -v /swapfile
		sudo vim /etc/fstab
			INSERT
				#Comentar a linha do Swapfile (salvar e sair: Esc Shift: x)
				#swapfile	none	swap	sw	0	0
			ESC SHIFT :x <Enter>
		sudo rm /swapfile
		sudo reboot

	_ Executar os procedimentos no Terminal (Ctrl + Alt + T)
		sudo swapon --show
		sudo systemctl status fstrim.service
		sudo systemctl status fstrim.timer

#11_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>

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

	_ Ansible: https://www.ansible.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/07-ansible.md)

	_ Vagrant: https://www.vagrantup.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/08-vagrant.md)

	_ Powershell: https://docs.microsoft.com/pt-br/powershell/scripting/overview?view=powershell-7.2
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/09-powershell.md)

	_ VS Code: https://code.visualstudio.com/
		(Link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/10-vscode.md)

	_ WPS Office: http://linux.wps.com/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/11-wpsoffice.md)

	_ NotepadQQ: https://notepadqq.com/s/
		sudo apt update && sudo apt install notepadqq

	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint
		sudo apt update && sudo apt install kolourpaint

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