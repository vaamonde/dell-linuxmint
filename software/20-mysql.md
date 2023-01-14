#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 14/01/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do MySQL Server e Client 8.0 no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do MySQL Server e Client 8.0 no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do MariaDB: https://mariadb.org/<br>
Site Oficial do Workbench: https://www.mysql.com/products/workbench/

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

#02_ Instalando o MySQL Server e Client 8.0 no Linux Mint<br>

	sudo apt install git vim mysql-server-8.0 mysql-client-8.0 

#03_ Verificando as Versões do Java instalado no Linux Mint<br>

	#INSTALANDO O REPOSITÓRIO DO MYSQL WORKBENCH NO LINUX MINT 20.x
	#opção do comando dpkg: -i (install)
	wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb (link atualizado em 14/01/2023)
	sudo dpkg -i mysql-apt-config*.deb
	sudo apt update
	sudo apt install mysql-workbench-community

	#INSTALANDO O REPOSITÓRIO DO MYSQL WORKBENCH NO LINUX MINT 21.x
	#opção do comando dpkg: -i (install)
	Link do download do MySQL Workbench: https://dev.mysql.com/downloads/workbench/
		Select Operating System: Ubuntu Linux
		Select OS Version: Ubuntu Linux 22.04 (x86, 64-bit)
		DEB Package: 8.0.31 (atualizado em 14/01/2023)
		Version: mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
	wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
	sudo dpkg -i mysql-workbench-community*.deb

#04_ Aplicando as Políticas de Segurança do MySQL Server no Linux Mint<br>

	sudo mysql_secure_installation
		1. Connecting to MySQL using a blank password (Press y|Y for Yes, any other key for No:) <Enter>
		2. New password root: pti@2018 <Enter>
		3. Re-enter new password root: pti@2018 <Enter>
		4. Remove anonymous users? (Press y|Y for Yes, any other key for No:) y <Enter>
		5. Disallow root login remotely (Press y|Y for Yes, any other key for No:) <Enter>
		6. Remove test database and access to it? (Press y|Y for Yes, any other key for No:) <Enter>
		7. Reload privilege tables now? (Press y|Y for Yes, any other key for No:) y <Enter>

#05_ Verificando o Serviço do MySQL Server no Linux Mint<br>

	sudo systemctl status mysql
	sudo systemctl restart mysql
	sudo systemctl stop mysql
	sudo systemctl start mysql

#06_ Verificando a Porta de Conexão do MySQL Server no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	lsof -nP -iTCP:'3306' -sTCP:LISTEN

#07_ Localização dos Arquivos de Configuração do MySQL Server no Linux Mint<br>

	/etc/mysql <-- Diretório de configuração do SGBD MySQL Server
	/etc/mysql/mysql.conf.d/mysqld.cnf <-- Arquivo de configuração do Servidor SGBD do MySQL Server

#08_ Acesso o MySQL Server no Linux Mint<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

#09_ Verificando as Bases de Dados existentes do MySQL Server no Linux Mint<br>

	SHOW DATABASES;
	exit
