#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 31/05/2022<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do VirtualBOX no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#01_ Atualização do Sistema Operacional Linux Mint<br>
 
    sudo apt update
    sudo apt upgrade
    sudo apt full-upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
    sudo apt autoclean
    sudo apt clean

#02_ Adicionando o Repositório do VirtualBOX<br>

	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/sources.list.d/virtualbox.list'

#03_ Baixando e Instalando as Chaves de Autenticação do VirtualBOX<br>

	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
	wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#04_ Instalando o VirtualBOX<br>

	sudo apt update
	sudo apt install virtualbox-6.1 cpu-checker libvirt-clients

#05_ Baixando e Instalando o Pacote de Extensões do VirtualBOX<br>

	*Recomendo fazer via site do Oracle VirtualBOX
