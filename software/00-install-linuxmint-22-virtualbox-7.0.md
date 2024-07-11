#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 02/07/2024<br>
#Data de atualização: 11/07/2024<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 22 Wilma

[![Linux Mint 22](http://img.youtube.com/vi/N3VOFyWKsM/0.jpg)](https://www.youtube.com/watch?v=NN3VOFyWKsM "Linux Mint 22")

Link da vídeo aula: https://www.youtube.com/watch?v=NN3VOFyWKsM

#Lançamentos Oficiais do Linux Mint

31/01/2024 - Anúncio o Linux Mint 22 "Wilma"<br>
https://blog.linuxmint.com/?p=4639

01/04/2024 - Primeiras novidades do Linux Mint 22 "Wilma"<br>
https://blog.linuxmint.com/?p=4660

09/04/2024 - Repositório no Github do Linux Mint 22 "Wilma"<br>
https://blog.linuxmint.com/?p=4671

30/04/2024 - Primeiros Recursos do Linux Mnt 22 "Wilma"<br>
https://blog.linuxmint.com/?p=4675

03/06/2024 - Atualização dos Repositórios do Linux Mint 22 "Wilma"<br>
https://blog.linuxmint.com/?p=4719

01/07/2024 - Liberação do BETA do Linux Mint 22 "Wilma"<br>
https://blog.linuxmint.com/?paged=3

Novos Recursos do Linux Mint 22 "Wilma"<br>
https://www.linuxmint.com/rel_wilma_whatsnew.php

Informações da Versão do Linux Mint 22 "Wilma"<br>
https://www.linuxmint.com/rel_wilma.php

#Tipos de Ambientes Gráficos do Linux Mint<br>
Cinnamon: https://www.linuxmint.com/rel_vera_cinnamon.php<br>
Mate: https://www.linuxmint.com/rel_vera_mate.php<br>
XFCE: https://www.linuxmint.com/rel_vera_xfce.php.

#Versões baseadas da Distribuição Ubuntu<br>
Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa<br>
Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish<br>
Linux Mint 22.x e derivado do Ubuntu Desktop 24.04.x Noble Numbat

Primeira etapa: Download da ISO do Linux Mint

01. Link de download do Linux Mint 22 "Wilma" Cinnamon 64 Bits BETA:<BR>
Link direto: https://mirror.ufscar.br/mint-cd/testing/linuxmint-22-cinnamon-64bit-beta.iso<br>
Mirror: https://mirror.ufscar.br/mint-cd/testing/

Segunda etapa: Software para a gravação do Pen Drive Bootável

_ Rufus: https://rufus.ie/pt_BR/<br>
_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/<br>
_ Etcher: https://www.balena.io/etcher/<br>
_ UNetbootin: https://unetbootin.github.io/<br>
_ Ventoy: https://www.ventoy.net/en/index.html<br>
_ Linux Live USC Creator: https://www.linuxliveusb.com/<br>
_ Popsicle: https://github.com/pop-os/popsicle

Terceira etapa: Criação e Configuração da Máquina Virtual no Oracle VirtualBOX 7.0.x<br>
Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads

Quarta etapa: Criando a Máquina Virtual do Linux Mint no VirtualBox

	_ Ferramentas;
		<Novo>
	_ Nome da máquina virtual e Sistema Operacional:
		Nome: LinuxMint22
		Pasta (F): (deixar o padrão do sistema) 
		Imagem ISO:
			Outro
				/home/vaamonde/ISO/linuxmint-22-cinnamon-64bit-beta.iso
		Edição: (Default)
		Tipo: Linux
		Versão: Ubuntu (64-bit)
		Pular Instalação Desassistida: ON (Enable)
		<Próximo>
	_ Hardware:
		Memória Base: 4096MB
		Processadores: 2 CPU
		Habilitar EFI (SOs especiais apenas): OFF (Default)
		<Próximo>
	_ Disco Rígido Virtual:
		Criar um novo disco rígido virtual agora
			Tamanho do Disco: 50GB
		Pré-alocar Tamanho Total (F): Off (Default)
		Utilizar um disco rígido virtual existente: Off (Default)
		Não Acrescentar um Disco Rígido Virtual: Off (Default)
		<Próximo>
	_ Sumário
		<Finalizar>

Quinta etapa: Personalizando a Máquina Virtual do Linux Mint no VirtualBox

	_ Configurações da Máquina Virtual Linux (Propriedades/Configurações)
		_ Geral
			Avançado
				Área de Transferência Compartilhada: Bi-direcional
				Arrastar e Soltar: Bi-direcional
		_ Sistema
			Placa-Mãe
				Relógio da máquina retorna hora UTC: OFF (Desabilitado) 
			Processador
				Processadores: 02 CPUs
				Recursos Estendidos:
					Habilitar PAE/NX: ON (Habilitado)
					Habilitar VT-x/AMD-V Aninhado: ON (Habilitado)
		_ Monitor
			Tela
				Memória de Vídeo: 128MB
				Aceleração: Habilitar Aceleração 3D
		_ Rede
			Adaptador 1
				Habilitar Placa de Rede
				Conectado a: Placa em Modo Bridge
				Nome: (Interface padrão de acesso a Internet e Rede Local do Hospedeiro)
		<OK>

Sexta etapa: Iniciando a ISO do Linux Mint

	_ VM LinuxMint22: Iniciar

Sétima etapa: Iniciando a Instalação o Linux Mint

	_ Boot Inicial do Linux Mint 10 (dez segundos) inicia a instalação padrão.
		Parar o Boot: pressionar: Seta para Baixo para parar o Boot inicial
	_ Opções do Boot padrão do Linux Mint
		*Start Linux Mint 22 Cinnamon 64-Bit (Padrão)
		Start Linux Mint 22 Cinnamon 64-Bit (compatibility mode)
		OEM install (for manufacturers)
		Test memory
	
	_ Ícone Install Linux Mint
		Welcome
			Português do Brasil
			<Continuar>
		Layout do teclado
			Selecione o layout de seu teclado:
				Portuguese (Brazil)
			<Continuar>
		Codecs Multimídia
			Instalar codecs multimídia: ON (Habilitar)
			<Continuar>
		Tipo de instalação
			Apagar disco e reinstalar o Linux Mint: ON (Selecionado)
			<Instalar agora>
			<Continuar>
		Onde você está?
			Sao Paulo
			<Continuar>
		Quem é você?
			Seu nome: Robson Vaamonde
			Nome do seu computador: VirtualBox
			Escolha um nome de usuário: vaamonde
			Escolha uma senha: pti@2018
			Confirme sua senha: pti@2018
			Solicitar minha senha para entrar: ON (Selecionado)
			<Continuar>
	_ <Reiniciar agora>

	Please remove the installation medium, then press <ENTER>:
	Observação: Aguardar a reinicialização do sistema para se logar no Linux Mint.

Oitava etapa: Se logando pela primeira vez no Linux Mint

	_ Após a inicialização do Linux Mint, selecionar o usuário: Robson Vaamonde
	_ Digitar a senha do usuário: pti@2018 pressionar: <Enter>
	_ Aguardar a criação do perfil do usuário

Nona etapa: Atualização do Sistema Operacional Linux Mint

	_ Atualização do sistema utilizando o Relatório do Sistema;
		Instalar pacotes de idiomas.
	_ Atualização do sistema utilizando o MintUpdate.
		RECOMENDADO UTILIZAR PRIMEIRO O MINTUPDATE DEPOIS PARA SER FEITO VIA TERMINAL
	
	_ Atualização do sistema utilizando o Apt;
		Atalho do Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean
		sudo apt clean

		#Reinicializar o Sistema
		sudo reboot

Décima etapa: Instalação dos Convidados do VirtualBOX no Linux Mint

	_ Após a atualização do Linux Mint, clicar nas opções do VirtualBOX:
		Dispositivos
			Inserir imagem de CD dos Adicionais de Convidados
	_ Na mensagem de: Está mídia contém um software de inicialização automática.
		Clique em: <Executar>
	_ Na tela de: A autenticação é necessária para executar /bin/sh como o superusuário
		Digite a sua senha e clique em: <Autenticar>
	_ Na mensagem: Press Return to close this Windows...
		Pressione: <Enter>
	_ Após a instalação dos convidados clique em:
		Menu
			Sair
				Reiniciar

Décima primeira etapa: Configuração da integração da Área de Transferência Compartilhada

	_ Após a reinicialização do Linux Mint teste a opção de Maximizar do VirtualBOX

	_ Atalho do Terminal: Ctrl + Alt + T
		#opção do comando uname: -r (kernel-release)
		#opções do comando usermod: -a (append), -G (groups), $USER (variável de ambiente do nome do usuário)
		sudo apt update
		sudo apt install dkms build-essential linux-headers-generic linux-headers-$(uname -r)
		sudo usermod -aG vboxsf $USER
		sudo reboot