#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 22/12/2022<br>
#Data de atualização: <br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Wondershare EdrawMax v11.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Wondershare EdrawMax v11.x no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Edraw Soft: https://www.edrawsoft.com/pt/<br>
Site do EdrawMax On-Line: https://www.edrawmax.com/online/pt/

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

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;

	Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean

#02_ Download do EdrawMax para o Linux Mint<br>

	Site do download: https://www.edrawsoft.com/pt/download-edrawmax.html
	Versão para: Debian, Ubuntu, Mint 64 bits: <Teste Grátis>
	Arquivo (download feito em 22/12/2022): edrawmax_11.5.6_en_x86_64.deb

#03_ Instalando o EdrawMax no Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: recomendo utilizar o Gerenciador de Instalação de Pacotes
	do Linux Mint: Gdeb, clicando duas vezes no arquivo: edrawmax_11.5.6_en_x86_64.deb
	Seguir os procedimentos na tela.

	OBSERVAÇÃO IMPORTANTE: teste feito no Linux Mint 21.1 Vera do instalador do pacote
	do EdrawMax via Gerenciador de Instalação Gdeb não funcionou corretamente, sendo
	necessário fazer a instalação via linha de comando, conforme abaixo:
	
	01_ Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
	02_ Digitar o comando: sudo dpkg -i edrawmax_11.*.deb;
	03_ Digitar a senha do seu usuário e aguardar a finalização da instalação.

#04_ Utilizando o EdrawMax On-Line via Navegaor

	_ Site do EdrawMax On-Line: https://www.edrawmax.com/online/pt/