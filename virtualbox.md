#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 06/11/2020<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20 e 20.1

#Instalação do VirtualBOX no Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits

#01_ Atualização do Sistema Operacional Linux Mint<br>
 
    sudo apt update
    sudo apt upgrade
    sudo apt full-upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
    sudo apt autoclean
    sudo apt clean

#02_ Adicionando o Repositório do VirtualBOX<br>

    sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/<br> sources.list.d/virtualbox.list'

#03_ Baixando e Instalando as Chaves de Autenticação do VirtualBOX<br>

    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#04_ Instalando o VirtualBOX<br>

    sudo apt update
    sudo apt install virtualbox-6.1 cpu-checker libvirt-clients

#05_ Baixando e Instalando o Pacote de Extensões do VirtualBOX<br>

    wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack
    virtualbox Oracle*
    rm Oracle*