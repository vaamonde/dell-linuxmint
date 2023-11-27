#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 26/11/2023<br>
#Versão: 0.12<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Cisco Packet Tracer no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Cisco Packet Tracer no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![Packet Tracer 8.1.x](http://img.youtube.com/vi/yFS2d93-hbw/0.jpg)](https://www.youtube.com/watch?v=yFS2d93-hbw "Packet Tracer 8.1.x")

Link da vídeo aula: https://www.youtube.com/watch?v=yFS2d93-hbw

[![Packet Tracer 8.2.x](http://img.youtube.com/vi/hLU-9NWmcno/0.jpg)](https://www.youtube.com/watch?v=hLU-9NWmcno "Packet Tracer 8.2.x")

Link da vídeo aula: https://www.youtube.com/watch?v=hLU-9NWmcno

Site Oficial do Netacad: https://www.netacad.com/pt-br<br>
Cursos Oficiais do Cisco Packet Tracer: https://www.netacad.com/pt-br/courses/packet-tracer<br>
Site Oficial do Dev do Cisco Packet Tracer: https://www.packettracernetwork.com/<br>
MEGA.nz do Projeto Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

O QUE É E PARA QUE SERVER O CISCO PACKET TRACER: O Packet Tracer é um programa educacional<br>
gratuito que permite simular uma rede de computadores, através de equipamentos e configurações<br>
presente em situações reais. O programa apresenta uma interface gráfica simples, com suportes<br>
multimídia que auxiliam na confecção das simulações.

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	#verificando as versões e codinome do sistema operacional
	#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
	#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

	
	#OBSERVAÇÃO IMPORTANTE: outro detalhe muito importante do Linux Mint com o Ambiente Gráfico 
	#Cinnamon é que ele possui a maioria das dependência do Qt e GTK, por causa disso que o Cisco 
	#Packet Tracer funciona muito bem no Mint com o ambiente gráfico Cinnamon, isso não acontece 
	#nos Ambientes Gráficos MATE ou XFCE ou na versão LMDE que não possui essas dependências.
	
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release
	sudo cinnamon --version

	#verificando informações de hardware e processador
	#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)
	sudo inxi -CMSfxxx
	sudo lscpu

	#modo gráfico para verificar as informações de sistema operacional e hardware
	Menu
		Informações do Sistema
		
#01_ Atualização do Sistema Operacional Linux Mint<br>

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;

	Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean

#02_ Download do Cisco Packet Tracer para Linux<br>

	Link Oficial do Netacad: https://www.netacad.com/pt-br/courses/packet-tracer
	Link Oficial do Packet Tracer Network: https://www.packettracernetwork.com/
	Link do Mega.nz do Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

	#DICA: RECOMENDO VOCÊ FAZER UMA CONTA NO NETACAD DA CISCO NO CURSO GRATUITO DO CISCO PACKET TRACER
	DISPONÍVEL NA PLATAFORMA NO LINK: https://skillsforall.com/pt/learningcollections/cisco-packet-tracer?courseLang=pt-BR

	PARA CRIAR UMA CONTA NO NETACAD ACESSE O LINK: https://id.cisco.com/signin/register

#03_ Instalando o Cisco Packet Tracer no Linux Mint<br>

	01_ Na pasta de Download, clicar duas vezes no Instalador do Cisco Packet Tracer;
	02_ Na tela do Gdebi clique em: <Instalar Pacote>.
		(Digite a sua senha para instalar o pacote)
	03_ Na tela: Software License Agreement clique em: <Next>
	04_ Marque a opção: do you accept the terms of this EULA?: <Yes> clique em: <Next>

	OBSERVAÇÃO IMPORTANTE: se você utilizar o Gdebi para instalar o Cisco Packet Tracer e apresentar
	uma falha no final da instalação, recomendo utilizar o comando: dpkg para forçar a instalação em 
	modo Terminal.

	Terminal: Ctrl + Alt + T

	#instalando o Cisco Packet Tracer via linha de comando
	#opção do comando dpkg: -i (install)
	sudo dpkg -i CiscoPacketTracer*.deb
		Na tela de: Configurando PacketTracer pressione Enter em: <OK>
		Na tela de: Do you accept the terms of this EULA? selecione: <Sim> e <Enter>

#04_ Verificando se todas as Bibliotecas do Cisco Packet foram instaladas no Linux Mint<br>

	Terminal: Ctrl + Alt + T

	#verificando as dependência do binário do Cisco Packet Tracer
	#opção do comando ldd: -v (verbose)
	sudo ldd -v /opt/pt/bin/PacketTracer

	#filtrando as dependências não encontrado do Cisco Packet Tracer
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

	#INSTALANDO AS DEPENDÊNCIAS DO CISCO PACKET TRACER NO LINUX MINT 20.x
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção da contra barra (\): criar uma quebra de linha no terminal
	sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5 git vim python2 python3
	
	#filtrando as dependências não encontrado do Cisco Packet Tracer
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

	#OBSERVAÇÃO IMPORTANTE: as dependências: libQt5QmlModels.so.5 e o erro: /lib/x86_64-linux-gnu/libQt5Core.so.5: 
	#version `Qt_5.15' not found não interfere diretamente no funcionamento do Cisco Packet Tracer 8.1.x ou 8.2.x
	#no Linux Mint 20.x, essas dependências fazem parte da versão do Ubuntu >= 21.04, verifique a versão do Qt5Core 
	#instalada no Linux Mint 20.x com o comando: sudo locate libQt5Core

	#INSTALANDO AS DEPENDÊNCIAS DO CISCO PACKET TRACER NO LINUX MINT 21.x
	#opção da contra barra (\): criar uma quebra de linha no terminal
	sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5 libqt5texttospeech5 libqt5positioning5 \
	libqt5qml5 libqt5webchannel5 libqt5qmlmodels5 libqt5quick5 libqt5webenginecore5 libqt5webenginewidgets5 git \
	vim python2 python3

	OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca LibSSL sofre alteração de versão, antes de baixar a versão
	acesse o site: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/ e veja qual a versão atual, altere
	o script e faça o download.

	#Resolvendo a falha das bibliotecas libssl.so.1.1 e libcrypto.so.1.1 no Linux Mint 21.x
	#opção do comando dpkg: -i (install)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#link de download da Biblioteca do LibSSL atualizado no dia: 15/11/2023
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb
	sudo dpkg -i libssl1.1_1.1.1*.deb

	#filtrando as dependências não encontrado do Cisco Packet Tracer
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando	
	sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

#05_ Atualização para a Versão 8.2.0 do Cisco Packet Tracer

	Atualização feita em Julho/2022 - procedimento no Linux Mint versões 20.x e 21.x continua a mesma coisa.

#06_ Atualização para a Versão 8.2.1 do Cisco Packet Tracer

	Atualização feita em Março/2023 - procedimento no Linux Mint versões 20.x e 21.x continua a mesma coisa.
	Mais informações: https://www.packettracernetwork.com/features/packettracer-82-newfeatures.html