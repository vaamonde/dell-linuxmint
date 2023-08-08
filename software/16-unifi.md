#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 08/11/2022<br>
#Data de atualização: 10/01/2023<br>
#Versão: 0.04<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Unifi Network Application (Antigo Unifi Controller) no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Unifi Network Application (Antigo Unifi Controller) no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

Site Oficial do Ubiquiti Unifi: https://unifi-network.ui.com/<br>
Site Oficial do Unifi Software: https://www.ui.com/download/unifi<br>
Site Oficial do Unifi ID-SSO: https://account.ui.com<br>
Blog Oficial do Unifi Brasil: https://medium.com/ubntbr<br>
Canal do YouTUBE Ubiquiti BR: https://www.youtube.com/channel/UCb_mHuP7q75OrckBcNn3p2Q

Download do Wifiman Desktop: https://community.ui.com/releases/WiFiman-Desktop-0-2-2/74d8bc1d-6735-444b-a7fc-0ea2584ccb89<br>
Download do Ubiquiti Device Discovery Tool Google Chrome: https://chrome.google.com/webstore/detail/ubiquiti-device-discovery/hmpigflbjeapnknladcfphgkemopofig<br>
Site do Wifiman: http://wifiman.com/<br>
Site do SIMET: https://beta.simet.nic.br/<br>
Site do SpeedTest: https://www.speedtest.net/pt<br>
Site do Fast: https://fast.com/pt/

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
	OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release
	sudo localectl

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

#02_ Ligar os Access Point Ubiquiti Unifi no Ejetor PoE ou no Switch PoE<br>

	OBERVAÇÃO: verificar se os LED's de indicação do Unifi fica na cor: Ambar (laranja) ou Branco

#03_ Instalar as dependências desse script no Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
	sudo apt install git vim nmap python2 python3

#04_ Verificando os Dispositivos Ubiquiti Unifi conectados na rede no Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
	sudo nmap 192.168.0.0/24

	Wifiman AppImage
	Wifiman Google Chrome

#05_ Clonar o Projeto do Github do script do Ubiquiti Unifi para Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
	#opção do comando sudo: -i (login)
	sudo -i
	git clone https://github.com/vaamonde/ubiquiti-unifi

#06_ Acessando o diretório clocando do Ubiquiti Unifi no Linux Mint<br>

	ls
	cd ubiquiti-unifi/

#07_ Executando o script de Instalação do Ubiquiti Unifi Network no Linux Mint<br>

	#INSTALANDO O UNIFI CONTROLLER NO LINUX MINT 20.x
	bash unifi-mint20.sh

	cd /var/log/
		ls -lh unifi-mint-20.sh

	#INSTALANDO O UNIFI CONTROLLER NO LINUX MINT 21.x
	bash unifi-mint21.sh

	cd /var/log/
		ls -lh unifi-mint-21.sh

#08_ Acessar o Unifi Network utilizando o Navegador Google Chrome no Linux Mint<br>

	OBSERVAÇÃO: a comunidade do Ubiquiti Unifi recomendo utilizar o navegador Google Chrome
	para a configuração e administração do Unifi Network devido a compatibilidade do Java e
	recursos integrados no sistema que funciona perfeitamente nesse navegador, é recomendado
	utilizar a conexão HTTPS para que o usuário e senha do Account Ui funcione corretamente.

	chrome https://localhost:8443

#09_ Configurações Básicas do Unifi Network no Linux Mint<br>

	Step 1 of 6:
		Name Your Controller
			Controller Name: Vaamonde
			By selecting this you are agreeing to end user license agreement and the terms of service: ON 
		<Next>

	Step 2 of 6:
		Sign in with your Ubiquiti Account
			Username: usuário Id-SSO https://account.ui.com
			Password: senha usuário ID-SSO 
		<Next>

	Step 3 of 6:
		UniFi Network Setup
			Automatically optimize my network: ON
			Enable Auto Backup: 
		<Next>

	Step 4 of 6:
		Devices Setup: 
		<Next>

	Step 5 of 6:
		WiFi Setup: 
		<Skip>

	Step 6 of 6:
		Review Configuration:
			Country or territory: Brazil
			Timezone: (UTC-03:00)America/Sao_Paulo 
		<Next>

	Security & Analytics
		Send to Ubiquiti