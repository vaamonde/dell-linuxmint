#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 25/02/2023<br>
#Data de atualização: 25/02/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Microsoft SQL Server 2022 no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Microsoft SQL Server 2022 no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

Site Oficial do Microsoft SQL Server: https://www.microsoft.com/pt-br/sql-server/sql-server-2022<br>
Site Oficial do Download do Microsoft SQL Server: https://www.microsoft.com/pt-br/sql-server/sql-server-downloads<br>
Site Oficial da Documentação do Microsoft SQL Server: https://learn.microsoft.com/pt-br/sql/?view=sql-server-ver16<br>
Site Oficial da Documentação do Microsoft SQL Server for Linux: https://learn.microsoft.com/pt-br/sql/linux/sql-server-linux-overview?view=sql-server-ver16

Diretrizes de instalação para SQL Server em Linux: https://learn.microsoft.com/pt-br/sql/linux/sql-server-linux-setup?view=sql-server-ver16#system<br>
Configurar repositórios para instalação e atualização do SQL Server em Linux: https://learn.microsoft.com/pt-br/sql/linux/sql-server-linux-change-repo?view=sql-server-ver16&pivots=ld2-ubuntu<br>
Início Rápido: Instalar o SQL Server e criar um banco de dados no Ubuntu: https://learn.microsoft.com/pt-br/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-linux-ver16&preserve-view=true<br>
Notas sobre a versão do SQL Server 2022 no Linux: https://learn.microsoft.com/pt-br/sql/linux/sql-server-linux-release-notes-2022?view=sql-server-linux-ver16

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

#02_ Instalando as Dependências do Microsoft SQL Server 2022 no Linux Mint<br>

	#INSTALANDO AS DEPENDÊNCIAS DO MICROSOFT SQL SERVER NO LINUX MINT 20.x
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates

	#INSTALANDO AS DEPENDÊNCIAS DO MICROSOFT SQL SERVER NO LINUX MINT 21.x
	#opção do comando dpkg: -i (install)
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates
	
	OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca LibSSL sofre alteração de versão, antes de baixar a versão
	acesse o site: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/ e veja qual a versão atual, altere
	o script e faço o download.

	#opção do comando dpkg: -i (install)
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.19_amd64.deb
	sudo dpkg -i libssl1.1_1.1.1*.deb

#03_ Baixando e instalando a Chave GPG do Microsoft SQL Server 2022 no Linux Mint<br>

	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando gpg: -o (output)
	curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/microsoft.asc

#04_ Criando o repositório do Microsoft SQL Server 2022 no Linux Mint<br>

	#ADICIONANDO O REPOSITÓRIO DO MICROSOFT SQL SERVER NO LINUX MINT 20.x
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2022.list)"
	
	OBSERVAÇÃO IMPORTANTE: POR PADRÃO O MICROSOFT SQL SERVER NÃO TEM SUPORTE PARAS AS VERSÕES DO
	LINUX MINT 21.x QUE É BASEADO NO UBUNTU 22.04.x, MESMO EXISTINDO O REPOSITÓRIO PARA A VERSÃO
	DO JAMMY 22.04 A INSTALAÇÃO E CONFIGURAÇÃO DA VERSÃO 2022 DO SQL SERVER NÃO FUNCIONADA DE
	FORMA CORRETA.

	#ADICIONANDO O REPOSITÓRIO DO MICROSOFT SQL SERVER NO LINUX MINT 21.x
	#opção do comando wget: -q (quiet), -O (output file), - (file)
	sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/22.04/mssql-server-2022.list)"

#05_ Atualizando as Lista do Apt com o novo Repositório do Microsoft SQL Server 2022 no Linux Mint<br>

	sudo apt update

#06_ Instalando o Microsoft SQL Server 2022 e Client no Linux Mint<br>

	sudo apt install curl mssql-server mssql-tools unixodbc-dev

	Configurando msodbcsql17
		Do you accept the license terms? <Yes>
		Do you accept the license terms? <Yes>

#07_ Configurando o Microsoft SQL Server 2022 no Linux Mint<br>

	sudo /opt/mssql/bin/mssql-conf setup

	Escolha uma edição do SQL Server:
		Insira sua edição(1-10): 2 (Developer)
	Você aceita os termos de licença? [Yes/No]: <Yes>
	Escolha o idioma para o SQL Server:
		Insira a Opção 1-11: 1 (English)
	Insira a senha do administrador do sistema do SQL Server: pti@2018
	Confirme a senha do administrador do sistema do SQL Server: pti@2018

	#adicionando o caminho das ferramentas de administração do MSSQL no ZSH
	#caso você não esteja utilizando o ZSHRC mude o valor para: ~/.bashrc
	echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.zshrc

#07_ Habilitando o Serviço do Microsoft SQL Server 2022 no Linux Mint<br>

	sudo systemctl daemon-reload
	sudo systemctl enable mssql-server
	sudo systemctl start mssql-server

#08_ Verificando o Serviço e Versão do Microsoft SQL Server 2022 no Linux Mint<br>

	sudo systemctl status mssql-server
	sudo systemctl restart mssql-server
	sudo systemctl stop mssql-server
	sudo systemctl start mssql-server

	sudo /opt/mssql/bin/sqlservr

#09_ Verificando a Porta de Conexão do Microsoft SQL Server 2022 no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'1433' -sTCP:LISTEN

#10_ Localização dos Arquivos de Configuração do Microsoft SQL Server 2022 no Linux Mint<br>

	/opt/mssql/bin       <-- diretório dos arquivos binários do Microsoft SQL Server
	/opt/mssql/lib       <-- diretório dos arquivos de bibliotecas do Microsoft SQL Server
	/var/opt/mssql/data  <-- diretório dos arquivos de Banco de Dados do Microsoft SQL Server
	/var/opt/mssql/log   <-- diretório dos arquivos de Log do Microsoft SQL Server

#11_ Adicionado o Usuário Local no Grupo Padrão do Microsoft SQL Server 2022 no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G mssql $USER
	newgrp mssql
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#12_ Testando a Conexão Local com o Microsoft SQL CMD o Linux Mint<br>

	sqlcmd -S localhost -U sa

#13_ Comandos Básicos do Microsoft SQL Server 2022 no Linux Mint<br>

	#verificando o banco de dados atual no MSSQL
	SELECT db_name()
	GO

	#listando os banco de dados existentes no MSSQL
	SELECT name FROM sys.databases
	GO

	#verificando o nome do servidor no MSSQL
	SELECT @@SERVERNAME
	GO

	#verificando o nome da estância padrão do MSSQL
	SELECT @@SERVICENAME
	GO

	#sair do MSSQL
	quit OU exit

#14_ Testando a conexão local com o Microsoft SQL Server 2022 utilizando o Powershell no Linux Mint<br>

	pwsh

	#instalando o módulo de conexão do MSSQL
	Install-Module -Name SqlServer
		You are installing the modules from an untrusted repository. <Y>
	
	#importando o módulo de conexão do MSSQL
	Import-Module SqlServer

	#visualizando o módulo de conexão do MSSQL
	Get-Module -Name SqlServer

	#conectando na estância padrão do MSSQL
	$serverInstance = Read-Host
		localhost
	$credential = Get-Credential
		User: sa
		Password for user sa: pti@2018

	#verificando as informações da conexão da estância do MSSQL
	Get-SqlInstance -ServerInstance $serverInstance -Credential $credential

	#verificando o bando de dados master do MSSQL
	Get-SqlInstance -ServerInstance $serverInstance -Credential $credential | Get-SqlDatabase -Name "master"

	#saindo do Powershell
	exit

#15_ Download e Instalação do Microsoft Azure Data Studio no Linux Mint<br>

	#Link atualizado em: 25/02/2023
	Link Oficial do Microsoft Azure Data Studio: https://sqlopsbuilds.azureedge.net/stable/661384637db384fe5d4e6224069adbe708580b16/azuredatastudio-linux-1.40.2.deb
	
	01_ Na pasta de Download, clicar duas vezes no Instalador do Microsoft Azure Data Studio;
	02_ Seguir os procedimentos na tela.

	Menu
		Pesquisa Indexada: Microsoft Azure Data Studio
			Create a connection
				Connection Details
					Connection type: Microsoft SQL Server
					Parameters: On
					Server: localhost
					Authentication type: SQL Login
					User name: sa
					Password: pti@2018
					Remember password: On
					Database: <Default>
					Encrypt: True
					Trust server certificate: False
					Server group: <Default>
					Name (optional): LinuxMint
				<Connect>
			<Enable Trust server certificate>

#16_ Integrando o Microsoft SQL Server 2022 com o Visual Studio Code VSCode no Linux Mint<br>

	VSCode
		Extensões
			Pesquisar
				SQL Server (mssql)
					Instalar

	VSCode
		SQL Server
			ADD Connection
				hostname\instance: localhost
				database optional: <Enter>
				authentication type: SQL Login
				username: sa
				password: pti@2018
				save password: Yes
				profile name: LinuxMint
			<Enable Trust server certificate>

#17_ Download e Instalação do SSMS SQL Server Management Studio no Windows 10<br>

	#Link atualizado em: 25/02/2023
	Link Oficial do SSMS SQL Server Management Studio: https://download.microsoft.com/download/a/3/2/a32ae99f-b6bf-4a49-a076-e66503ccb925/SSMS-Setup-PTB.exe
	
	01_ Na pasta de Download, clicar duas vezes no Instalador do SSMS SQL Server Management Studio;
	02_ Seguir os procedimentos na tela.

	Menu
		Pesquisa Indexada: SQL Server Management Studio
			Conectar ao Servidor
				Tipo de Servidor: Mecanismo de Banco de Dados
				Nome do servidor: 192.168.0.115
				Autenticação: Autenticação do SQL Server
				Logon: sa
				Senha: pti@2018
				Lembrar senha: Yes
			<Conectar>
