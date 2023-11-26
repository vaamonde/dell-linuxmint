#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 26/11/2023<br>
#Versão: 0.08<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do VMware Workstation no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do VMware Workstation no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![VMware Workstation](http://img.youtube.com/vi/Uv2mebfheaI/0.jpg)](https://www.youtube.com/watch?v=Uv2mebfheaI "VMware Workstation")

Link da vídeo aula: https://www.youtube.com/watch?v=Uv2mebfheaI

Site Oficial do VMware Workstation: https://www.vmware.com/br/products/workstation-pro.html<br>
Site Oficial do VMware Store: https://store-us.vmware.com/vmware-workstation-17-pro-5709912600.html

#Tecnologias de Virtualização de Processadores AMD e Intel<br>

	vmx....: Intel VT-x, suporte a virtualização ativada na BIOS.
	svm....: AMD SVM, suporte a virtualização ativada na BIOS.

#AES dos Processadores da AMD e Intel<br>

	aes....: Aplicativos que executam criptografia e descriptografia usando o Advanced
	Encryption Standard em processadores Intel e AMD.

#Flags dos Processadores da Intel<br>

	ept.....: Suporte de tabela de páginas estendidas da Intel habilitado para tornar
	mais rápida a emulação de tabelas de páginas de convidados.
	vpid....: ID do processador virtual da Intel. Faça descargas de TLB caras
	desnecessárias quando alternar o contexto entre os convidados.
	vnmi....: O Intel Virtual NMI ajuda com eventos de interrupção selecionados em 
	convidados.
	tpr_shadow e flexpriority..: Recurso da Intel que reduz as chamadas para o
	hypervisor ao acessar o Registro de prioridade de tarefas, o que ajuda na execução
	de determinados tipos de convidados do SMP.

#Flags dos Processadores da AMD<br>

	npt...........: Tabelas de Páginas Aninhadas AMD, semelhantes ao Intel EPT.
	lbrv..........: Suporte de virtualização da AMD LBR.
	svm_lock......: MSR de bloqueio AMD SVM.
	nrip_save.....: AMD SVM next_rip salvar.
	tsc_scale.....: Suporte de dimensionamento do AMD TSC.
	vmcb_clean....: Suporte para bits limpos AMD VMCB.
	flushbyasid...: Suporte para AMD flush-by-ASID.
	decodeassists.: AMD Decode Assistir ao suporte.
	pausefilter...: Interrupção de pausa filtrada AMD.
	pfthreshold...: AMD pausa o limite do filtro.

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	#verificando as versões e codinome do sistema operacional
	#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
	#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release
	
	#verificando informações de hardware e processador
	#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)
	sudo inxi -CMSfxxx
	sudo lscpu

	#modo gráfico para verificar as informações de sistema operacional e hardware
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

#02_ Download do VMware Workstation Pro 17 (Build 17.5.0 26/11/2023)<br>

	Link: https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
	Versão: Workstation 17 Pro for Linux

#03_ Alterando as Permissões de Execução do Binário do VMware Workstation Pro<br>

	01_ Acessar o diretório de Download;
	02_ Clicar com o Botão direito do mouse no binário do VMware-Workstation-Full-*.bundle;
	03_ No Menu selecionar o opção: Propriedade;
	04_ Acessar a aba: Permissões;
	05_ Clicar na opção: Permitir execução do arquivo como um programa.
	<Fechar>

#04_ Instalando o VMware Workstation Pro no Linux Mint<br>

	01_ Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
	02_ Digitar o comando: sudo ./VMware-Workstation-Full-*.bundle
	03_ Digitar a senha do seu usuário e aguardar a finalização da instalação.

#05_ Configuração básica do VMware Workstation Pro no Linux Mint<br>

	01_ Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
	02_ Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
	03_ Na tela de Update marque a opção: Yes <Next>
	04_ Na tela de Experience marque a opção: Yes <next>
	05_ Na tela de License Key marque a opção: I want to try VMware Workstation 16 for 30 days: <Finish>
	06_ Na tela de autenticação, digite a senha do seu usuário e clique em: <Autenticar>
	07_ Na tela de Information, clique em: <OK>