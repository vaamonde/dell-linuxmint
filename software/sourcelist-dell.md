#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/07/2021<br>
#Data de atualização: 04/07/2021<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa e 20.2 Uma x64

#Adicionando os Repositórios do Dell no Linux Mint 64 Bits

#01_ Adicionando o repositório da Dell<br>
	_ sudo vim /etc/apt/sources.list.d/focal-dell.list
		deb http://dell.archive.canonical.com/updates/ focal-dell public
		deb http://dell.archive.canonical.com/updates/ focal-oem public
		deb http://dell.archive.canonical.com/updates/ focal-somerville public
		deb http://dell.archive.canonical.com/updates/ focal-somerville-melisa public
	_ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
	_ sudo apt update
