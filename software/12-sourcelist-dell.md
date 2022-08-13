#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/07/2021<br>
#Data de atualização: 13/08/2022<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Adicionando os Repositórios do Dell no Linux Mint 64 Bits

#Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers
#Link de Imagem de recuperação: https://www.dell.com/support/home/pt-br/drivers/OSISO
#Verificar o Service TAG no Linux: sudo dmidecode -s system-serial-number

#01_ Adicionando o repositório da Dell<br>
	_ sudo vim /etc/apt/sources.list.d/focal-dell.list
		deb http://dell.archive.canonical.com/updates/ focal-dell public
		deb http://dell.archive.canonical.com/updates/ focal-oem public
		deb http://dell.archive.canonical.com/updates/ focal-somerville public
		deb http://dell.archive.canonical.com/updates/ focal-somerville-melisa public
	_ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
	_ sudo add-apt-repository universe
	_ sudo add-apt-repository multiverse
	_ sudo add-apt-repository restricted
	_ sudo apt update
	_ sudo apt install oem-somerville-melisa-meta libfprint-2-tod1-goodix oem-somerville-meta tlp-config
