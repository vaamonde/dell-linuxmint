#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 16/01/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Apache 2 e PHP 7.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Apache 2 e PHP 7.x no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

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

	Atualização do sistema utilizando o MintUpdate;
	Atualização do sistema utilizando o Apt;

	Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean

#02_ Instalando o Apache 2 e PHP 7.x ou 8.x no Linux Mint<br>

	#INSTALANDO O APACHE 2 E PHP 7.X NO LINUX MINT 20.x
	sudo apt install git vim perl python unzip ghostscript zlibc zlib1g-dev apt-transport-https
	sudo apt install apache2 apache2-utils apache2-bin apache2-data php7.4 php7.4-cli php7.4-common \
	php7.4-json php7.4-mysql php7.4-opcache php7.4-readline php7.4-common php7.4-bcmath php7.4-curl \
	php7.4-intl php7.4-mbstring php7.4-xml php7.4-zip php7.4-soap php-imagick libapache2-mod-php \
	libapr1 libapache2-mod-php7.4 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

	#INSTALANDO O APACHE 2 E PHP 8.X NO LINUX MINT 21.x
	sudo apt install

#03_ Verificando o Serviço e Versão do Apache 2 do PHP no Linux Mint<br>

	sudo systemctl status apache2
	sudo systemctl restart apache2
	sudo systemctl stop apache2
	sudo systemctl start apache2

	sudo --version (Server)
	sudo --version (PHP)

#04_ Verificando a Porta de Conexão do Apache 2 no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'80' -sTCP:LISTEN

#05_ Localização dos Arquivos de Configuração do Apache 2 e do PHP 7.x ou 8.x no Linux Mint<br>

	/etc/apache2/ <-- Diretório de configuração do Apache 2 Server
	/etc/apache2/apache2.conf <-- Arquivo de configuração do Apache 2 Server
	/etc/apache2/sites-available/ <-- Diretório padrão do Sites Acessíveis do Apache 2 Server
	/etc/apache2/conf-available/ <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
	/etc/php/ <--- Diretório de configuração do PHP 7.x ou 8.x
	/etc/php/7.4/apache2/php.ini <-- Arquivo de configuração do PHP 7.x do Apache 2 Server
	/var/www/html/ <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
	/var/log/apache2/ <-- Diretório padrão dos Logs do Apache 2 Server

