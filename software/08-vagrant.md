#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 04/08/2024<br>
#Versão: 0.12<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do HashiCorp Vagrant no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do HashiCorp Vagrant no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do HashiCorp Vagrant no Linux Mint 22 Wilma x64<br>

[![Vagrant](http://img.youtube.com/vi/LTlrcoR5YQE/0.jpg)](https://www.youtube.com/watch?v=LTlrcoR5YQE "Vagrant")

Link da vídeo aula: https://www.youtube.com/watch?v=LTlrcoR5YQE

Site Oficial do Vagrant: https://www.vagrantup.com/<br>
Site Oficial do Packer: https://www.packer.io/<br>
Site Oficial do VirtualBOX: https://www.virtualbox.org/<br>
Vagrant Cloud Box: https://app.vagrantup.com/boxes/search<br>
Images Oficiais do Ubuntu: https://cloud-images.ubuntu.com/

Providers Vagrant: https://www.vagrantup.com/docs/providers<br>
Providers (Provedores) padrão do Vagrant: VirtualBOX, Hyper-V, Docker, VMware, Virt-Manager KVM, QEMU.<br>
Providers (Provedores) cloud do Vagrant: AWS EC2 VPS, Google GCE, Microsoft Azure.

O QUE É E PARA QUE SERVER O VAGRANT: Vagrant é um software de código aberto para criar e manter <br>
ambientes de desenvolvimento virtuais portáteis, utilizando VirtualBox, KVM, Hyper-V, Docker containers,<br>
VMware, e AWS. Ele tenta simplificar a gerência de configuração de software das virtualizações para <br>
aumentar a produtividade do desenvolvimento.

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
01) Atualização do sistema utilizando o MintUpdate;
02) Atualização do sistema utilizando o Apt;

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

#02_ Adicionando a Chave GPG do Vagrant no Linux Mint<br>
```bash
#Baixando e adicionando a Chave GPG no Linux Mint
#opções do comando wget: -q (quiet), -O (output file), - (file name)
wget -q -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp.gpg > /dev/null 2>&1
```

#03_ Adicionando o Repositório do Vagrant no Linux Mint<br>
```bash
#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com focal main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com jammy main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 22.x
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com noble main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```

#04_ Atualizando as Lista do Apt com o novo Repositório do Vagrant no Linux Mint<br>
```bash
#atualizando as listas do Apt
sudo apt update
```

#05_ Instalando o Vagrant e o Packer e verificando a sua versão no Linux Mint<br>
```bash
#instalando o Vagrant e suas dependências no Linux Mint 20.x e 21.x
sudo apt install vagrant packer vim git tree python3 python2 pip

#instalando o Vagrant e suas dependências no Linux Mint 22
sudo apt install vagrant packer vim git tree python3 python3-pip

#verificando as versões do Vagrant e Packer
vagrant --version
packer --version
```

#06_ Criando o diretório de Projetos do Vagrant no Linux Mint<br>
```bash
#criando o diretório de projeto
#opções do comando mkdir: -p (parents), -v (verbose), 
mkdir -pv ~/Projetos/Ubuntu2004

#acessando o diretório de projeto
#opção do comando cd: ~ (til: alias home directory)
cd ~/Projetos/Ubuntu2004
```

#07_ Criando o arquivo de configuração da VM Vagrantfile do nosso projeto no Linux Mint<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/init
#Link do Vagrant Cloud da Imagem do Ubuntu 20.04: https://app.vagrantup.com/generic/boxes/ubuntu2004
#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile)
vagrant init generic/ubuntu2004

#Link de referência: https://www.vagrantup.com/docs/vagrantfile
#opções do comando ls: -l (long listing), -h (human-readable)
ls -lh

#listando o conteúdo do arquivo Vagrantfile (para sair do less pressione: q (quit))
less Vagrantfile
```

#08_ Iniciando o Projeto da VM do Ubuntu Server 20.04 no VirtualBOX utilizando o Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/up
#opção do comando vagrant: up (starts and provisions the vagrant environment)
vagrant up

#opção do comando tree: -a (all)
tree -a
```

#09_ Acessando a VM do Ubuntu Server 20.04 no VirtualBOX utilizando o SSH do Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/ssh
#opção do comando vagrant: ssh (connects to machine via SSH)
vagrant ssh

#Comandos Básicos da Imagem do Ubuntu Server 20.04
ip address show
ip route show
resolvectl
exit
```

#10_ Verificando as informações da VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/status
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: global-status (outputs status Vagrant environments for this user)
vagrant status
vagrant global-status
```

#11_ Desligando a VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/halt
#Link de referência: https://www.vagrantup.com/docs/cli/status
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
vagrant halt
vagrant status
vagrant global-status
```

#12_ Removendo a VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/destroy
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: destroy (stops and deletes all traces of the vagrant machine)
vagrant destroy
	default: Are you sure you want to destroy the 'default' VM? [y/N]
vagrant global-status
```

#13_ Listando todas as BOXES (Imagens) baixadas do Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/box
#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
vagrant box list
```

#14_ Removendo a BOXES (Imagens) baixada do Ubuntu Server 20.04 no Vagrant<br>
```bash
#Link de referência: https://www.vagrantup.com/docs/cli/box
#opção do comando vagrant: box (manages boxes: installation, removal, etc.), remove (boxes remove)
#opção do comando tree: -a (all), ~ (til: alias home directory)
#opção do comando du: -h (human-readable), ~ (til: alias home directory)
tree -a ~/.vagrant.d/
du -h ~/.vagrant.d/
vagrant box remove generic/ubuntu2004
vagrant box list
```

#15_ Criando um novo projeto utilizando uma BOX (Imagem) Oficial do Ubuntu Server<br>
```bash
#opções do comando mkdir: -v (verbose), .. (ponto/ponto - mover uma pasta para cima)
cd ..
mkdir -v Ubuntu2204
cd Ubuntu2204

#Criando o arquivo do Vagrantfile pré-configurado com a estrutura padrão

#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile), -m (minimal Vagrantfile will be created)
vagrant init -m

#editando o arquivo Vagrantfile
vim Vagrantfile

#deletando todo o conteúdo do arquivo
ESC dG (d=delete | G=end of file)
INSERT
```
```ruby
#Início da configuração da BOX (Imagem) do Vagrant indicando a maior versão ("2")
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
    #Configuração do Endereçamento Público IPv4 da BOX do Ubuntu Server do Vagrant
    #OBSERVAÇÃO IMPORTANTE: por padrão o Vagrant utiliza a primeira Interface de Rede em Modo NAT
    #para acessar via SSH a BOX do Ubuntu Server, quando configurado a Interface Pública do Vagrant
    #ele habilita a segunda Interface do VirtualBOX em Modo Bridge e configura o Endereço IPv4 Estático
    #verifique primeiro com o comando: ifconfig qual Interface de Rede do Hospedeiro que você vai usar
    #em modo Bridge
    web.vm.network "public_network", ip: "192.168.0.251", bridge: "enp3s0"
    #Configuração da Máquina Virtual do BOX do Ubuntu Server no VirtualBOX do Vagrant
    web.vm.provider "virtualbox" do |vb|
      #Configuração do nome da Máquina Virtual no VirtualBOX do Vagrant
      vb.name = "ubuntu-server-2204"
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
```bash
#salvar e sair do arquivo
ESC Shift :x <Enter>

#opção do comando vagrant: validade (validates your Vagrantfile)
vagrant validate

#opção do comando vagrant: up (starts and provisions the vagrant environment)
vagrant up

#opção do comando vagrant: ssh (connects to machine via SSH)
vagrant ssh

#opção do comando ssh: -p (port), -i (identity_file)
ssh -p 22 -i .vagrant/machines/webserver/virtualbox/private_key vagrant@192.168.0.251

#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
vagrant halt
vagrant status

#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
vagrant box list
```