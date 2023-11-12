#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.09<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Docker CE no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Docker CE no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![Docker CE](http://img.youtube.com/vi/iOI6V5iR9Cw/0.jpg)](https://www.youtube.com/watch?v=iOI6V5iR9Cw "Docker CE")

Link da vídeo aula: https://www.youtube.com/watch?v=iOI6V5iR9Cw

Site Oficial do Docker: https://www.docker.com/<br>
Site Oficial do Docker Hub: https://hub.docker.com/search?q=

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
	OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release

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

#02_ Instalando as Dependência do Docker CE no Linux Mint<br>

	sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg-agent

#03_ Adicionando a Chave GPG do Docker CE no Linux Mint<br>

	#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 20.x
	#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 21.x
	#opções do comando wget: -q (quiet)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do redirecionador >: Redireciona a saída padrão (STDOUT)
	#opção do redirecionador 2>&1: Conecta a saída de erro na saída padrão
	wget -q https://download.docker.com/linux/ubuntu/gpg 
	cat gpg | gpg --dearmor | sudo tee /usr/share/keyrings/docker-ce.gpg > /dev/null 2>&1

#04_ Adicionando o Repositório do Docker CE no Linux Mint<br>

	#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

	#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x
	sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu jammy stable"

#05_ Atualizando as Lista do Apt com o novo Repositório do Docker CE no Linux Mint<br>

	sudo apt update

#06_ Instalando o Docker CE e suas Dependências no Linux Mint<br>

	sudo apt install docker-ce docker-compose git vim python2 python3

	OBSERVAÇÃO IMPORTANTE: a versão do Docker-Compose utilizando o Source List do Docker-CE está
	desatualizada em relação ao projeto do Github: https://github.com/docker/compose, é recomendado
	baixar o Binário do projeto e atualizar a versão no Linux Mint com o procedimento abaixo (NÃO
	COMENTADO NO VÍDEO)

	#opção do comando apt: purgue (remove --purge packages)
	sudo apt purge docker-compose
	
	#opção do comando curl: -S (show-error), -L (location), -o (output) (Build 2.22.0 21/09/2023)
	sudo curl -SL https://github.com/docker/compose/releases/download/v2.22.0/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
	
	#opção do comando chmod: -v (verbose), 755 (User=RWX,Group-R-X,Other-R-X)
	sudo chmod -v 755 /usr/bin/docker-compose

#07_ Adicionando o Usuário Local no Grupo do Docker CE no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G docker $USER
	newgrp docker
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#08_ Verificando o serviço do Docker CE, Docker Compose, Versões e Informações<br>

	sudo systemctl status docker

	docker version
	docker-compose version
	docker info
	docker system info

#09_ Iniciando um Container de Teste do Docker CE<br>

	#opção do comando docker: search (Search the Docker Hub for images), run (Run a command in a new container)
	#link de consulta do Docker Hub: https://hub.docker.com/
	docker search hello-world
	docker run hello-world

#10_ Iniciando um Container de Teste do Ubuntu Bash no Docker CE<br>

	#opções do comando docker: search (Search the Docker Hub for images), run (Run a command in a new container), 
	#-i (interactive), -t (tty)
	docker search ubuntu
	docker run -it ubuntu bash
		cat /etc/os-release
		apt update
		apt install net-tools iputils-ping
		ifconfig
		exit

#11_ Verificando as Imagens dos Container no Docker CE<br>

	#opção do comando docker: images (List images container on system), ps (List containers)
	docker images
	docker ps

#12_ Limpando todas as Imagens, Container, Volumes e Redes no Docker CE<br>

	#opção do comando docker: prune (Remove unused data), rmi (Remove one or more images)
	docker system prune
	docker rmi hello-world:latest
	docker rmi ubuntu:latest
	docker images