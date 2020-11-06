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

#Instalação do GNS3 no Linux Mint 20 Ulyana 20.1 Ulyssa 64 Bits

#01_ Atualização do Sistema Operacional Linux Mint<br>

    sudo apt update
    sudo apt upgrade
    sudo apt full-upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
    sudo apt autoclean
    sudo apt clean

#02_ Adicionando o Suporte da Arquitetura i386 no Linux Mint<br>

    sudo dpkg --add-architecture i386

#03_ Adicionando o PPA do Projeto do GNS3 no Linux Mint<br>

    sudo add-apt-repository ppa:gns3/ppa

#04_ Atualizando as Lista do Apt com o novo PPA do GNS3<br>

    sudo apt update

#05_ Instalando o GNS3 e suas Dependências no Linux Mint<br>

    sudo apt install gns3-gui gns3-iou gns3-server gns3-webclient-pack dynamips iouyap vpcs xterm ubridge iptraf-ng iperf3 ipcalc git vim uml-utilities bridge-utils wireshark wireshark-common wireshark-dev cpulimit qemu qemu-utils qemu-kvm qemu-user qemu-system-x86 libvirt-bin python3 python3-pyqt5 telnet vinagre virt-viewer

#06_ Corrigindo a falha de permissão do uBridge em clientes VPCS no GNS3<br>

    sudo chmod 777 /usr/bin/ubridge

#07_ Verificando a versão do GNS3 instalado<br>

    gns3 --version

#08_ Iniciando o GNS3-GUI por Linha de Comando<br>

    gns3