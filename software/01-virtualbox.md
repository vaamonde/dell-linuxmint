#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2020<br>
#Data de atualização: 24/10/2022<br>
#Versão: 0.08<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Instalação do VirtualBOX no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

Site Oficial do VirtualBOX: https://www.virtualbox.org/<br>
Lançamento da versão 7.0 do VirtualBOX: https://www.virtualbox.org/wiki/Changelog-7.0#v02
Atualização da versão 7.0 do VirtualBOX: https://www.virtualbox.org/wiki/Changelog-7.0#v4

#Tecnologias de Virtualização de Processadores AMD e Intel<br>

	vmx – Intel VT-x, suporte a virtualização ativada na BIOS.
	svm – AMD SVM, suporte a virtualização ativada na BIOS.

#AES dos Processadores da AMD e Intel<br>

	aes – Aplicativos que executam criptografia e descriptografia usando o Advanced
	Encryption Standard em processadores Intel e AMD.

#Flags dos Processadores da Intel<br>

	ept – Suporte de tabela de páginas estendidas da Intel habilitado para tornar
	mais rápida a emulação de tabelas de páginas de convidados.
	vpid – ID do processador virtual da Intel. Faça descargas de TLB caras
	desnecessárias quando alternar o contexto entre os convidados.
	tpr_shadow e flexpriority – Recurso da Intel que reduz as chamadas para o
	hypervisor ao acessar o Registro de prioridade de tarefas, o que ajuda na execução
	de determinados tipos de convidados do SMP.
	vnmi – O Intel Virtual NMI ajuda com eventos de interrupção selecionados em convidados.

#Flags dos Processadores da AMD<br>

	npt – Tabelas de Páginas Aninhadas AMD, semelhantes ao Intel EPT.
	lbrv – Suporte de virtualização da AMD LBR.
	svm_lock – MSR de bloqueio AMD SVM.
	nrip_save – AMD SVM next_rip salvar.
	tsc_scale – Suporte de dimensionamento do AMD TSC.
	vmcb_clean – Suporte para bits limpos AMD VMCB.
	flushbyasid – Suporte para AMD flush-by-ASID.
	decodeassists – AMD Decode Assistir ao suporte.
	pausefilter – Interrupção de pausa filtrada AMD.
	pfthreshold – AMD pausa o limite do filtro.

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.3 Una é derivado do Ubuntu Desktop 20.04.4 Focal Fossa
	sudo cat /etc/os-release
	
	#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)
	sudo inxi -CMSfxxx
	sudo lscpu

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
		sudo apt clean

#02_ Adicionando o Repositório do Oracle VirtualBOX no Linux Mint<br>

	#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input)
	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/sources.list.d/virtualbox.list'

#03_ Baixando e Instalando as Chaves de Autenticação GPG do Oracle VirtualBOX no Linux Mint<br>

	#opções do comando wget: -q (quiet), -O (output-document)
	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
	wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#04_ Instalando o Oracle VirtualBOX versão 6.1 no Linux Mint<br>

	sudo apt update
	sudo apt install virtualbox-6.1 cpu-checker libvirt-clients git vim python2 python3

#05_ Verificando as Informações do suporte a Virtualização no Linux Mint<br>
	
	sudo kvm-ok
	sudo virt-host-validate

#06_ Baixando e Instalando o Pacote de Extensões do Oracle VirtualBOX<br>

	*Recomendo fazer a instalação do Pacote de Extensões do Oracle VirtualBOX via download do site Oficial.
	*Seguir os procedimentos na tela.

#07_ Atualizando para a versão 7.0 do VirtualBOX

	sudo apt update
	sudo apt upgrade
	sudo apt install virtualbox-7.0 cpu-checker libvirt-clients git vim python2 python3

	OBSERVAÇÃO IMPORTANTE: CASO O PROCEDIMENTO ANTERIOR NÃO FUNCIONE NO SEU LINUX MINT, 
	RECOMENDO FAZER A REMOÇÃO AUTOMÁTICA DO VIRTUALBOX-6.1 E DEPOIS INSTALAR A VERSÃO 
	7.0, UTILIZE OS SEGUINTES COMANDOS:
	
	sudo apt update
	sudo apt upgrade
	sudo apt purge virtualbox-6.1
	sudo apt install virtualbox-7.0 cpu-checker libvirt-clients git vim python2 python3

#08_ Baixando e Instalando o Pacote de Extensões do Oracle VirtualBOX 7.0<br>

	*Recomendo fazer a instalação do Pacote de Extensões do Oracle VirtualBOX via download do site Oficial.
	*Seguir os procedimentos na tela.

#09_ Corrigindo a Falha do VirtualBOX 7.0 em relação ao erro: Failed to enumerate host USB devices

	#opções do comando usermod: -a (append), -G (groups), $USER (variável de ambiente do nome do usuário)
	sudo usermod -aG vboxusers $USER
	sudo cat /etc/group | grep vbox
	sudo reboot