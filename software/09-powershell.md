#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 07/01/2023<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Microsoft Powershell no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Microsoft Powershell no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do PowerShell: https://docs.microsoft.com/pt-br/powershell/scripting/overview?view=powershell-7.2<br>
Site Oficial do .NET SDK: https://docs.microsoft.com/pt-br/dotnet/core/sdk<br>
Site Oficial do .NET Runtime: https://docs.microsoft.com/pt-br/dotnet/framework/get-started/

Documentação do PowerShell: https://docs.microsoft.com/pt-br/powershell/scripting/install/install-ubuntu?view=powershell-7.2<br>
Documentação do .NET SDK e Runtime: https://docs.microsoft.com/pt-br/dotnet/core/install/linux-ubuntu#2004-

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
	OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release

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

#02_ Instalando as Dependências do PowerShell e do .NET SDK e Runtime no Linux Mint<br>

	#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 20.x
	sudo apt install apt-transport-https software-properties-common libc6 libgcc1 \
	libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g vim git python2 python3

	#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 21.x
	sudo apt install apt-transport-https software-properties-common libc6 libgcc-s1 \
	libgssapi-krb5-2 libicu70 libssl1.1 libstdc++6 zlib1g vim git python2 python3

#03_ Baixando o repositório oficial do PowerShell e do .NET SDK e Runtime no Linux Mint<br>
	
	#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 20.x
	#opção do comando wget: -q (quiet)
	wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

	#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 21.x
	#opção do comando wget: -q (quiet)
	wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb

#04_ Instalando o repositório oficial do PowerShell e do .NET SDK e Runtime no Linux Mint<br>
	
	#opção do comando dpkg: -i (install packet)
	sudo dpkg -i packages-microsoft-prod.deb

#05_ Atualizando as Lista do Apt com os novos repositórios do Powershell no Linux Mint<br>
	
	sudo apt update

#06_ Instalando o PowerShell, .NET SDK e Runtime no Linux Mint<br>

	sudo apt install powershell dotnet-sdk-7.0 aspnetcore-runtime-7.0

#07_ Rodando o PowerShell no Linux Mint<br>
	
	pwsh

#08_ Utilizando os comandos Básicos do PowerShell no Linux Mint<br>

	Get-Date		- informações de data e hora do linux
	Get-Host		- informações detalhadas do PowerShell
	Get-Location	- informações da localização (Path)
	Get-PSDrive		- informações do Hard Disk
	Get-Process		- informações de processos
	Get-Uptime		- informações do tempo de uso do linux
	Get-Command		- lista todos os comandos que estão disponíveis
	Get-Module		- lista todos os módulos que estão disponíveis
	Get-History		- imprimir todo o histórico de comandos do PowerShell
	dir ou ls 		- lista o conteúdo do diretório
	exit			- sair do PowerShell