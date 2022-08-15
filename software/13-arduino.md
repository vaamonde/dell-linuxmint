#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 15/08/2022<br>
#Data de atualização: 15/08/2022<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do Arduino IDE 2.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Site Oficial do Arduino IDE: https://www.arduino.cc/
Projeto do Github do Arduino IDE 2.x: https://github.com/arduino/arduino-ide
Site Oficial do Fritzing: https://fritzing.org/

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.3 Una é derivado do Ubuntu Desktop 20.04.4 Focal Fossa
	sudo cat /etc/os-release
	sudo localectl

	Menu, Informações do Sistema

#01_ Atualização do Sistema Operacional Linux Mint<br>

	Menu, MintUpdate

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

#02_ Plugar o Arduino na porta USB no Linux Mint<br>

	OBERVAÇÃO: verificar se os LED's de indicação do Arduino começar a piscar

#03_ Clonar o Projeto do Github<br>

	git clone https://github.com/vaamonde/arduino

#04_ Acessando o diretório clocando do Arduino<br>

	cd arduino/

#05_ Executando o script de Instalação do Arduino IDE 2.x no Linux Mint<br>

	bash install20.sh

#06_ Executando o Arduino IDE 2.x no Linux Mint<br>

	arduino-20

#07_ Configurando o Arduino IDE 2.x no Linux Mint<br>

	Arduino IDE 2.0.0 BETA 11
		no board selected
			Arduino Uno at /dev/ttyACM0
				Arduino AVR Boards [v1.8.3] - (Yes)

#08_ Verificando as Informações do Hardware do Arduino no Linux Mint<br>

	Arduino IDE 2.0.0 BETA 11
		Tools
			Board "Arduino Uno"
			Port: "/dev/ttyACM0"
			Get Board Info

#09_ Executando um projeto básico do Arduino IDE no Linux Mint<br>

	File
		Examples
			01. Basics
				Blink
					Upload