#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 17/03/2023<br>
#Data de atualização: 29/072024<br>
#Versão: 0.06<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do NGINX 1.18.x e PHP 7.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do NGINX 1.18.x e PHP 8.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do NGINX 1.18.x e PHP 8.x no Linux Mint 22 Wilma x64<br>

[![NGINX Server](http://img.youtube.com/vi/Bd_8u0UBs6U/0.jpg)](https://www.youtube.com/watch?v=Bd_8u0UBs6U "NGINX Server")

Link da vídeo aula: https://www.youtube.com/watch?v=Bd_8u0UBs6U

Site Oficial do NGINX: https://www.nginx.com/<br>
Site Oficial do PHP (7.x ou 8.x): https://www.php.net/<br>
Site Oficial do PHP-FPM (7.x ou 8.x): https://www.php.net/manual/pt_BR/install.fpm.php

O QUE É E PARA QUE SERVER O NGINX: Nginx é um servidor leve de HTTP, proxy reverso, proxy<br>
de e-mail IMAP/POP3, feito por Igor Sysoev em 2005, sob licença BSD-like 2-clause. O Nginx<br>
consome menos memória que o Apache, pois lida com requisições Web do tipo “event-based web<br>
server”; e o Apache é baseado no “process-based server”, podendo trabalhar juntos.

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

#verificando informações de localidade
sudo localectl

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

#02_ Instalando o NGINX 1.18.x e PHP 7.x ou 8.x no Linux Mint<br>
```bash
#INSTALANDO O NGINX 1.18.x E PHP 7.x NO LINUX MINT 20.x
#instalação das dependências do NGINX e PHP (EXECUTAR PRIMEIRO ESSE PROCEDIMENTO)
sudo apt install git vim perl python2 python3 unzip ghostscript zlibc zlib1g-dev apt-transport-https

#instalação do NGINX e PHP
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx php7.4 php7.4-cli php7.4-common php7.4-fpm php7.4-json php7.4-mysql \
php7.4-opcache php7.4-readline php7.4-bcmath php7.4-curl php7.4-intl php7.4-mbstring php7.4-xml \
php7.4-zip php7.4-soap php-imagick libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

#INSTALANDO O NGINX 1.18.x E PHP 8.x NO LINUX MINT 21.x
#instalação das dependências do NGINX e PHP (EXECUTAR PRIMEIRO ESSE PROCEDIMENTO)
sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

#instalação do NGINX e PHP
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx php8.1 php8.1-cli php8.1-common php8.1-fpm php8.1-mysql php8.1-opcache \
php8.1-readline php8.1-bcmath php8.1-curl php8.1-intl php8.1-mbstring php8.1-xml php8.1-zip \
php8.1-soap php-imagick php-json libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap
```

#03_ Habilitando o Serviço do NGINX 1.18.x e do PHP-FPM no Linux Mint<br>
```bash
#iniciando o serviço do NGINX e PHP-FPM
sudo systemctl daemon-reload
sudo systemctl enable nginx
sudo systemctl enable php7.4-fpm
sudo systemctl start nginx
sudo systemctl start php7.4-fpm
```

#04_ Verificando o Serviço e Versão do NGINX 1.18.x e do PHP-FPM no Linux Mint<br>
```bash
#verificando o status de serviço do NGINX
sudo systemctl status nginx
sudo systemctl restart nginx
sudo systemctl stop nginx
sudo systemctl start nginx

#verificando o status de serviço do PHP-FPM
sudo systemctl status php7.4-fpm
sudo systemctl restart php7.4-fpm
sudo systemctl stop php7.4-fpm
sudo systemctl start php7.4-fpm

#verificando as versões do NGINX e PHP-FPM
sudo nginx -v (Server)
sudo php --version (PHP)
sudo php-fpm7.4 --version (PHP-FPM)
```

#05_ Verificando a Porta de Conexão do NGINX 1.18.x no Linux Mint<br>
```bash
#verificando a porta padrão do NGINX
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

#06_ Localização dos Arquivos de Configuração do NGINX 1.18.x e do PHP 7.x ou 8.x no Linux Mint<br>
```bash
/etc/nginx/                   <-- Diretório de configuração do NGINX Server
/etc/nginx/nginx.conf         <-- Arquivo de configuração do NGINX Server
/etc/nginx/sites-available/   <-- Diretório padrão dos Sites Acessíveis do NGINX Server
/etc/php/                     <-- Diretório de configuração do PHP 7.x ou 8.x
/etc/php/7.4/fpm/php.ini      <-- Arquivo de configuração do PHP-FPM 7.x do NGINX Server
/etc/php/8.1/fpm/php.ini      <-- Arquivo de configuração do PHP-FPM 8.x do NGINX Server
/var/www/html/                <-- Diretório padrão das Hospedagem de Site do NGINX Server
/var/log/nginx/               <-- Diretório padrão dos Logs do NGINX Server
```

#07_ Habilitando o suporte ao PHP-FPM no NGINX 1.18.x Server no Linux Mint<br>
```bash
#editando o arquivo de site padrão do NGINX
sudo vim /etc/nginx/sites-available/default
INSERT

	#adicionar o suporte a página index.php no site padrão do NGINX
	#alterar a linha: 44 - adicionar no final da linha
	index index.html index.htm index.nginx-debian.html index.php;

	#descomentar as linhas do suporte ao FastCGI do PHP-FPM no NGINX
		#descomentar a linha: 56
		location ~ \.php$ {
		
		#descomentar a linha: 57
		include snippets/fastcgi-php.conf;
		
		#descomentar a linha: 60
		#OBSERVAÇÃO: se você estiver usando a versão 8.1.x do PHP-FPM alterar o caminho
		fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
		
		#descomentar a linha: 63
		}

	#descomentar as linhas do suporte ao .htaccess do NGINX
		#descomentar a linha: 68
		location ~ /\.ht {
		
		#descomentar a linha: 69
		deny all;
		
		#descomentar a linha: 70
		}

#salvar e sair do arquivo
ESC SHIFT :x <ENTER>

#testado as configurações do NGINX
#opção do comando nginx: -t (nginx checks the configuration)
sudo nginx -t

#reiniciando o serviço do NGINX
sudo systemctl restart nginx
sudo systemctl status nginx
```

#07_ Criando um diretório de Teste do HTML e PHP no Linux Mint<br>
```bash
#acessando o Documenta Root do NGINX
cd /var/www/html

#criando o diretório de teste de sites do NGINX
#opção do comando mkdir: -v (verbose)
sudo mkdir -v teste

#alterando as permissões do diretório
#opção do comando chmod: -v (verbose), 777 (User=RWX,Group=RWX,Other=RWX)
#OBSERVAÇÃO IMPORTANTE: em produção não utilizar a permissão 777, recomendado a permissão
#775 (User=RWX,Group=RWX,Other=R-X) ou 755 (User=RWX,Group=R-X,Other=R-X)
sudo chmod -v 777 teste/

#acessando o diretório testes
cd teste
```

#08_ Criando páginas HTML e PHP para testar o NGINX 1.18.x Server no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar os arquivos: teste.html, teste.php
#e phpinfo.php utilizando o Microsoft Visual Studio VSCode.
#code .

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

#09_ Testando o NGINX 1.18.x Server e o PHP-FPM no navegador utilizando o Linux Mint<br>
```bash
#testando o NGINX via navegador
firefox ou no google chrome: http://localhost
firefox ou no google chrome: http://localhost/teste/
```