#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/07/2021<br>
#Data de atualização: 03/09/2022<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Link da Postagem na Comunidade da Dell: https://www.dell.com/community/Notebooks-Laptops/Reposit%C3%B3rio-Dell-Ubuntu-Codinome-Notebook/m-p/8262168#M36640

#Modelos de Notebook da Dell Homologados:

	_ Dell Inspiron 1440 2009 (Codename: );
	_ Dell XPS L502X 2011 (Codename: );
	_ Dell Vostro 5480 2015 (Codename: );
	_ Dell G3 3590 2019 (Codename: ).

#Link de Hardware Homologados pela Dell: https://ubuntu.com/certified<br>
#Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers<br>
#Link da Imagem de Recuperação Linux: https://www.dell.com/support/home/en-us/drivers/osiso/linux?lwp=rt<br>
#Link de Imagem de Recuperação: https://www.dell.com/support/home/pt-br/drivers/OSISO<br>
#Link do Sources List da Dell Desktop: http://dell.archive.canonical.com/dists/<br>
#Link do Sources List da Dell Server: https://linux.dell.com/repo/community/openmanage/<br>
#Link do Sources List do Ubuntu OEM: http://oem.archive.canonical.com/updates/dists/<br>
#Verificar o Service TAG no Linux: sudo dmidecode -s system-serial-number

#01_ Atualização do Sistema Operacional<br>

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

#02_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.15.x suportado até 2025)<br>

		sudo apt update
		sudo uname -a
		sudo apt install linux-oem-20.04 fdutils
		sudo reboot (Reinicializar o Sistema)

#03_ Adicionando o repositório da Dell<br>

	#Link de pesquisa dos pacotes do Ubuntu: https://packages.ubuntu.com/
	_ sudo add-apt-repository main (Principal - Software livre e de código aberto suportado pela Canonical)
	_ sudo add-apt-repository universe (Universe - Software livre e de código aberto mantido pela comunidade)
	_ sudo add-apt-repository multiverse (Multiverse - Software restrito por direitos autorais ou questões legais)
	_ sudo add-apt-repository restricted (Restrito - Drivers proprietários para dispositivos)
	
	#Criando o Sources List da Dell
	_ sudo vim /etc/apt/sources.list.d/focal-dell.list
		deb http://dell.archive.canonical.com/updates/ focal-dell public
		deb http://dell.archive.canonical.com/updates/ focal-oem public
		deb http://dell.archive.canonical.com/updates/ focal-somerville public
		deb http://dell.archive.canonical.com/updates/ focal-somerville-melisa public
		#https://linux.dell.com/repo/community/openmanage/10300/focal focal main

	#Adicionando a Chave GPG do Repositório da Dell
	_ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
	_ #sudo gpg --keyserver pool.sks-keyservers.net --recv-key 1285491434D8786F 
	_ #gpg -a --export 1285491434D8786F | sudo apt-key add - 

	#Atualizando e instalando os principais pacotes da Dell
	_ sudo apt update
	_ sudo apt install oem-somerville-melisa-meta libfprint-2-tod1-goodix oem-somerville-meta tlp-config
