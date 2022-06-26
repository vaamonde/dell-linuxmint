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

Site Oficial do Vagrant: https://www.vagrantup.com/<br>
Site Oficial do Packer: https://www.packer.io/<br>
Vagrant Cloud Box: https://app.vagrantup.com/boxes/search<br>
Images Oficiais do Ubuntu: https://cloud-images.ubuntu.com/

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

#04_ Atualizando as Lista do Apt com o novo Repositório do Vagrant no Linux Mint<br>

	sudo apt update

#05_ Instalando o Vagrant e o Packer no Linux Mint<br>

	sudo apt install vagrant packer vim git tree python3 python2

#06_ Criando o diretório de Projetos do Vagrant no Linux Mint<br>

	#opções do comando mkdir: -p (parents), -v (verbose), ~ (til: alias home directory)
	mkdir -pv ~/Projetos/Ubuntu2004
	cd ~/Projetos/Ubuntu2004

#07_ Criando o arquivo de configuração da VM Vagrantfile do nosso projeto no Linux Mint<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/init
	#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile)
	vagrant init generic/ubuntu2004
	
	#Link de referência: https://www.vagrantup.com/docs/vagrantfile
	#opções do comando ls: -l (long listing), -h (human-readable)
	ls -lh
	cat Vagrantfile

#08_ Iniciando o Projeto da VM do Ubuntu no VirtualBOX utilizando o Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/up
	#opção do comando vagrant: up (starts and provisions the vagrant environment)
	vagrant up

	#opção do comando tree: -a (all)
	tree -a

#09_ Acessando a VM do Ubuntu no VirtualBOX utilizando o SSH do Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/ssh
	#opção do comando vagrant: ssh (connects to machine via SSH)
	vagrant ssh

#10_ Verificando as informações da VM do Ubuntu no VirtualBOX criada com o Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/status
	#Link de referência: https://www.vagrantup.com/docs/cli/global-status
	#opção do comando vagrant: global-status (outputs status Vagrant environments for this user)
	vagrant status
	vagrant global-status

#11_ Desligando a VM do Ubuntu no VirtualBOX criada com o Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/halt
	#Link de referência: https://www.vagrantup.com/docs/cli/status
	#Link de referência: https://www.vagrantup.com/docs/cli/global-status
	#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
	vagrant halt
	vagrant status
	vagrant global-status

#12_ Removendo uma VM do Ubuntu no VirtualBOX criada com o Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/destroy
	#Link de referência: https://www.vagrantup.com/docs/cli/global-status
	#opção do comando vagrant: destroy (stops and deletes all traces of the vagrant machine)
	vagrant destroy
		default: Are you sure you want to destroy the 'default' VM? [y/N]
	vagrant global-status

#13_ Listando todas as BOXES (Imagens) baixadas do Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/box
	#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
	vagrant box list

#14_ Removendo a BOXES (Imagens) baixada do Ubuntu no Vagrant<br>

	#Link de referência: https://www.vagrantup.com/docs/cli/box
	#opção do comando vagrant: box (manages boxes: installation, removal, etc.), remove (boxes remove)
	vagrant box remove generic/ubuntu2004
	vagrant box list

#15_ Criando um novo projeto utilizando um BOX (Imagem) Oficial do Ubuntu<br>

	#opções do comando mkdir: -v (verbose)
	cd ..
	mkdir -v Ubuntu2204
	cd Ubuntu2204

	#Criando o arquivo do Vagrantfile pré-configurado com a estrutura padrão
	
	#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile), -m (minimal Vagrantfile will be created)
	vagrant init -m
	
	vim Vagrantfile
	ESC dG (d=delete | G=end of file)
	INSERT

```ruby
#Início da configuração do BOX do Vagrant indicando a maior versão ("2")
#OBSERVAÇÃO IMPORTANTE: Recuo PADRÃO adequado SEMPRE usar ESPAÇO e NÃO TAB (tabulador) - 2(dois) ESPAÇOS
Vagrant.configure("2") do |config|
  #Configuração das Definições do Nome do BOX Local do Vagrant para Multi-VM
  #OBSERVAÇÃO IMPORTANTE: caso não use a opção define será criado uma BOX com o nome Padrão: default
  config.vm.define "webserver" do |web|
    #Configuração do nome do BOX Local do Vagrant
    web.vm.box = "ubuntu2204"
    #Link de download da Imagem do Ubuntu Server 22.04 Oficial
    web.vm.box_url = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-vagrant.box"
    #Configuração do Hostname do BOX do Ubuntu Server no Vagrant
    web.vm.hostname = "webserver"
    #Configuração do Endereçamento Público IPv4 do BOX do Ubuntu Server do Vagrant
    #OBSERVAÇÃO IMPORTANTE: por padrão o Vagrant utiliza a primeira Interface de Rede em Modo NAT
    #para acessar via SSH o BOX do Ubuntu Server, quando configurado a Interface Pública do Vagrant
    #ele habilita a segunda Interface do VirtualBOX em Modo Bridge e configura o Endereço IPv4 Estático
    web.vm.network "public_network", ip: "192.168.0.251", bridge: "enp6s0"
    #Configuração da Máquina Virtual do BOX do Ubuntu Server no VirtualBOX do Vagrant
    web.vm.provider "virtualbox" do |vb|
      #Configuração do nome da Máquina Virtual no VirtualBOX do Vagrant
      vb.name = "ubuntu-server-22-04"
      #Configuração da quantidade de Memória RAM da Máquina Virtual no VirtualBOX do Vagrant
      vb.memory = "1024"
      #Configuração da quantidade de vCPU's da Máquina Virtual no VirtualBOX do Vagrant
      vb.cpus = "2"
    #Fim do Bloco de Configuração: Provider (virtualbox |vb|)
    end
  #Fim do Bloco de Configuração: Define (webserver |web|)
  end
#Fim do Bloco de Configuração: Configure (|config|)
end
```

	#opção do comando vagrant: up (starts and provisions the vagrant environment)
	vagrant up

	#opção do comando vagrant: ssh (connects to machine via SSH)
	vagrant ssh

	#opção do comando ssh: -p (port), -i (identity_file)
	ssh -p 22 -i .vagrant/machines/webserver/virtualbox/private_key vagrant@192.168.0.251