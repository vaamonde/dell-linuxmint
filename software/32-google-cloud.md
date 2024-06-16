#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 20/06/2023<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64

#Instalação e Configuração do Gcloud Cli no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação e Configuração do Gcloud Cli no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64

[![Google Cloud](http://img.youtube.com/vi//0.jpg)]( "Google Cloud")

Link da vídeo aula: 

Site Oficial do Google Cloud: https://cloud.google.com/?hl=pt-br<br>
Site Oficial do Google Cli: https://cloud.google.com/sdk/docs/install?hl=pt-br

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
	#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
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

#02_ Criando um Conta no Google Cloud Free (Gratuita)<br>

	#OBSERVAÇÃO IMPORTANTE: para fazer a assinatura Gratuita do Google Cloud é necessário a 
	#utilização de um Cartão de Crédito Internacional, na conta gratuita não será cobrado 
	#nenhum  valor no seu cartão, apenas se você ultrapassar os limites da conta.

OBSERVAÇÃO: para utilizar o Google Cloud é indicado utilizar uma conta do Gmail.

	Acesse o site: https://cloud.google.com/?hl=pt-br
		Clique em: <Comece gratuitamente>
		Clique em: <Início gratuito>


#03_ Se autenticando no Google Cloud Free (Gratuita)<br>

	Acesse a URL: 
	<Entra>

	Escolha uma conta: 
		Selecione sua conta: SUA_CONTA_CADASTRADA
		Insira sua senha: SUA_SENHA_DA_CONTA
		<Entrar>

#04_ Criando uma Máquina Virtual no Google Cloud Free (Gratuita)<br>

#05_ Copiando o Par de Chaves para a nova Localização e alterando a sua permissão<br>

	Clique em: Arquivos (Nemo) acesse a Pasta: Download
	Clique como Botão Direito do Mouse e selecione: Abrir no Terminal

	Terminal: Ctrl + Alt + T
	#opção do comando cp: -v (verbose)
	#opção do comando chmod: -v (verbose), 0600 (User: RW-,Group: ---,Other: ---)
	cp -v WebServerGoogle.pem ../.ssh
	chmod -v 0600 ../.ssh/WebServerGoogle.pem

#06_ Se conectando na Instância do Ubuntu Server no Google Cloud<br>

	Terminal: Ctrl + Alt + T	
	Cliente SSH
		#opção do comando ssh: -i (identity_file)
		ssh -i "/home/vaamonde/.ssh/WebServerGoogle.pem" vaamonde@ENDEREÇO_IPV4_GOOGLE_CLOUD

	OBSERVAÇÃO IMPORTANTE: Caso acontece a falha de: SSH Too Many Authentication Failures, digite a opção: 
	-o IdentitiesOnly=yes depois da chave de autenticação do SSH.
	
		#opção do comando ssh: -i (identity_file), -o (options)
		ssh -i "/home/vaamonde/.ssh/WebServerGoogle.pem" -o IdentitiesOnly=yes vaamonde@ENDEREÇO_IPV4_GOOGLE_CLOUD

#07_ Instalando o Gcloud Cli no Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
	#instalando as principais dependências do Gcloud Cli
	sudo apt update
	sudo apt install ca-certificates curl apt-transport-https lsb-release gnupg unzip git vim python2 python3

#08_ Autenticando o Gcloud Cli no Linux Mint<br>


#09_ Comandos básicos do Gcloud Cli no Linux Mint<br>
