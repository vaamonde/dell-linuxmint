#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 10/06/2022<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do Docker CE no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.3 Una é derivado do Ubuntu Desktop 20.04.4 Focal Fossa
	sudo cat /etc/os-release

#01_ Atualização do Sistema Operacional Linux Mint<br>

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

#02_ Instalando as Dependência do Docker CE no Linux Mint<br>

	sudo apt install apt-transport-https ca-certificates curl software-properties-common

#03_ Adicionando a Chave GPG do Docker CE no Linux Mint<br>

	#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#04_ Adicionando o Repositório do Docker CE no Linux Mint<br>

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#05_ Atualizando as Lista do Apt com o novo Repositório do Docker CE no Linux Mint<br>

	sudo apt update

#06_ Instalando o Docker CE e suas Dependências no Linux Mint<br>

	sudo apt install docker-ce docker-compose

#07_ Adicionando o Usuário Local no Grupo do Docker CE no Linux Mint<br>

	#opções do comando usermod: -a (append), -G (groups)
	sudo usermod -a -G docker $USER	
	newgrp docker
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#08_ Verificando o serviço do Docker CE e Versão<br>

	sudo systemctl status docker
	docker version
	docker info
	docker-compose version
	docker system info

#09_ Iniciando um Container de Teste do Docker CE<br>

	#opção do comando docker: run (Run a command in a new container)
	docker run hello-world

#10_ Iniciando um Container de Teste do Ubuntu no Docker CE<br>

	#opções do comando docker: run (Run a command in a new container), -i (interactive), -t (tty)
	docker run -it ubuntu bash
		cat /etc/os-release
		apt update
		apt install net-tools iputils-ping
		exit

#11_ Verificando as Imagens dos Container no Docker CE<br>

	#opção do comando docker: images (List images container on system)
	docker images

#12_ Limpando todas as Imagens, Container, Volumes e Redes no Docker CE<br>

	#opção do comando docker: prune (Remove unused data), rmi (Remove one or more images)
	docker system prune
	docker rmi hello-world:latest
	docker rmi ubuntu:latest
	docker images