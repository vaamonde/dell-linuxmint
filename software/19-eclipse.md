#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 14/01/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Eclipse IDE e OpenJDK/JRE 17.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação doEclipse IDE e OpenJDK/JRE 17.x no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Eclipse: https://www.eclipse.org/downloads/<br>
Site Oficial do OpenJDK: https://openjdk.org/<br>
Site Oficial do Java: https://www.java.com/pt-BR/

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

#02_ Instalando as Dependências do Eclipse IDE no Linux Mint<br>

	sudo apt install git vim openjdk-17-jdk openjdk-17-jre software-properties-common

#03_ Verificando as Versões do Java instalado no Linux Mint<br>

	#opção do comando grep: -i (ignore-case)
	sudo java -version
	sudo apt list --installed | grep -i openjdk
	sudo update-alternatives --list java

#04_ Configurando o Versão do Java Padrão no Linux Mint<br>

	#OBSERVAÇÃO IMPORTANTE: cuidado com a versão do Java que você for utilizar no seu
	projeto, versões diferentes pode causar falha de abertura do projeto ou erro na 
	hora de executar a compilação e criação do arquivo WAN ou JAR.
	sudo update-alternatives --config java

#04_ Download do Eclipse IDE no Linux Mint<br>

	Link do download: https://www.eclipse.org/downloads/packages/
	Versão do Eclipse: Eclipse IDE for Enterprise Java and Web Developers
		Linux x86_64: eclipse-jee-2022-12-R-linux-gtk-x86_64.tar.gz (atualizado em 14/01/2023)

#05_ Descompactar o Arquivo Zipado do Eclipse IDE no Linux Mint<br>

	_01 acessar o diretório Download;
	_02 clicar com o botão direito do mouse no arquivo: eclipse-jee-2022-12-R-linux-gtk-x86_64.tar.gz
	_03 selecionar a opção: Extrair aqui

#06_ Executando o Eclipse IDE no Linux Mint<br>

	_01 acessar o diretório: eclipse
	_02 executar o aplicativo (clicando duas vezes): eclipse
	_03 

#08_ Configuração Básica do Eclipse IDE no Linux Mint<br>

#09_ Executando uma Aplicação JAVA desenvolvido na Eclipse IDE no Linux Mint
