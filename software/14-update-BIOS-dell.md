#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/09/2021<br>
#Data de atualização: 18/09/2022<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Atualizar o BIOS da Dell em um ambiente Linux ou Ubuntu: https://www.dell.com/support/kbdoc/en-us/000131486/update-the-dell-bios-in-a-linux-or-ubuntu-environment<br>
#Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers<br>
#Link da Imagem de Recuperação Linux: https://www.dell.com/support/home/en-us/drivers/osiso/linux?lwp=rt<br>
#Link de Imagem de Recuperação: https://www.dell.com/support/home/pt-br/drivers/OSISO<br>
#Link de Linux Vendor Firmware Service: https://fwupd.org/lvfs/devices/<br>
#Verificar o Service TAG no Linux: sudo dmidecode -s system-serial-number<br>
#Verificar a Versão da BIOS no Linux: sudo dmidecode -s bios-version<br>
#Verificar a Data da BIOS no Linux: sudo dmidecode -s bios-release-date<br>
#Verificar o Fabricante da BIOS no Linux: sudo dmidecode -s bios-vendor

#Modelos dos Notebook utilizados na Atualização da BIOS:

	_ Dell Inspiron 1440   ANO 2009 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
	_ Dell XPS L502X       ANO 2011 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
	_ Dell Vostro 5480     ANO 2015 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
	_ Dell G3 3590         ANO 2019 (MODELO COM SUPORTE A ATUALIZAÇÃO NO BOOT).

	_ Dell Inspiron 1440   BIOS ATUAL: A07 21/12/2009   - UPDATE: A07 04/06/2020;
	_ Dell XPS L502X 2011  BIOS ATUAL: A07 10/20/2011   - UPDATE: A12 04/06/2020;
	_ Dell Vostro 5480     BIOS ATUAL: A03 02/10/2015   - UPDATE: A08 24/02/2018;
	_ Dell G3 3590         BIOS ATUAL: 1.6.0 08/08/2019 - UPDATE: 1.18.0 09/08/2022.

	_ Dell Inspiron 1440   SUPORTE A BIOS UEFI: NÃO;
	_ Dell XPS L502X 2011  SUPORTE A BIOS UEFI: NÃO;
	_ Dell Vostro 5480     SUPORTE A BIOS UEFI: SIM (RECOMENDADO DEIXAR A BIOS EM MODO LEGACY);
	_ Dell G3 3590         SUPORTE A BIOS UEFI: SIM (RECOMENDADO DEIXAR A BIOS EM MODO LEGACY).

OBSERVAÇÃO IMPORTANTE: RECOMENDO FAZER O UPGRADE DA BIOS DOS NOTEBOOKS DA DELL CONECTADOS
NA ENERGIA (FONTE DE ALIMENTAÇÃO) E SE POSSÍVEL CONECTADO EM UM SISTEMA DE NOBREAK, POIS
QUALQUER FALHA NA ENERGIA NO PROCESSO DE ATUALIZAÇÃO DA BIOS PODE CAUSAR A FALHA DA PLACA
E POSTERIORMENTE A FALHA DE INICIALIZAÇÃO DO SISTEMA. RECOMENDO TAMBÉM VERIFICAR A BATERIA
DO NOTEBOOK SE ESTÁ CARREGANDO E FUNCIONANDO PERFEITAMENTE, ELA SERVER COMO NOBREAK CASO
TENHA ALGUMA QUEDA DE ENERGIA, MESMO ASSIM AINDA RECOMENDO CONECTAR EM UM NOBREAK ANTES DE
EXECUTAR O PROCEDIMENTO DE ATUALIZAÇÃO DA BIOS.

#01_ Download da BIOS do site Oficial da Dell

	_ Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers
	_ Service TAG no Linux: sudo dmidecode -s system-serial-number
	_ Download da BIOS: Dell Inspiron 1440 System BIOS, A07 04 Jun 2020 <Download>

	OBSERVAÇÃO IMPORTANTE: criar um diretório para cada modelo de notebook que você for
	atualizar a BIOS, cuidado para não misturar as BIOS ou executar BIOS diferentes no
	momento da atualização.

#02_ Download do FreeDOS com suporte a Boot via Pen Drive

	_ Link de Download do FreeDOS: https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/test/
		OBSERVAÇÃO IMPORTANTE: será utilizado a versão de Teste pois tem suporte a BIOS Intel, UEFI e Legada
		Mais informações: https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/test/readme.txt
	Selecionar a opção: FDT2209-FullUSB.zip (atualizada em: 01/09/2022)

#03_ Criando Pen Driver Bootável com suporte ao FreeDOS

	#Conectar o Pen Driver na porta USB
	_ Conectar o Pen Drive na Porta USB antes de gravar a Imagem

	#Descompactar o arquivo Zipado do FreeDOS
	_ Acessar o diretório de Download;
	_ Botão direito do mouse em cima do arquivo: FDT2209-FullUSB.zip
	_ Selecionar a opção: Extrai Aqui
	_ Acessar o diretório criado: FDT2209-FullUSB
	_ Botão direito do mouse em cima do arquivo: T2209FULL.img
	_ Selecionar a opção: Criar dispositivo USB inicializável
		Gravar imagem: T2209FULL.img para: SanDisk USB
		<Gravar>

#04_ Copiar a arquivo da BIOS para a Raiz do Pen Driver Bootável do FreeDOS

	_ Copiar o diretório INSPIRON para a Raiz do Pen Driver.

#05_ Iniciar o Notebook Dell Inspiron 1440 pelo Pen Driver do FreeDOS

	_ Ligar o Notebook Inspiron;
	_ Pressionar a Tecla: F12;
	_ Selecionar a opção: USB Storage Device <Enter>
	_ Aguardar o Boot inicial do FreeDOS

#06_ Inicialização padrão do FreeDOS

	OBSERVAÇÃO IMPORTANTE: por padrão o FreeDOS que fazer a instalação do sistema
	no momento da inicialização do Pen Driver, nesse cenário vamos iniciar somente
	o ambiente para atualizar a BIOS.

	_ What is your preferred language? English <Enter>
	_ Do you want to proceed? No - Return to DOS <Enter>

#07_ Atualizando a BIOS do Dell Inspiron 1440

	_ Acessar o diretório INSPIRON: cd INSPIRON <Enter>
	_ Atualizar o BIOS com o comando: 1440_A07.EXE <Enter>
	_ Aguardar a finalização da atualização da BIOS

#08_ Acessando a BIOS do Dell Inspiron após a atualização

	_ Ligar o Notebook Inspiron;
	_ Pressionar a Tecla: F2;