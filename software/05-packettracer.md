#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 07/06/2022<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do Cisco Packet Tracer no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Site Oficial do Netacad: https://www.netacad.com/pt-br<br>
Cursos Oficiais do Cisco Packet Tracer: https://www.netacad.com/pt-br/courses/packet-tracer<br>
Site Oficial do Dev do Cisco Packet Tracer: https://www.packettracernetwork.com/
MEGA.nz do Projeto Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.3 Una é derivado do Ubuntu Desktop 20.04.4 Focal Fossa
	sudo cat /etc/os-release

#01_ Atualização do Sistema Operacional Linux Mint<br>

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

#02_ Download do Cisco Packet Tracer 8.1.1<br>

	Link Oficial Netacad: https://www.netacad.com/pt-br/courses/packet-tracer
	Link Oficial Packet Tracer Network: https://www.packettracernetwork.com/
	Mega.NZ Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

#03_ Instalando o Cisco Packet Tracer 8.1.1 no Linux Mint<br>

	01_ Na pasta de Download, clicar duas vezes no Instalador do Cisco Packet Tracer;
	02_ Seguir os procedimentos na tela.

#04_ Verificando se todas as Bibliotecas do Cisco Packet foram instaladas no Linux Mint<br>

	#opção do comando ldd: -v (verbose)
	sudo ldd -v /opt/pt/bin/PacketTracer

	#opção do comando ldd: -v (verbose)
	sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

	#instalação das dependências do Cisco Packet Tracer
	sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5
	sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

	OBSERVAÇÃO IMPORTANTE: as dependências: libQt5QmlModels.so.5 e o erro: lib/x86_64-linux-gnu/libQt5Core.so.5: 
	version `Qt_5.15' not found não interfere diretamente no funcionamento do Cisco Packet Tracer no Linux Mint
	20.3 pois essas dependências fazem parte da versão do Ubuntu >= 21.10: sudo locate libQt5Core