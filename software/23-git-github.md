#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/01/2023<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Git 2.x integrado no Github no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Git 2.x integrado no Github no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![Git e Github](http://img.youtube.com/vi/JDCYyjbrJu0/0.jpg)](https://www.youtube.com/watch?v=JDCYyjbrJu0 "Git e Github")

Link da vídeo aula: https://www.youtube.com/watch?v=JDCYyjbrJu0

Site Oficial do Git: https://git-scm.com/<br>
Site Oficial do Github: https://github.com/<br>
Site Oficial do Gitlab: https://about.gitlab.com/<br>
Site Oficial do Markdown Guide: https://www.markdownguide.org/

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

#02_ Instalando o Git e suas Dependências no Linux Mint<br>

	sudo apt update
	sudo apt install git vim python2 python3

#03_ Verificando a Versão do Git instalado no Linux Mint<br>

	#opção do comando git: --vervison (version)
	git --version

#04_ Configurações Básicas do Git Localmente no Linux Mint<br>
	
	#Seu nome completo que vai ser utilizado em qualquer commit (confirmação) recém-criado.
	git config --global user.name "Robson Vaamonde"
	
	#Seu endereço de e-mail que vai ser utilizado em qualquer commit (confirmação) recém-criado.
	#DICA: recomendo você usar o seu endereço de email utilizado na autenticação do Github
	git config --global user.email boraparapratica@gmail.com
	
	#Seu editor de texto padrão para todos os commit (confirmação) e tags.
	git config --global core.editor vim
	
	#Seu software de mesclagem que vai ser utilizado pelo git-mergetool para comparar arquivos.
	git config --global merge.tool vimdiff
	
	#Habilitando o uso de cores do comando git.
	git config --global color.ui true
	
	#Listando todas as variáveis definidas no arquivo de configuração do Git, junto com seus valores.
	git config --list
		Q (quit) para sair
	
	#Localização do arquivo de configuração do Git no Linunx Mint.
	#opção do comando ls: -l (long listing), -h (human-readable), -a (all), ~ (directory home)
	ls -lha ~/.gitconfig
	cat ~/.gitconfig

#05_ Criando uma conta de acesso ao Github<br>

	Link: https://github.com

	_01: no canto superior do site clique em: Sing up;
	_02: no campo: Enter your email - digite o seu email para o cadastro e clique em: <Continue>
	_03: no campo: Create a password - digite a sua senha e clique em: <Continue>
	_04: no campo: Enter a username - digite o nome do seu usuário do Github <Continue>
	
	OBSERVAÇÃO IMPORTANTE: o nome de usuário no Github será utilizado como Repositório Base, 
	por exemplo o Repositório Base do Projeto Bora para Prática é: https://github.com/vaamonde
	(vaamonde), recomendo sempre criar o seu usuário tudo em minúscula, sem acentuação, sem
	espaço, nome que seja legível, fácil entendimento pois esse usuário será utilizado como 
	referência para o seu projeto.
	
	_05: no campo: Would you like to receive product updates and announcements via emails? - digite n e clique em? <Continue>
	_06: na tela de: Verify your account: clique em: <Verificar>
	_07: selecione depois nos quadros os dois objetivos idênticos e clique em: <Create account>
	_08: no campo: You're almost done! digite no campo: Enter code o código enviado para o seu email.
	_09: na tela de: Welcome to Github clique em: <Skip personalization>

#06_ Criando nosso primeiro Repositório Remoto no Github<br>

	New Repository
		Owner: rsvaamonde
		Repository name: devops
		Description: Básico de DevOps com Git e Github no Linux Mint
		Check: Public
		Initialize this repository with:
			Check: Add a README file
			Add .gitignore: None
		Choose a license
			Add a license: MIT License
	<Create repository>

#07_ Personalizando o nosso primeiro Repositório Remoto no Github<br>

	About
		Edit repository details
			Description: (Emoji https://gist.github.com/rxaviers/7360908) 
			Website: http://www.boraparapratica.com.br
			Topics: git github bash shell linux linux-mint
			Include in the home page
				Check: Releases
				Check: Packages
				Check: Environments
	<Save changes>

#08_ Criando um arquivo de Shell Script no Repositório Remoto do Github<br>

	<Add file>
		Create new file
			devops/teste01.sh
				Edit new file: 
					#!/bin/bash
					echo "Criando nosso primeiro script em Shell"
				Preview
				Commit new file: Criando nosso primeiro script em Shell
				Add and optional: Aprendendo o básico em Shell
				Check: Commit directly to the master branch
	<Commit new file>

#09_ Enviando um arquivo de Shell Script no Repositório Remoto do Github<br>

	<Add file>
		Upload files
			Or choose your files: 
				Envio de arquivos: teste02.sh <Abrir>
			Commit changes: Upload do nosso segundo script em Shell
			Add and optional: Upload de arquivos no Github
			Check: Commit directly to the master branch
	<Commit changes>

#10_ Enviando um diretório de Shell Script no Repositório Remoto do Github<br>

	<Add file>
		Upload files
			Drag files here to add them to your repository:
				conf/ (arrastar e soltar)
			Commit changes: Enviando um diretório de configuração
			Add and optional: Envio do diretório de configuração no Github
			Check: Commit directly to the master branch
	<Commit changes>

#11_ Criando um diretório e arquivo de Shell Script no Repositório Remoto do Github<br

	<Add file>
		Create new file
			devops/install/teste04.sh
				Edit new file: 
					#!/bin/bash
					echo "Criando nosso quarto script em Shell"
					echo "A data de hoje é: $(date)"
				Preview
				Commit new file: Criando nosso quarto script em Shell
				Add and optional: Aprendendo o básico em Shell
				Check: Commit directly to the master branch
	<Commit new file>

#12_ Criando um Token para acesso remoto utilizando o comando Git no Repositório Remoto do Github<br

	Link da geração do Token: https://github.com/settings/tokens

	Settings
		Developer settings
			Personal access tokens
				Tokens (classic)
					Generate new token (classic)
						Confirm access: <Confirm>
					New personal access token (classic)
						Note: rsvaamonde
						Expiration: No expiration
						Select scopes
							Select All Options
					<Generate token>
				Copiar o Token no ícone: copiar para área de transferência e salvar.

#13_ Utilizando o comando Git no no Linux Mint e sincronizando com o nosso Repositório Remoto no Github<br>

	#clonando um Repositório Remoto do Github Localmente
	git clone https://github.com/rsvaamonde/devops

	#opção do comando ls: -l (list), -h (human-readable)
	ls -lh
	cd devops/

	#criando um arquivo dentro do Repositório Local
	echo "#!/bin/bash" > teste05.sh
	echo "#Teste de versionamento utilizando o Git" >> teste05.sh
	cat teste05.sh

	#vendo o status dos arquivos no Repositório Local
	git status

	#adicionando o rastreamento de versionamento do arquivo no Repositório Local
	git add teste05.sh
	git status

	#confirmando (commits) a modificação do arquivo no Repositório Local
	git commit -m "Criação do Arquivo em Shell Script teste05.sh"
	git status

	#listando vários tipos de objetos (blobs, trees, tags e commits) no Repositório Local
	git show
		Q (quit) para sair

	#mostrando os logs de confirmação (commits) no Repositório Local
	git log
		Q (quit) para sair

	#enviando o novo arquivo confirmado (commit) do Repositório Local para o Repositório Remoto do Github
	#OBSERVAÇÃO IMPORTANTE: copiar e colocar o Token de acesso no campo login do comando git push
	git push

	#Editando arquivo, criando diretório, fazendo Upload de arquivo e diretório no Repositório Remoto do Github
	Editar o arquivo: README.md
	Editar o arquivo: install/teste04.sh
	Editar o arquivo: teste05.sh

	#atualizando o Repositório Local com as mudanças do Repositório Remoto do Github
	git pull

	#editando um arquivo localmente e enviando as confirmações (commit) para o Repositório Remoto do Github
	vim README.md
	git add * ou git add . (recomendado)
	git commit -m "Alteração do arquivo README.md"
	git status
	git show
	git log
	git push (utilizar o seu Token criado)

	#criando um diretório e arquivo no Repositório Local e enviando as confirmando (commit) para o Repositório Remoto do Github
	mkdir -v teste06
	cd teste06
		echo "#Teste de versionamento utilizando o Git" > teste06.sh
		cd ..
	git add * ou git add .
	git commit -m "Criação do Diretório teste06 e do Arquivo teste06.sh"
	git status
	git show
	git log
	git push (utilizar o seu Token criado)

	#criando um novo Repositório Local com o Git e enviando as confirmações (commit) para o Repositório Remoto do Github
	mkdir -v vaamonde
	cd vaamonde
		
		#Crie um repositório Git vazio ou reinicie um existente
		git init
		ls -lha

		#OBSERVAÇÃO IMPORTANTE: não foi comentado no vídeo, mais por padrão no Linux Mint
		todo repositório novo criado está no Branch: MASTER, muitas vezes recomendamos que
		o Branch padrão seja o: MAIN
		
		#Troque de ramificação ou restaure os arquivos da árvore de trabalho
		#opção do comando git checkout: -b (new_branch)
		git checkout -b main
		git checkout -b master

		echo "#Teste de versionamento utilizando o Git" > teste.sh
		git add * ou git add . (recomendado)
		
		#opção do comando git commit: -m (message)
		git commit -m "Criação do arquivo teste.sh"
		git status
		git show
		git log
		
		OBSERVAÇÃO IMPORTANTE: antigamente o Github permitia fazer o comando git push se o 
		diretório remoto não existir no Github ele fazer a criação, agora esse recurso não 
		funciona, sendo necessário fazer a criação do repositório remoto de forma simples 
		e depois adicionar no remoto local a referência.
		
		git remote add origin https://github.com/rsvaamonde/vaamonde.git
		#opção do comando git push: -u (set-upstream)
		git push -u origin master

	#Automatizando as mudanças do Repositório Local com o Repositório Remoto do Github no bash/shell
	git pull && git add . && git commit -m "Atualização" && git push