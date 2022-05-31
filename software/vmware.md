#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 31/05/2022<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do Docker no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#01_ Atualização do Sistema Operacional Linux Mint<br>

	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

#02_ Download do VMware Workstation Pro 16 (Build 16.2.3)<br>

	Link: https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
	Versão: Workstation 16 Pro for Linux

#03_ Alterando as Permissões de Execução do Binário do VMware Workstation Por<br>

	01_ Acessar o diretório de download;
	02_ Botão direito do mouse no binário do VMware;
	03_ Selecionar o opção: Propriedade;
	04_ Acessar a aba: Permissões;
	05_ Clicar na opção: Permitir execução do arquivo como um programa.
	<Fechar>

#04_ Instalando o VMware Workstation Pro no Linux Mint<br>

	01_ Nas pasta de download, clicar com o botão esquerdo do mouse e selecionar: Abrir no Terminal;
	02_ Digitar o comando: sudo ./VMware-Workstation-Full-16.2.3-19376536.x86_64.bundle
	03_ Digitar a senha do seu usuário e aguardar a finalização da instalação.
