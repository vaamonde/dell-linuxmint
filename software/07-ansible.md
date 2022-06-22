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

#Instalação do Ansible no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Site Oficial do Ansible: https://www.ansible.com/

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

#02_ Instalando as Dependências do Ansible no Linux Mint<br>

	sudo apt install software-properties-common

#03_ Adicionando o PPA Oficial do Ansible no Linux Mint<br>

	sudo add-apt-repository ppa:ansible/ansible

#04_ Instalando o Ansible no Linux Mint<br>

	sudo apt update
	sudo apt install ansible vim git python2 python3

#05_ Verificando a Versão do Ansible<br>

	ansible --version

#06_ Criando o Arquivo de Inventário dos Hosts e Log do Ansible no Linux Mint<br>

	sudo vim /etc/ansible/hosts
	ESC dG (d=delete | G=end of file)
	INSERT

	#Bloco de configuração dos Hosts pertencentes ao grupo 'servers'
	[servers]
	ubuntu2204 ansible_host=192.168.0.250
	webserver ansible_host=192.168.0.250 ansible_user=root

	#Bloco de configuração das Variáveis de todos os Hosts
	[all:vars]
	ansible_python_interpreter=/usr/bin/python3
	
	#opção do comando ansible-inventory: list (Output all hosts info, works as inventory script), y (yaml)
	ansible-inventory --list -y

	sudo vim /etc/ansible/ansible.cfg
	ESC dG (d=delete | G=end of file)
	INSERT

	#Configuração do Bloco Padrão Global do Ansible
	[defaults]
	log_path=/var/log/ansible.log

	#Criação do arquivo de Log do Ansible
	sudo touch /var/log/ansible.log
	
	#opção do comando chmod: -v (verbose), 666 (User=RW-,Group=RW-Other=RW-)
	sudo chmod -v 666 /var/log/ansible.log

#07_ Criando o Par de Chaves Pública/Privada do Host Remoto no Linux Mint<br>

	#Acessando remotamente o servidor Ubuntu
	ssh vaamonde@192.168.0.250
		Are you sure you want to continue connecting (yes/no/[fingerprint])? yes <Enter>
	
	#Permitindo o usuário Root se logar remotamente via SSH
	sudo vim /etc/ssh/sshd_config
		PermitiRootLogin yes
	sudo systemctl restart ssh
	
	#Permitindo o usuário Root se logar via Terminal e Remotamente via SSH
	sudo passwd root
		New password: pti@2018
		Retype new password: pti@2018 

	#Gerando o Par de Chaves Pública/Privada no Linux Mint
	ssh-keygen
		Enter file in which to save the key (/home/vaamonde/.ssh/id_rsa): <Enter>
		Enter passphrase (empty for no passphrase): <Enter>
		Enter same passphrase again: <Enter>
	
	#Copiando a Chave Pública para os Usuários do Ubuntu Server
	ssh-copy-id vaamonde@192.168.0.250
	ssh-copy-id root@192.168.0.250

#08_ Testando a conexão do Ansible com os Hosts Remotos no Linux Mint<br>

	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/ping_module.html
	#opções do comando ansible: -i (inventory), all (all hosts inventory), -m (module-name), -u (user), -k (ask-pass)
	ansible localhost -m ping
	ansible -i hosts all -m ping
	ansible -i hosts ubuntu2204 -m ping -u vaamonde -k
	ansible -i hosts webserver -m ping

#09_ Executando comandos no Host Remoto AD-HOC com o Módulo Shell do Ansible no Linux Mint<br>

	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/shell_module.html
	#opções do comando ansible: -i (inventory), -m (module-name), -a (args), -u (user), -k (ask-pass)
	ansible -i hosts ubuntu2204 -m shell -a "cat /etc/os-release" -u vaamonde -k
	ansible -i hosts ubuntu2204 -m shell -a "free -h" -u vaamonde -k
	ansible -i hosts ubuntu2204 -m shell -a "df -h" -u vaamonde -k

#10_ Executando comandos no Host Remoto Ad-HOC com o Módulo Apt do Ansible no Linux Mint<br>

	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html
	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/shell_module.html
	#opções do comando ansible: -i hosts, -m (module-name), -a (args), update_cache (equivalent of apt-get update) name (package names), state (package state), -b (become), -u (user), -k (ask-become-pass)
	ansible -i hosts ubuntu2204 -m apt -a "update_cache=yes name=python2 state=present" -b -u vaamonde -K
	ansible -i hosts webserver -m shell -a "apt list python2"

#11_ Executando comandos no Host Remoto Ad-HOC com o Módulo Git do Ansible no Linux Mint<br>

	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html
	#Link de referência: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/shell_module.html
	#opções do comando ansible: -i hosts, -m (module-name), -a (args), update_cache (equivalent of apt-get update) name (package names), state (package state), -b (become)
	ansible -i hosts webserver -m git -a "repo=https://github.com/vaamonde/dell-linuxmint /home/vaamonde/linuxmint" -b
	ansible -i hosts webserver -m shell -a "ls -lh /home/vaamonde"

#11_ Criando um Playbook Básico para Atualizar o Ubuntu Server 22.04<br>

	sudo vim /etc/ansible/update.yaml

    #Iniciando a Playbook do Ansible, obrigatório iniciar com --- (três traços)
    #OBSERVAÇÃO IMPORTANTE: Recuo adequado usando ESPAÇO e NÃO TABS (tabulador)
    ---
    #Nome do Playbook de atualização do Servidor Ubuntu.
    - name: Atualização do Servidor Ubuntu
      #Os hosts gerenciados para executar as tasks.
      hosts: webserver
      #Escalação de privilégios nos Playbooks
      become: yes
      become_user: root
      #As operações a serem executadas chamando os módulos e passando as opções necessárias.
      tasks:
              #Nome da ação de atualizar as listas do Apt
              - name: Atualizando o Cache do Sources.List do Apt
                #Utilização do módulos Apt igual ao comando: apt update
                apt:
                  update_cache: yes
                  force_apt_get: yes
                  cache_valid_time: 3600

              #Nome da ação de atualizar os software do Servidor
              - name: Atualizando todos os Software do Servidor
                #Utilização do módulos Apt igual ao comando: apt upgrade
                apt:
                  upgrade: dist
                  force_apt_get: yes

	#opção do comando ansible-playbook: -i (inventory), -v (verbose mode -vvv for more, -vvvv to enable connection debugging)
	ansible-playbook -i hosts update.yaml --syntax-check
	ansible-playbook -i hosts update.yaml
	ansible-playbook -i hosts update.yaml -vvv

#11_ Criando um Playbook Básico para Instalar o Apache2 no Ubuntu Server 22.04<br>

	sudo vim /etc/ansible/apache2.yaml

    ---
    - hosts: webserver
      become: yes
      become_user: root
      tasks:
              - name: Instalando o Apache2 via Ansible no Ubuntu Server 22.04
                apt:
                  update_cache: yes
                  name: apache2

	#opção do comando ansible-playbook: -i (inventory), -v (verbose mode -vvv for more, -vvvv to enable connection debugging)
	ansible-playbook -i hosts apache2.yaml --syntax-check
	ansible-playbook -i hosts apache2.yaml
	ansible-playbook -i hosts apache2.yaml -vvv

	#opções do comando ansible: -i (inventory), -m (module-name), -a (args)
	ansible -i hosts webserver -m shell -a "apt list apache2"

	#Testando o acesso remoto ao servidor Apache2 instalado no Ubuntu Server 22.04	
	http://192.168.0.250
