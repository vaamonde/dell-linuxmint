#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 29/06/2022<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do Tilix no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Site Oficial do Terminal Tilix: https://gnunn1.github.io/tilix-web/<br>
Site Oficial do Oh My Zsh: https://ohmyz.sh/<br>
Site Oficial das Fontes Nerd Fonts: https://www.nerdfonts.com/font-downloads

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

#02_ Instalando o Tilix no Linux Mint<br>

	sudo apt install tilix

#03_ Instalando a Fonte Hack Nerd Fonts no Linux Mint<Br>

	#opção do comando mkdir: -v (verbose), ~ ()
	#opção do comando fc-cache: -f (Force up-to-date cache files), -v (Display status)
	mkdir -v ~/.local/share/fonts/Hack
	cd  ~/.local/share/fonts/Hack
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
	unzip Hack.zip
	fc-cache -f -v

#04_ Configurando o Tilix como Terminal Padrão no Linux Mint<br>

	Menu
		Aplicativos de Preferenciais
			Terminal
				Tilix

#05_ Executando o Tilix no Linux Mint<br>

	Atalho: Ctrl+Alt+T

#06_ Customização Básica do Tilix no Linux Mint<br>

	Menu
		Preferências
			Aparência
				Usar abas em vez da barra lateral (necessário reiniciar aplicação)
			Padrão
				Geral
					Fonte Personalizada: Yes
						Hack Nerd Font Mono Bold
						Tamanho: 16
				Color
					Esquemas de Cores: Monokai Dark
					Transparência: Aumentar um Pouco

#07_ Instalando o Zsh (Z Shell) e Oh My Zsh no Linux Mint<br>

	sudo apt install zsh
	zsh
		2
		exit

	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
		Do you want to change your default shell to zsh? [Y/n] Y <Enter>
		Password: <Enter>

#08_ Instalação dos Plugins e Temas do ZSH e do On My Zsh no Linux Mint<br>

	Link de referência: https://github.com/zsh-users/zsh-syntax-highlighting
	Link de referência FZF: https://github.com/junegunn/fzf.git

	#Instalação do Plugin Highlighting do ZSH
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	
	#Instalação do Plugin FZF do ZSH
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
		Do you want to enable fuzzy auto-completion? ([y]/n) y <Enter>
		Do you want to enable key bindings? ([y]/n) y <Enter>
		Do you want to update your shell configuration files? ([y]/n) y <Enter>

	#Instalação do Plugin Zsh-AutoSuggestions do ZSH
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
	
	#Instalação do Plugin K do ZSH
	git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
	
	#Instalação do Tema PowerLevel10
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

09_ Editando o arquivo de configuração do ZSHRC no Linux Mint<br>

	vim ~/.zshrc
		ZSH_THEME="powerlevel10k/powerlevel10k"
		POWERLEVEL10K_MODE="nerdfont-complete"
		plugins=(
			git
			zsh-syntax-highlighting
			fzf
			zsh-autosuggestions
			k
		)

#10_ Personalizando o Tema Powerlevel10k

	#abrir um novo terminal para iniciar as configurações
	Ctrl+Alt+t
		Does this look like a diamond (rotated square)?
			Choice [ynq]: y
		Does this look like a lock?
			Choice [ynq]: y
		Does this look like a Debian logo (swirl/spiral)?
			Choice [ynq]: y
		Do all these icons fit between the crosses?
			Choice [ynq]: y
		(2) Classic
			Choice [1234rq]: 2
		Character Set: (1) Unicode
			Choice [1234rq]: 1
		Prompt Color: (4) Darkest.
			Choice [1234rq]: 4
		Show current time?: (3)  12-hour format.
			Choice [123rq]: 3
		Prompt Separators: (3)  Slanted.
			Choice [123rq]: 3
		Prompt Heads: (1)  Sharp.
			Choice [123rq]: 1
		Prompt Tails: (1)  Flat.
			Choice [123rq]: 1
		Prompt Height: (2)  Two lines.
			Choice [123rq]: 2
		Prompt Connection: (1)  Disconnected.
			Choice [123rq]: 1
		Prompt Frame: (1)  No frame.
			Choice [123rq]: 1
		Prompt Spacing: 1)  Compact.
			Choice [123rq]: 1
		Icons: (2)  Many icons.
			Choice [123rq]: 2
		Prompt Flow: (2)  Fluent.
			Choice [123rq]: 2
		Enable Transient Prompt? (n)  No.
			Choice [n]: n

#11_ Configurando o Visual Studio Code com suporte a Fonte Hack Nerd Font<br>

	Gerenciar
		Configurações
			terminal.integrated.fontFamily
				Hack Nerd Font