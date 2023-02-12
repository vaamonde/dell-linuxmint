#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/01/2023<br>
#Data de atualização: 31/01/2023<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do MongoDB Server 6.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do MongoDB Server 6.x no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do MongoDB: https://www.mongodb.com/<br>
Site Oficial do MongoDB Compass: https://www.mongodb.com/products/compass

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

#02_ Instalando as Dependências do MongoDB Server no Linux Mint<br>

	#INSTALANDO AS DEPENDÊNCIAS DO MONGODB SERVER NO LINUX MINT 20.x
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates

	#INSTALANDO AS DEPENDÊNCIAS DO MONGODB SERVER NO LINUX MINT 21.x
	#opção do comando dpkg: -i (install)
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
	sudo dpkg -i libssl*.deb

#03_ Baixando e instalando a Chave GPG do MongoDB Server no Linux Mint<br>

	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando gpg: -o (output)
	curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg

#04_ Criando o repositório do MongoDB Server no Linux Mint<br>

	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

#05_ Atualizando as Lista do Apt com o novo Repositório do MongoDB no Linux Mint<br>

	sudo apt update

#06_ Instalando o MongoDB Server e Client no Linux Mint<br>

	sudo apt install mongodb-org

#07_ Habilitando o Serviço do MongoDB Server no Linux Mint<br>

	sudo systemctl daemon-reload
	sudo systemctl enable mongod
	sudo systemctl start mongod

#08_ Verificando o Serviço e Versão do MongoDB Server no Linux Mint<br>

	sudo systemctl status mongod
	sudo systemctl restart mongod
	sudo systemctl stop mongod
	sudo systemctl start mongod

	mongod --version

#09_ Verificando a Porta de Conexão do MongoDB Server no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'27017' -sTCP:LISTEN

#10_ Localização dos Arquivos de Configuração do MongoDB Server no Linux Mint<br>

	/etc/mongod.conf	<-- arquivo de configuração do MongoDB Server
	/var/log/mongodb	<-- diretório do arquivo de Logo do MongoDB Sever
	/var/lib/mongodb	<-- diretório do banco de dados padrão do MongoDB Server

#11_ Adicionado o Usuário Local no Grupo Padrão do MongoDB Server no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G mongodb $USER
	newgrp mongodb
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#12_ Configurando o MongoDB Server para suportar autenticação e acesso Remoto<br>

	vim /etc/mongod.conf
		INSERT
			
			#habilitando o recurso de autenticação do MongoDB
			security:
				authorization: enabled
			
			#habilitando o suporte remoto do MongoDB
			net:
				port: 27017
				bindIp: 0.0.0.0

		ESC SHIFT :x <ENTER>

	sudo systemctl restart mongod

#12_ Testando a Conexão Local com o MongoDB Server o Linux Mint<br>

	mongosh

#13_ Comandos Básicos do MongoDB Server no Linux Mint<br>

	#exibir os banco de dados existentes
	show dbs

	#alterar o database informe
	use admin

	#listar o database atual
	db

	#exibindo os collections do database atual
	show collections

	#saindo do MongoDB Server
	quit

#14_ Criando o usuário de administração do MongoDB Server no Linux Mint<br>

	mongosh
	
		use admin
	
		db.createUser(
		{
			user: "admin",
			pwd: "pti@2018",
			roles: [ "userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase" ]
		}
		)

	db.getUsers()

	exit

	#opção do comando mongosh: admin (database) -u (username), -p (password)
	mongosh admin -u admin -p

#15_ Integrando o MongoDB Server com o Visual Studio Code VSCode no Linux Mint<br>

	VSCode
		Extensões
			Pesquisar
				MongoDB for VS Code
					Instalar

	VSCode
		MongoDB
			CONNECTIONS
				Add Connection
					Advanced Connection String: <Open From>
						New Connection
							General
								Connection Type: Standalone
								Hostname: localhost
								Port: 27017
								Authentication: None
						<Connect>