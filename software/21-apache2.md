#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 16/01/2023<br>
#Data de atualização: 28/07/2024<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Apache 2 e PHP 7.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Apache 2 e PHP 8.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Apache 2 e PHP 8.x no Linux Mint 22 Wilma x64<br>

[![Apache2 Server](http://img.youtube.com/vi/XDURRbCpd2M/0.jpg)](https://www.youtube.com/watch?v=XDURRbCpd2M "Apache2 Server")

Link da vídeo aula: https://www.youtube.com/watch?v=XDURRbCpd2M

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/

O QUE É E PARA QUE SERVER O APACHE2: O Servidor HTTP Apache ou Servidor Apache ou HTTP Daemon<br>
Apache ou somente Apache, é o servidor web livre criado em 1995 por um grupo de desenvolvedores<br>
da NCSA, tendo como base o servidor web NCSA HTTPd criado por Rob McCool.

O QUE É E PARA QUE SERVER O PHP: PHP é uma linguagem interpretada livre, usada originalmente<br>
apenas para o desenvolvimento de aplicações presentes e atuantes no lado do servidor, capazes<br>
de gerar conteúdo dinâmico na World Wide Web.

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
_ Atualização do sistema utilizando o MintUpdate;
_ Atualização do sistema utilizando o Apt;

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
sudo
```

#02_ Instalando o Apache 2 e PHP 7.x ou 8.x no Linux Mint<br>
```bash
#INSTALANDO O APACHE 2 E PHP 7.x NO LINUX MINT 20.x
sudo apt install git vim perl python2 python3 unzip ghostscript zlibc zlib1g-dev apt-transport-https

sudo apt install apache2 apache2-utils apache2-bin apache2-data php7.4 php7.4-cli php7.4-common \
php7.4-json php7.4-mysql php7.4-opcache php7.4-readline php7.4-common php7.4-bcmath php7.4-curl \
php7.4-intl php7.4-mbstring php7.4-xml php7.4-zip php7.4-soap php-imagick libapache2-mod-php \
libapr1 libapache2-mod-php7.4 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

#INSTALANDO O APACHE 2 E PHP 8.x NO LINUX MINT 21.x
sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

sudo apt install apache2 apache2-utils apache2-bin apache2-data php8.1 php8.1-cli php8.1-common \
php8.1-mysql php8.1-opcache php8.1-readline php8.1-common php8.1-bcmath php8.1-curl php8.1-intl \
php8.1-mbstring php8.1-xml php8.1-zip php8.1-soap php-imagick php-json libapache2-mod-php libapr1 \
libapache2-mod-php8.1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap
```

#03_ Verificando o Serviço e Versão do Apache 2 e do PHP no Linux Mint<br>
```bash
#verificando o Status de Serviço do Apache2
sudo systemctl status apache2
sudo systemctl restart apache2
sudo systemctl stop apache2
sudo systemctl start apache2

#verificado as versões do Apache2 e PHP
sudo apache2 -V (Server)
sudo php --version (PHP)
```

#04_ Verificando a Porta de Conexão do Apache 2 no Linux Mint<br>
```bash
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

#05_ Localização dos Arquivos de Configuração do Apache 2 e do PHP 7.x ou 8.x no Linux Mint<br>
```bash
/etc/apache2/                  <-- Diretório de configuração do Apache 2 Server
/etc/apache2/apache2.conf      <-- Arquivo de configuração do Apache 2 Server
/etc/apache2/sites-available/  <-- Diretório padrão do Sites Acessíveis do Apache 2 Server
/etc/apache2/conf-available/   <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
/etc/php/                      <-- Diretório de configuração do PHP 7.x ou 8.x
/etc/php/7.4/apache2/php.ini   <-- Arquivo de configuração do PHP 7.x do Apache 2 Server
/etc/php/8.1/apache2/php.ini   <-- Arquivo de configuração do PHP 8.x do Apache 2 Server
/var/www/html/                 <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
/var/log/apache2/              <-- Diretório padrão dos Logs do Apache 2 Server
```

#06_ Adicionado o Usuário Local no Grupo Padrão do Apache2 Server no Linux Mint<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G www-data $USER
newgrp www-data
id

#recomendado reinicializar a máquina para aplicar as permissões
sudo reboot
```

#07_ Criando um diretório de Teste do HTML e PHP no Linux Mint<br>
```bash
#acessando o diretório Document Root do Apache2
cd /var/www/html

#opção do comando mkdir: -v (verbose)
sudo mkdir -v teste

#opção do comando chmod: -v (verbose), 775 (User=RWX,Group=RWX,Other=R-X)
sudo chmod -v 775 teste/

#opção do comando chown: -v (verbose), root (User), . (separate), www-date (group)
sudo chown -v root.www-data teste/

#acessando o diretório do site
cd teste
```

#08_ Criando páginas HTML e PHP para testar o Apache2 Server no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar os arquivos: teste.html, teste.php
#e phpinfo.php utilizando o Microsoft Visual Studio VSCode.
code .

01) criando um novo arquivo: (Atalho) Ctrl + N
02) copiar e colar o código abaixo: 
03) salvar o arquivo com o nome: teste.html (Atalho) Ctrl + S
```
```html
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Teste da Linguagem HTML</title>
			<meta charset="utf-8">
		</head>
		<body>
			<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>
			Autor: Robson Vaamonde<br>
			Linkedin: <a href="https://www.linkedin.com/in/robson-vaamonde-0b029028/">Robson Vaamonde</a><br>
			Site: <a href="procedimentosemti.com.br">procedimentosemti.com.br</a><br>
			Facebook: <a href="facebook.com/ProcedimentosEmTI"> Procedimentos Em TI</a><br>
			Facebook: <a href="facebook.com/BoraParaPratica">Bora Para Pratica</a><br>
			Instagram: <a href="https://www.instagram.com/procedimentoem/?hl=pt-br">Procedimentos Em TI</a><br>
			YouTube: <a href="youtube.com/BoraParaPratica">Bora Para Pratica</a><br>
		</body>
	</html>
```
```bash
01) criando um novo arquivo: (Atalho) Ctrl + N
02) copiar e colar o código abaixo: 
03) salvar o arquivo com o nome: teste.php (Atalho) Ctrl + S
```
```php
<!DOCTYPE html>
	<html lang="pt-br">
		<head>
			<title>Teste da Linguagem PHP</title>
			<meta charset="utf-8">
		</head>
		<body>
			<?php 
				echo '<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>';
				echo 'Autor: Robson Vaamonde<br>';
				echo 'Linkedin: linkedin.com/in/robson-vaamonde-0b029028/<br>';
				echo 'Site: procedimentosemti.com.br<br>';
				echo 'Facebook: facebook.com/ProcedimentosEmTI<br>';
				echo 'Facebook: facebook.com/BoraParaPratica<br>';
				echo 'Instagram: instagram.com/procedimentoem/<br>';
				echo 'YouTube: youtube.com/BoraParaPratica<br>'; 
			?>
		</body>
	</html>
```
```bash
01) criando um novo arquivo: (Atalho) Ctrl + N
02) copiar e colar o código abaixo: 
03) salvar o arquivo com o nome: phpinfo.php (Atalho) Ctrl + S
```
```php
<?php
	/** Módulo do PHP para gerar a página de documentação e parâmetros do PHP*/
	phpinfo(); 
?>
```

#09_ Testando o Apache2 e o PHP no navegador utilizando o Linux Mint<br>
```bash
#testar o acesso via navegador
firefox ou google chrome: http://localhost
firefox ou google chrome: http://localhost/teste/
```