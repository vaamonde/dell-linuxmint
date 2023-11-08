#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 05/02/2023<br>
#Data de atualização: 08/02/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Habilitar o suporte ao Ubuntu Pro no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Habilitar o suporte ao Ubuntu Pro no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

Site Oficial do Ubuntu Pro: https://ubuntu.com/pro<br>
Site Oficial dos Procedimentos do Ubuntu Pro: https://ubuntu.com/pro/tutorial<br>
Site Oficial do Ubuntu One: https://login.ubuntu.com/<br>
Site Oficial do Ubuntu CVE: https://ubuntu.com/security/cves<br>
Site Oficial do Ubuntu Membership: https://wiki.ubuntu.com/Membership

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

#02_ Criando sua conta no Ubuntu One para registrar o Ubuntu Pro<br>

	Acesse o site: https://login.ubuntu.com/
	Clique em: I don’t have an Ubuntu One account
	Preencha os campos: 
		Please type your email;
		Full name;
		Username;
		Choose password;
		Re-type password;
		Marque a opção: I have read and accept the Ubuntu One terms of service, data privacy policy and Canonical's SSO privacy notice.
		Clique em: <Create account>
	
	Finalize os procedimentos acessando seu email para ativar a sua conta no Ubuntu One.

#03_ Criando uma Assinatura do Ubuntu Pro Free para uso pessoal<br>

	Acesse o site: https://ubuntu.com/pro/dashboard
	Faça a autenticação com a sua conta criada no Ubuntu One;
	Será mostrado no campo Free Personal Token o seu token;
	Copia o seu Token no campo: Token.

#04_ Verificando a versão do Ubuntu Advantage Tools no Linux Mint<br>

	OBSERVAÇÃO IMPORTANTE: a Canonical recomenda que a versão do Ubuntu Pro Client seja 
	>= 27.13.x

	Terminal: Ctrl + Alt + T

	sudo pro --version

	OBSERVAÇÃO IMPORTANTE: caso o Ubuntu Pro Client não esteja instalado no seu Desktop,
	executar o procedimento abaixo de instalação.

	sudo apt update
	sudo apt upgrade
	sudo apt install ubuntu-advantage-tools
	sudo pro --version

#05_ Ativando a sua Assinatura do Ubuntu Pro no Linux Mint<br>

	sudo pro attach [COLAR O SEU TOKEN]
	sudo apt update

#06_ Verificando os repositório de origem das atualizações no Linux Mint<br>

	sudo pro status
	sudo pro security-status
	sudo pro security-status --esm-apps
	sudo pro fix CVE-2023-23518

#07_ https://learnubuntu.com/use-ubuntu-pro/