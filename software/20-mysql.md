#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 23/01/2025<br>
#Versão: 0.13<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma e 22.1 Xia x64<br>

#Instalação do MySQL Server e Client 8.0 no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do MySQL Server e Client 8.0 no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do MySQL Server e Client 8.0 no Linux Mint 22 Wilma e 22.1 Xia x64<br>

[![MySQL Server](http://img.youtube.com/vi/ClnoU4-x5oI/0.jpg)](https://www.youtube.com/watch?v=ClnoU4-x5oI "MySQL Server")

Link da vídeo aula: https://www.youtube.com/watch?v=ClnoU4-x5oI

Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do MariaDB: https://mariadb.org/<br>
Site Oficial do Workbench: https://www.mysql.com/products/workbench/

O QUE É E PARA QUE SERVER O MYSQL: O MySQL é um sistema de gerenciamento de banco de dados, que utiliza a linguagem SQL como interface. É atualmente um dos sistemas de gerenciamento de bancos de dados mais populares da Oracle Corporation, com mais de 10 milhões de instalações pelo mundo.

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
#OBSERVAÇÃO IMPORTANTE: Linux Mint 22.x é derivado do Ubuntu Desktop 24.04.x Noble Numbat
sudo cat /etc/os-release
sudo cat /etc/lsb-release

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
  Informações do Sistema
```

#01_ Atualização do Sistema Operacional Linux Mint<br>
```bash
#atualizando o sistema operacional via MintUpdate (Recomendado)
A) Atualização do sistema utilizando o MintUpdate;
B) Atualização do sistema utilizando o Apt;

#atualizando o sistema operacional via Terminal
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#recomendo utilizando o comando: apt - o comando: apt-get e considerado obsoleto
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
sudo apt clean
```

#02_ Instalando o MySQL Server e Client 8.0 no Linux Mint<br>
```bash
#INSTALANDO O MYSQL SERVER E CLIENT NO LINUX MINT 20.x
sudo apt install git vim libproj15 proj-data mysql-server-8.0 mysql-client-8.0 

#INSTALANDO O MYSQL SERVER E CLIENT NO LINUX MINT 21.x
sudo apt install git vim libmysqlclient21 libpcrecpp0v5 libproj22 proj-data mysql-server-8.0 mysql-client-8.0 

#INSTALANDO O MYSQL SERVER E CLIENT NO LINUX MINT 22.x
sudo apt install git vim libmysqlclient21 libpcrecpp0v5 libproj25 proj-data mysql-server-8.0 mysql-client-8.0 
```

#03_ Instalando o MySQL Workbench no Linux Mint<br>
```bash
#INSTALANDO O MYSQL WORKBENCH NO LINUX MINT 20.x
#opção do comando dpkg: -i (install)
#Link repositório do MySQL Workbench: http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/ (link atualizado em 14/01/2023)
wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.29-1ubuntu20.04_amd64.deb
sudo dpkg -i mysql-workbench-community*.deb

#INSTALANDO O MYSQL WORKBENCH NO LINUX MINT 21.x
#opção do comando dpkg: -i (install)
#Link repositório do MySQL Workbench: http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/ (link atualizado em 14/01/2023)
wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.33-1ubuntu22.04_amd64.deb

#instalando o MySQL Workbench
sudo dpkg -i mysql-workbench-community*.deb

#INSTALANDO O MYSQL WORKBENCH NO LINUX MINT 22.x
#opção do comando dpkg: -i (install)
#Link repositório do MySQL Workbench: http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/ (link atualizado em 13/11/2024)
wget http://repo.mysql.com/apt/ubuntu/pool/mysql-tools/m/mysql-workbench-community/mysql-workbench-community_8.0.33-1ubuntu23.04_amd64.deb

#instalando o MySQL Workbench
sudo dpkg -i mysql-workbench-community*.deb
```

#05_ Verificando o Serviço e Versão do MySQL Server no Linux Mint<br>
```bash
#verificando os Status de Serviço do MySQL Server
sudo systemctl status mysql
sudo systemctl restart mysql
sudo systemctl stop mysql
sudo systemctl start mysql

#verificando as versões do MySQL
sudo mysqld --version (Server)
sudo mysql --version (Client)
```

#06_ Verificando a Porta de Conexão do MySQL Server no Linux Mint<br>
```bash
#listando a porta padrão o MySQL Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN
```

#07_ Localização dos Arquivos de Configuração do MySQL Server no Linux Mint<br>
```bash
/etc/mysql                          <-- Diretório de configuração do SGBD MySQL Server
/etc/mysql/mysql.conf.d/mysqld.cnf  <-- Arquivo de configuração do Servidor SGBD do MySQL Server
/etc/mysql/mysql.conf.d/mysql.cnf   <-- Arquivo de configuração do Cliente SGBD do MySQL Client
/var/log/mysql                      <-- Diretório padrão dos Logs do SGBD Mysql Server
/var/lib/mysql                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server
```

#08_ Acesso o MySQL Server no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o usuário Root do MySQL Server não tem senha para
#se logar no MySQL Client Console.

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

#09_ Aplicando a segurança de acesso do usuário Root do MySQL Server no Linux Mint<br>
```sql
/* visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* utilizando a base de dados mysql */
USE mysql;

/* mostrando as tabelas criadas na base de dados mysql */
SHOW TABLES;

/* selecionando o dados da tabela user, filtrando somente as colunas: user e host */
SELECT user,host FROM user;

/* alterando a senha do usuário Root Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';

/* alterando as permissões do usuário Root Localhost */
GRANT ALL ON *.* TO 'root'@'localhost';

/* aplicando todas as mudanças na base de dados */
FLUSH PRIVILEGES;

/* saindo do MySQL Client Console */
exit
```
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

#10_ Criando um usuário DBA no MySQL Server no Linux Mint<br>
```sql
/* criando o usuário DBA Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO DBA CONFORME A SUA NECESSIDADE */
CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';

/* alterando as permissões do usuário DBA Localhost */
GRANT ALL ON *.* TO 'dba'@'localhost';

/* aplicando todas as mudanças na base de dados */
FLUSH PRIVILEGES;

/* Verificando o Usuário DBA criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='dba';

/* saindo do MySQL Client Console */
exit
```
```bash
#se logando com o usuário dba para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dba -p
```

#11_ Adicionado o Usuário Local no Grupo Padrão do MySQL Server no Linux Mint<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G mysql $USER
newgrp mysql
id

#recomendado reinicializar a máquina para aplicar as permissões
sudo reboot

#opções do comando mysql: -u (user), -p (password)
mysql -u dba -p
```

#12_ Conectando no MySQL Server utilizando o MySQL Workbench no Linux Mint<br>
```bash
#executando o MySQL Workbench
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
```

#13_ Integrando o MySQL Server com o Visual Studio Code VSCode<br>
```bash
#instalando a Extensão do MySQL Server
VSCode
  Extensões
    Pesquisar
      MySQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
        Instalar

#configurando a conexão com o MySQL Server
VSCode
  Database
    <Create Connection>
      Name: LinuxMint
      Server Type:
        MySQL
          Host: 127.0.0.1 (ou localhost)
          Port: 3306
          Username: root
          Password: pti@2018
      <Save>
```