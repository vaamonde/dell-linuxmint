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
#Data de atualização: 02/01/2024<br>
#Versão: 0.25<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64

#Lançamentos Oficiais do Linux Mint<br>
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

[![Dell Inspirion 1440](http://img.youtube.com/vi/iDvxKv0ib8M/0.jpg)](https://www.youtube.com/watch?v=iDvxKv0ib8M "Dell Inspirion 1440")

Link da vídeo aula: https://www.youtube.com/watch?v=iDvxKv0ib8M

[![Dell Inspirion 1440](http://img.youtube.com/vi/VHtb30NCN4I/0.jpg)](https://www.youtube.com/watch?v=VHtb30NCN4I "Dell Inspirion 1440")

Link da vídeo aula: https://www.youtube.com/watch?v=VHtb30NCN4I

#Instalação do Linux Mint 64 Bits no Dell Inspiron 1440 (2009)

#01_ Software para criação de Pen Drive Bootável<br>

	_ Rufus (Microsoft): https://rufus.ie/pt_BR/
	_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/
	_ Etcher: https://www.balena.io/etcher/
	_ UNetbootin: https://unetbootin.github.io/
	_ Ventoy: https://www.ventoy.net/en/index.html
	_ Linux Live USC Creator: https://www.linuxliveusb.com/
	_ Popsicle: https://github.com/pop-os/popsicle

#02_ Configurações do Hardware do Dell Inspiron 1440<br>

	_ CPU Intel Core 2 Duo P8700 2.5Ghz, 3.0GB DDR-2 800Mhz, SSD Corsair 60GB, HD WD 500GB, 
	_ LCD 14", Webcam, VGA, Ethernet Realtek RTL-8101, Wireless Broadcom BCM-4312, Intel HD 
	_ Graphics GM45, Audio Intel 82801L

#03_ Configuração da BIOS (versão A07)<br>

	_ Configuração Padrão de Fábrica, Hard Disk SATA em AHCI, VT-x habilitado, Audio, Wireless 
	_ e Bluetooth habilitados.
	
#04_ Inicialização da Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma, 20.3 Una, 21 Vanessa ou 21.1 Vera<br>

	_ Para não ter falhas de inicialização da instalação do Linux Mint 20.x, utilizei o recurso 
	_ de Modo de Compatibilidade, recomendado para equipamentos legados (inicialização em modo 
	_ de compatibilidade e mais lento no Dell Inspiron 1440)

	OBSERVAÇÃO IMPORTANTE: no Linux Mint 21.x a falha de inicialização não acontece mais no
	Dell Inspiron 1440, a inicialização pode ser feita de forma normal.

#05_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless)<br>

	_ Modelo Broadcom BCM-4312, por padrão não é reconhecida no Linux Mint 20 sendo necessário 
	_ instalar o Driver Proprietário pelo Gerenciador de Drivers do Linux Mint ou por linha de 
	_ comando.

	_ OBSERVAÇÃO IMPORTANTE: se você utilizar o Kernel OEM >= 5.6 a instalação do Driver da 
	_ Broadcom via Gerenciador de Driver não funciona corretamente, sendo necessário instalar 
	_ o Firmware e Driver manualmente por linha de comando.

	_ OBSERVAÇÃO IMPORTANTE: na versão do Linux Mint 20.3 Una não é mais necessário instalar o
	_ Driver da Placa de Rede Sem-Fio Broadcom, ela é reconhecida no Live-CD, depois de instalado 
	_ o Linux Mint já está funcionando, mesmo depois de instalar o Kernel OEM >= 5.10.

	_ OBSERVAÇÃO IMPORTANTE: na versão do Linux Mint 21 Vanessa e 21.1 Vera o driver da Broadcom
	_ não é reconhecido por padrão, sendo necessário instalar o Driver Proprietário pelo Gerenciador
	_ de Drivers do Linux Mint ou por linha de comando.

#06_ Hard Disk SATA SSD 60GB e SATA 500GB 7200rpm<br>

	_ Modelo Corsair Force 3, Hard Disk utilizado para a instalação do Linux Mint, sem necessidade 
	_ de particionamento (instalação padrão), Hard Disk WD usado para armazenamento de arquivos e 
	_ backup (case Akasa AK-OA2SSA-BKV2 2,5").

	_ OBSERVAÇÃO IMPORTANTE: sempre utilizar o software GParted para remover todas as partições
	_ existente no disco que será feito a instalação do Linux Mint, isso deixar o sistema mais
	_ seguro e não causa o problemas de Múltiplos Boots.

#07_ Pós-Instalação do Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una, 21 Vanessa e 21.1 Vera<br>

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Relatório do Sistema;
		Instalar pacotes de idiomas
	
	_ Atualização do sistema utilizando o Apt;
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

		#INSTALAÇÃO DO KERNEL OEM LINUX MINT 21.x (KERNEL >= 5.14, KERNEL >= 6.0 e KERNEL >= 6.1)
		
		#Linux Mint Versão 21.x - Kernel >= 5.17
		sudo apt install linux-oem-22.04a fdutils
		
		#Linux Mint Versão 21.x - Kernel >= 6.0
		sudo apt install linux-oem-22.04b fdutils
		
		#Linux Mint Versão 21.x - Kernel >= 6.1 - TESTADO E HOMOLOGADO, RECOMENDO A SUA INSTALAÇÃO
		sudo apt install linux-oem-22.04c fdutils

		#Reinicializar o Sistema
		sudo reboot 

		#Verificando a versão do Kernel que está rodando na inicialização do Linux Mint
		#opção do comando uname: -a (all)
		sudo uname -a

#09_ Instalação dos Aplicativos Básicos<br>

		sudo apt update
		sudo apt install software-properties-common build-essential lsb-core dkms
		sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool ipmitool ipmiutil smartmontools
		sudo apt install ttf-mscorefonts-installer cheese guvcview v4l-utils cairo-dock vim git p7zip-full p7zip-rar

		#Reinicializar o Sistema
		sudo reboot

#10_ Instalação dos Drivers VGA Intel Graphics<br>

		sudo apt update
		sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra
		
		#INSTALAÇÃO DOS DRIVERS VGA DA INTEL GRAPHICS NO LINUX MINT 20.x
		sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5 beignet-opencl-icd
		
		#INSTALAÇÃO DOS DRIVERS VGA DA INTEL GRAPHICS NO LINUX MINT 21.x
		sudo apt install libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5
		
		#Reinicializar o Sistema
		sudo reboot

#11_ Instalação dos Drivers Sem-Fio (Wi-Fi/Wireless) Broadcom BCM-4312<br>

		OBSERVAÇÃO IMPORTANTE: Na versão do Linux Mint 20.2 Uma, ele reconhece a Placa de Rede Sem-Fio
		no Gerenciador de Driver, mais o Driver padrão: bcmwl-kernel-source não funciona corretamente
		no Kernel padrão e no Kernel OEM, no vídeo fiz a remoção do driver depois de instalar os novos,
		recomendo marcar a opção: Não usar esse dispositivo primeiro, Aplicar as Mudanças, reiniciar o
		Desktop/Notebook e depois instalar os Drivers abaixo.

		OBSERVAÇÃO IMPORTANTE: Na versão do Linux Mint 20.3 Una, ele reconhece a Placa de Rede Sem-Fio
		no Gerenciador de Driver, o Driver já está funcionando Perfeitamente mesmo depois de instalar
		o Kernel OEM.

		OBSERVAÇÃO IMPORTANTE: Na versão do Linux Mint 21 Vanessa e 21.1 Vera, ele reconhecer a Rede
		Sem-Fio no Gerenciador de Driver, mais o Driver padrão: bcmwl-kernel-source não funciona 
		corretamente no Kernel padrão e no Kernel OEM, recomendo marcar a opção: Não usar esse 
		dispositivo primeiro, Aplicar as Mudanças, reiniciar o Desktop/Notebook e depois instalar os 
		Drivers abaixo.

		OBSERVAÇÃO IMPORTANTE: só usar esse comando se for realmente necessário.
		sudo apt update
		sudo apt install firmware-b43-installer firmware-b43legacy-installer
		
		#Reinicializar o Sistema
		sudo reboot

OBSERVAÇÃO IMPORTANTE: NO VÍDEO DE CONFIGURAÇÃO DO DELL INSPIRON 1440 EU NÃO FIZ MENÇÃO AO SWAPFILE
QUE É CRIADO AUTOMATICAMENTE NA INSTALAÇÃO DO LINUX MINT, QUANDO VOCÊ ESTÁ UTILIZANDO SSD, M.2 OU 
NVME É RECOMENDADO DESATIVAR O SUPORTE AO SWAPFILE PARA AUMENTAR O TEMPO DE VIDA DO SSD. TRIM É UM 
COMANDO QUE INFORMA QUAIS PÁGINAS OU BLOCOS ESTÃO REALMENTE EM USO EM SEU SSD. ESSA FUNÇÃO AUMENTA 
O DESEMPENHO DO DISPOSITIVO, GERA MAIS ESPAÇO LIVRE E AINDA AUXILIA A PROLONGAR SUA VIDA ÚTIL.

	_ Executar os procedimentos no Terminal (Ctrl + Alt + T)
		#opção do comando swapoff: -v (verbose)
		#opção do comando rm: -v (verbose)
		sudo swapon --show
		sudo swapoff -v /swapfile
		sudo vim /etc/fstab
			INSERT
				#Comentar a linha 12 (doze) do Swapfile (salvar e sair: Esc Shift: x)
				#swapfile	none	swap	sw	0	0
			ESC SHIFT :x <Enter>
		sudo rm -v /swapfile
		
		#Reinicializar o Sistema
		sudo reboot

	_ Executar os procedimentos no Terminal (Ctrl + Alt + T)
		sudo swapon --show
		sudo systemctl status fstrim.service
		sudo systemctl status fstrim.timer

#12_ Instalação e Configuração dos Aplicativos utilizados no meu Dia-a-Dia<br>

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

	_ Sources List Dell: http://dell.archive.canonical.com/dists/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/12-sourcelist-dell.md)
	
	_ Arduino IDE: https://www.arduino.cc/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/13-arduino.md)

	_ EdrawMax: https://www.edrawsoft.com/pt/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/17-edrawmax.md)
	
	_ Node.JS: https://nodejs.org/en/
		(link: https://github.com/vaamonde/dell-linuxmint/blob/master/software/18-nodejs.md)
		
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
