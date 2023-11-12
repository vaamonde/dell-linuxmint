#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 25/02/2023<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.04<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do PostgreSQL Server 15.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do PostgreSQL Server 15.x no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![PostgreSQL Server](http://img.youtube.com/vi/rDh3iq8nmDg/0.jpg)](https://www.youtube.com/watch?v=rDh3iq8nmDg "PostgreSQL Server")

Link da vídeo aula: https://www.youtube.com/watch?v=rDh3iq8nmDg

OBSERVAÇÃO IMPORTANTE: LANÇADO NO MÊS SETEMBRO/2023 A VERSÃO 16 DO POSTGRESQL SERVER,<br>
OS PROCEDIMENTOS ADOTADO NESSE VÍDEO SERVER PARA ESSE VERSÃO, MUDANDO APENAS O NÚMERO<br>
DA VERSÃO DE: 15 PARA 16 NOS CAMINHOS DOS DIRETÓRIOS.

Site Oficial do PostgreSQL: https://www.postgresql.org/<br>
Site Oficial do DBeaver: https://dbeaver.io/<br>
Site Ofickial do PgAdmin: https://www.pgadmin.org/

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

#02_ Instalando as Dependências do PostgreSQL Server no Linux Mint<br>

	#INSTALANDO AS DEPENDÊNCIAS DO POSTGRESQL SERVER NO LINUX MINT 20.x
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
	ca-certificates libssl-dev libffi-dev libgmp3-dev virtualenv python3-pip libpq-dev python2-dev \
	python3-dev libexpat1 ssl-cert

	#INSTALANDO AS DEPENDÊNCIAS DO POSTGRESQL SERVER NO LINUX MINT 21.x
	#opção do comando dpkg: -i (install)
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https \
	ca-certificates libssl-dev libffi-dev libgmp3-dev virtualenv python3-pip libpq-dev python2-dev \
	python3-dev libexpat1 ssl-cert
	
	OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca LibSSL sofre alteração de versão, antes de baixar a versão
	acesse o site: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/ e veja qual a versão atual, altere
	o script e faço o download.

	#opção do comando dpkg: -i (install) (link atualizado no dia: 12/11/2023)
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb
	sudo dpkg -i libssl1.1_1.1.1*.deb

#03_ Baixando e instalando a Chave GPG do PostgreSQL Server no Linux Mint<br>

	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando gpg: -o (output)
	curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg > /dev/null

#04_ Criando o repositório do PostgreSQL Server no Linux Mint<br>

	#ADICIONANDO O REPOSITÓRIO DO POSTGRESQL SERVER NO LINUX MINT 20.x
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb http://apt.postgresql.org/pub/repos/apt focal-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list

	#ADICIONANDO O REPOSITÓRIO DO POSTGRESQL SERVER NO LINUX MINT 21.x
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list

#05_ Atualizando as Lista do Apt com o novo Repositório do PostgreSQL Server no Linux Mint<br>

	sudo apt update

#06_ Instalando o PostgreSQL Server e Client no Linux Mint<br>

	sudo apt install postgresql postgresql-contrib postgresql-client

#07_ Habilitando o Serviço do PostgreSQL Server no Linux Mint<br>

	sudo systemctl daemon-reload
	sudo systemctl enable postgresql
	sudo systemctl start postgresql

#08_ Verificando o Serviço e Versão do PostgreSQL Server no Linux Mint<br>

	sudo systemctl status postgresql
	sudo systemctl restart postgresql
	sudo systemctl stop postgresql
	sudo systemctl start postgresql

	/usr/lib/postgresql/15/bin/postgres --version
	psql --version

#09_ Verificando a Porta de Conexão do PostgreSQL Server no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'5432' -sTCP:LISTEN

#10_ Localização dos Arquivos de Configuração do PostgreSQL Server no Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: LANÇADO NO MÊS SETEMBRO/2023 A VERSÃO 16 DO POSTGRESQL SERVER,
	OS PROCEDIMENTOS ADOTADO NESSE VÍDEO SERVER PARA ESSE VERSÃO, MUDANDO APENAS O NÚMERO
	DA VERSÃO DE: 15 PARA 16 NOS CAMINHOS DOS DIRETÓRIOS.
	
	#localização dos arquivos do PostgreSQL Server na versão 15
	/etc/postgresql/15/main/postgresql.conf   <-- arquivo de configuração do Servidor PostgreSQL
	/etc/postgresql/15/main/pg_hba.conf       <-- arquivo de liberação de rede do Servidor PostgreSQL
	/var/log/postgresql/                      <-- diretório dos Logs do Servidor PostgreSQL
	/var/lib/postgresql/15/main               <-- diretório padrão do Banco e Dados do Servidor PostgreSQL

	#localização dos arquivos do PostgreSQL Server na versão 16
	/etc/postgresql/16/main/postgresql.conf   <-- arquivo de configuração do Servidor PostgreSQL
	/etc/postgresql/16/main/pg_hba.conf       <-- arquivo de liberação de rede do Servidor PostgreSQL
	/var/log/postgresql/                      <-- diretório dos Logs do Servidor PostgreSQL
	/var/lib/postgresql/16/main               <-- diretório padrão do Banco e Dados do Servidor PostgreSQL

#11_ Adicionado o Usuário Local no Grupo Padrão do PostgreSQL Server no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G postgres $USER
	newgrp postgres
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#12_ Testando a conexão com o PostgreSQL Server no Linux Mint<br>

	#opção do comando sudo: -u (user)
	sudo -u postgres psql

	#opção do comando \l: (list databases)
	\l

	#opção do comando \c: (connection database)
	\c postgres

	#opção do comando \dt: (list tables)
	\dt

	#opção do comando \db: (database tablespaces)
	\db

	#opção do comando \dg: (database roles)
	\dg

	#opção do comando \conninfo: (database information connect)
	\conninfo

	#opção do comando \du: (database user profile)
	\du

	#opção do comando \q: (quit)
	\q

#13_ Configurando a Senha do Usuário Admin do PostgreSQL Server no Linux Mint<br>

	#opção do comando sudo: -u (user)
	sudo -u postgres psql --command '\password postgres'
		Enter new password for user "postgres": pti@2018
		Enter it again: pti@2018

#14_ Permitindo o acesso remoto do PostgreSQL Server no Linux Mint<br>

	#OBSERVAÇÃO IMPORTANTE: ALTERE A VERSÃO DO POSTGRESQL SERVER ANTES DE EDITAR O ARQUIVO
	#DE CONFIGURAÇÃO DE ACESSO REMOTO.

	#editando o arquivo de acesso remoto do PostgreSQL Server na versão 15
	sudo vim /etc/postgresql/15/main/postgresql.conf
	
	#editando o arquivo de acesso remoto do PostgreSQL Server na versão 16
	sudo vim /etc/postgresql/16/main/postgresql.conf

		INSERT

			#habilitando o suporte remoto do PostgreSQL Server
			#decomentar a linha: 60 e alterar o valor de: listen_addresses = 'localhost' para: listen_addresses = '*'
			listen_addresses = '*'

		ESC SHIFT :x <ENTER>

	#editando o arquivo de acesso remoto do PostgreSQL Server na versão 15
	sudo vim /etc/postgresql/15/main/pg_hba.conf
	
	#editando o arquivo de acesso remoto do PostgreSQL Server na versão 16
	sudo vim /etc/postgresql/16/main/pg_hba.conf

		INSERT

			#liberando o acesso remoto ao Banco de Dados PostgreSQL
			#comentar a linha 97: #host  all  all  127.0.0.1/32  scram-sha-256
			#adicionar a linha abaixo:
			host     all             all             0.0.0.0/0               scram-sha-256

			#comentar a linha 100: #host  all  all  ::1/128  scram-sha-256
			#adicionar a linha abaixo:
			host     all             all             ::/0                    scram-sha-256

		ESC SHIFT :x <ENTER>

	sudo systemctl restart postgresql
	sudo systemctl status postgresql

#15_ Download e Instalação do DBeaver Community Edition no Linux Mint<br>

	#Link atualizado em: 25/02/2023
	Link Oficial do DBeaver Community: https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
	
	01_ Na pasta de Download, clicar duas vezes no Instalador do DBeaver Community;
	02_ Seguir os procedimentos na tela.

	Menu
		Pesquisa Indexada: DBeaver-ce
			Select your database: PostgreSQL <Avançar>
				Main
					Server
						Connect by: Host
						URL: jdbc:postgresql://localhost:5432/postgres
						Host: localhost
						Port: 5432
						Database: postgres
					Authentication
						Authentication: Database Native
						Username: postgres
						Password: pti@2018
						Save password locally: Yes
				<Test Connection>
			<Concluir>