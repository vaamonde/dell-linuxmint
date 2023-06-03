#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 17/01/2023<br>
#Versão: 0.05<br>
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

	#INSTALANDO O MYSQL SERVER E CLIENT NO LINUX MINT 20.x
	sudo apt install git vim libproj15 proj-data mysql-server-8.0 mysql-client-8.0 

	#INSTALANDO O MYSQL SERVER E CLIENT NO LINUX MINT 21.x
	sudo apt install git vim libproj22 proj-data mysql-server-8.0 mysql-client-8.0 

#03_ Instalando o MySQL Workbench no Linux Mint<br>

	#INSTALANDO O MYSQL WORKBENCH NO LINUX MINT 20.x
	#opção do comando dpkg: -i (install)
	#Link repositório do MySQL Workbench: http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/ (link atualizado em 14/01/2023)
	wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.29-1ubuntu20.04_amd64.deb
	sudo dpkg -i mysql-workbench-community*.deb

	#INSTALANDO O MYSQL WORKBENCH NO LINUX MINT 21.x
	#opção do comando dpkg: -i (install)
	#Link repositório do MySQL Workbench: http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/ (link atualizado em 14/01/2023)
	wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.33-1ubuntu22.04_amd64.deb
	sudo dpkg -i mysql-workbench-community*.deb

#05_ Verificando o Serviço e Versão do MySQL Server no Linux Mint<br>

	sudo systemctl status mysql
	sudo systemctl restart mysql
	sudo systemctl stop mysql
	sudo systemctl start mysql

	sudo mysqld --version (Server)
	sudo mysql --version (Client)

#06_ Verificando a Porta de Conexão do MySQL Server no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN

#07_ Localização dos Arquivos de Configuração do MySQL Server no Linux Mint<br>

	/etc/mysql                          <-- Diretório de configuração do SGBD MySQL Server
	/etc/mysql/mysql.conf.d/mysqld.cnf  <-- Arquivo de configuração do Servidor SGBD do MySQL Server
	/etc/mysql/mysql.conf.d/mysql.cnf   <-- Arquivo de configuração do Cliente SGBD do MySQL Client
	/var/log/mysql                      <-- Diretório padrão dos Logs do SGBD Mysql Server
	/var/lib/mysql                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server

#08_ Acesso o MySQL Server no Linux Mint<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

#09_ Aplicando a segurança de acesso do usuário Root do MySQL Server no Linux Mint<br>

	SHOW DATABASES;
	USE mysql;
		SHOW TABLES;
		SELECT user,host FROM user;
		ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
		GRANT ALL ON *.* TO 'root'@'localhost';
		FLUSH PRIVILEGES;
		exit (ou quit)

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

#10_ Criando um usuário DBA no MySQL Server no Linux Mint<br>

	CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
	GRANT ALL ON *.* TO 'dba'@'localhost';
	FLUSH PRIVILEGES;
	exit (ou quit)

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u dba -p

#11_ Adicionado o Usuário Local no Grupo Padrão do MySQL Server no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G mysql $USER
	newgrp mysql
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

	#opções do comando mysql: -u (user), -p (password)
	mysql -u dba -p

#12_ Conectando no MySQL Server utilizando o MySQL Workbench no Linux Mint<br>

	Menu
		Pesquisa Indexada
			MySQL Workbench

	#conectando com o usuário root do MySQL no Workbench
	MySQL Connections
		Local instance 3306
			root
			localhost
		
	#conectando com o usuário dba do MySQL no Workbench
	MySQL Connections: +
		Connection Name: LinuxMint
		Connection Method: Standard (TCP/IP)
		Parameters:
			Hostname: 127.0.0.1 (ou localhost)
			Port: 3306
			Username: dba
			Password:
				Store in Keychain
					Password: pti@2018
				<OK>
		<Test Connection>
			<OK>
		<OK>
