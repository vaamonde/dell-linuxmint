#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 24/06/2021<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa e 20.2 Uma

#Instalação do Pacote de Tradução e Dicionário do WPS no Linux Mint 20 Ulyana 20.1 Ulyssa e 20.2 Uma 64 Bits

#01_ Download dos Pacotes de Tradução e Dicionário do WPS Office<br>

    wget https://github.com/vaamonde/pt_br-wpsoffice/blob/master/pt_BR.tar.gz
    wget https://github.com/vaamonde/pt_br-wpsoffice/blob/master/pt_BR.zip

#02_ Descompactando e Movendo o Pacote de Tradução do WPS Office<br>

    tar -zxvf pt_BR.tar.gz
    sudo mv -v pt_BR /opt/kingsoft/wps-office/office6/mui/
    sudo chown -Rf root.root /opt/kingsoft/wps-office/office6/mui/pt_BR

#03_ Descompacta e Movendo o Pacote de Dicionário do WPS Office<br>
    
    unzip pt_BR.zip
    sudo mv -v pt_BR /opt/kingsoft/wps-office/office6/dicts/spellcheck
    sudo chown -Rf root.root /opt/kingsoft/wps-office/office6/dicts/spellcheck/pt_BR
