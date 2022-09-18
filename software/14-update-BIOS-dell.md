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
#Versão: 0.02<br>
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

OBSERVAÇÃO IMPORTANTE: RECOMENDO FAZER O UPGRADE DA BIOS DOS NOTEBOOKS DA DELL CONECTADOS
NA ENERGIA (FONTE DE ALIMENTAÇÃO) E SE POSSÍVEL CONECTADO EM UM SISTEMA DE NOBREAK, POIS
QUALQUER FALHA NA ENERGIA NO PROCESSO DE ATUALIZAÇÃO DA BIOS PODE CAUSAR A FALHA DA PLACA
E POSTERIORMENTE A FALHA DE INICIALIZAÇÃO DO SISTEMA. RECOMENDO TAMBÉM VERIFICAR A BATERIA
DO NOTEBOOK SE ESTÁ CARREGANDO E FUNCIONANDO PERFEITAMENTE, ELA SERVER COMO NOBREAK CASO
TENHA ALGUMA QUEDA DE ENERGIA, MESMO ASSIM AINDA RECOMENDO CONECTAR EM UM NOBREAK ANTES DE
EXECUTAR O PROCEDIMENTO DE ATUALIZAÇÃO DA BIOS.

#01_ Formatar o Pen Driver com suporte ao FAT32

#02_ Download da BIOS do site Oficial da Dell

	_ Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers
	_ Service TAG no Linux: sudo dmidecode -s system-serial-number

#03_ Inicializar a Atualização da BIOS via Boot

#04_ Criando Pen Driver com suporte ao FreeDOS

	#Instalando o software UNetbootin no Linux Mint
	_ sudo add-apt-repository ppa:gezakovacs/ppa
	_ sudo apt-get update
	_ sudo apt-get install unetbootin

	#Formatando o Pen Driver com suporte ao FAT32
	Inserir o Pen Driver na Porta USB;
	
	Menu, Discos;
		Selecionar o Pen Driver (Exemplo: SanDisk 15GB)
			Desmontar o Pen Driver: Botão Quadrado
		Formatar o Pen Driver com FA32
			Opções adicionais de partição: Botão de Engrenagem

	#Criando o Pen Driver Bootável com suporte ao FreeDOS
	Menu, UNetbootin;
		(Senha do seu usuário com direitos ao SUDO)
			Ditribuição: FreeDOS - 1.0
			Tipo: Unidade USB - Unidade: /dev/sdc