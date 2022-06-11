#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 11/06/2022<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do HashiCorp Vagrant no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Vagrant Cloud Box: https://app.vagrantup.com/boxes/search

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

#02_ Adicionando a Chave GPG do Vagrant no Linux Mint<br>

	#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

#03_ Adicionando o Repositório do Vagrant no Linux Mint<br>

	sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com focal main"

#04_ Atualizando as Lista do Apt com o novo Repositório do Vagrant<br>

	sudo apt update

#05_ Instalando o Vagrant no Linux Mint<br>

	sudo apt vagrant

#06_ Criando o diretório de Projetos do Vagrant<br>

	#opções do comando mkdir: -p (parents), -v (verbose), ~ (til: alias home directory)
	mkdir -pv ~/Projetos/Ubuntu2004
	cd ~/Projetos/Ubuntu2004

#07_ Criando o arquivo de configuração da VM Vagrantfile do nosso projeto<br>

	#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile)
	vagrant init generic/ubuntu2004
	
	#opções do comando ls: -l (long listing), -h (human-readable)
	ls -lh
	cat Vagrantfile

#08_ Iniciando o Projeto da VM do Ubuntu no VirtualBOX utilizando o Vagrant<br>

	#opção do comando vagrant: up (starts and provisions the vagrant environment)
	vagrant up

#09_ Acessando a VM utilizando o SSH do Vagrant<br>

	#opção do comando vagrant: ssh (connects to machine via SSH)
	vagrant ssh

#10_ Verificando as informações da VM criada com o Vagrant<br>

	#opção do comando vagrant: global-status (outputs status Vagrant environments for this user)
	vagrant global-status

#11_ Desligando a VM criada com o Vagrant<br>

	#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
	vagrant halt 3160b44
	vagrant status 3160b44

#12_ Removendo uma VM criada no Vagrant<br>

	#opção do comando vagrant: destroy (stops and deletes all traces of the vagrant machine)
	vagrant destroy 3160b44
		default: Are you sure you want to destroy the 'default' VM? [y/N]
	vagrant global-status

#13_ Listando todas as BOXES (Imagens) baixadas do Vagrant<br>

	#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
	vagrant box list

#14_ Removendo a BOXES (Imagens) baixada do Ubuntu no Vagrant<br>

	#opção do comando vagrant: box (manages boxes: installation, removal, etc.), remove (boxes remove)
	vagrant box remove generic/ubuntu2004
	vagrant box list