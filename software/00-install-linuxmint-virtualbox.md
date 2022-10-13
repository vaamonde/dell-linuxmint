#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 13/10/2022<br>
#Data de atualização: 13/10/2022<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma, 20.3 Una e 21 Vanessa x64

#Lançamentos Oficiais do Linux Mint<br>
27/07/2020 - Linux Mint 20 "Ulyana" Cinnamon released: https://www.linuxmint.com/rel_ulyana_cinnamon.php<br>
08/01/2021 - Linux Mint 20.1 "Ulyssa" Cinnamon released: https://linuxmint.com/rel_ulyssa_cinnamon.php<br>
08/07/2021 - Linux Mint 20.2 “Uma” Cinnamon released: https://www.linuxmint.com/rel_uma_cinnamon.php<br>
07/01/2022 - Linux Mint 20.3 “Una” Cinnamon released: https://www.linuxmint.com/rel_una_cinnamon.php<br>
31/07/2022 - Linux Mint 21 "Vanessa" Cinnamon released: https://www.linuxmint.com/rel_vanessa_cinnamon.php.

#Tipos de Ambientes Gráficos do Linux Mint<br>
Cinnamon: https://www.linuxmint.com/rel_vanessa_cinnamon.php<br>
Mate: https://www.linuxmint.com/rel_vanessa_mate.php<br>
XFCE: https://www.linuxmint.com/rel_vanessa_xfce.php.

#Versões baseadas da Distribuição Ubuntu<br>
Linux Mint 20.x - baseado na versão do Ubuntu 18.04.x LTS<br>
Linux Mint 21.x - baseado na versão do Ubuntu 20.04.x LTS<br>

Primeira etapa: Download da ISO do Netgate UTM pfSense

01. Link de download do Linux Mint 21 "Vanessa" Cinnamon 64 Bits: https://www.linuxmint.com/edition.php?id=299<br>
02. Escolher o Mirror (Espelho) no Brasil de: Federal University of Sao Carlos<br>
03. Salvar a ISO do Linux Mint: linuxmint-21-cinnamon-64bit.iso no seu computador<br>

Segunda etapa: Software para a grava do Pen Drive Bootável

_ Rufus: https://rufus.ie/pt_BR/<br>
_ YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/<br>
_ Etcher: https://www.balena.io/etcher/<br>
_ UNetbootin: https://unetbootin.github.io/<br>
_ Ventoy: https://www.ventoy.net/en/index.html<br>
_ Linux Live USC Creator: https://www.linuxliveusb.com/<br>

Terceira etapa: Criação e Configuração da Máquina Virtual no Oracle VirtualBOX<br>
Link de download do Oracle VirtualBOX: https://www.virtualbox.org/wiki/Downloads

Criando a Máquina Virtual do Linux Mint

	_ Ferramentas;
		<Novo>
	_ Nome e Sistema Operacional:
		Nome: LinuxMint21
		Pasta da Máquina: (deixar o padrão do sistema) 
		Tipo: Linux
		Versão: Ubuntu (64-bit)
		<Próximo>
	_ Tamanho da memória:
		Tamanho: 4096MB
		<Próximo>
	_ Disco Rígido:
		Criar um novo disco rígido virtual agora
		<Criar>
	_ Tipo de arquivo de disco rígido
		VDI (VirtualBOX Disk Image)
		<Próximo>
	_ Armazenamento em disco rígido físico
		Dinamicamente alocado
		<Próximo>
	_ Localização e tamanho do arquivo
		Localização: (deixar o padrão do sistema)
		Tamanho do disco: 50GB
		<Criar>

Personalizando a Máquina Virtual do Linux Mint

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

Quarta etapa: Instalação do Linux Mint 

Iniciando a ISO do Linux Mint

	_ VM LinuxMint21: Iniciar
	_ Selecione o disco rígido de boot
		Selecionar um arquivo de disco óptico virtual
	_ Seletor de Discos Ópticos
		Acrescentar
		Selecione o arquivo de disco óptico virtual: linuxmint-21-cinnamon-64bit.iso
		<Abrir>
	_ Not Attached
		Selecionar: linuxmint-21-cinnamon-64bit.iso
		<Escolher>
	<Iniciar>

Instalando o Linux Mint

	_ Boot Inicial do Linux Mint 10 (dez segundos) inicia a instalação padrão.
		Parar o Boot: pressionar: Seta para Baixo para parar o Boot inicial
	_ Opções do Boot padrão do Linux Mint
		