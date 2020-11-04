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

#Instalação do VirtualBOX no Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits

#01_ Atualização do Sistema Operacional Linux Mint<br>
    sudo apt update<br>
    sudo apt upgrade<br>
    sudo apt full-upgrade<br>
    sudo apt dist-upgrade<br>
    sudo apt autoremove<br>
    sudo apt autoclean<br>
    sudo apt clean

#02_ Adicionando o Repositório do VirtualBOX<br>
    sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/sources.list.d/virtualbox.list'

#03_ Baixando e Instalando as Chaves de Autenticação do VirtualBOX<br>
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -<br>
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#04_ Instalando o VirtualBOX<br>
    sudo apt update
    sudo apt install virtualbox-6.1 cpu-checker libvirt-clients

#05_ Baixando e Instalando o Pacote de Extensões do VirtualBOX<br>
    wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack
    virtualbox Oracle*
    rm Oracle*
