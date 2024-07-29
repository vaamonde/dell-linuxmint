#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/09/2021<br>
#Data de atualização: 28/07/2024<br>
#Versão: 0.12<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

[![Dell BIOS Update](http://img.youtube.com/vi//0.jpg)]( "Dell BIOS Update")

Link da vídeo aula: 

#Atualizar o BIOS da Dell em um ambiente Linux ou Ubuntu: https://www.dell.com/support/kbdoc/en-us/000131486/update-the-dell-bios-in-a-linux-or-ubuntu-environment<br>
#Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers<br>
#Link da Imagem de Recuperação Linux: https://www.dell.com/support/home/en-us/drivers/osiso/linux?lwp=rt<br>
#Link de Imagem de Recuperação: https://www.dell.com/support/home/pt-br/drivers/OSISO<br>
#Link de Linux Vendor Firmware Service: https://fwupd.org/lvfs/devices/<br>
#Verificar o Service TAG no Linux: sudo dmidecode -s system-serial-number<br>
#Verificar a Versão da BIOS no Linux: sudo dmidecode -s bios-version<br>
#Verificar a Data da BIOS no Linux: sudo dmidecode -s bios-release-date<br>
#Verificar o Fabricante da BIOS no Linux: sudo dmidecode -s bios-vendor

O QUE É E PARA QUE SERVER O BIOS: Um Sistema Básico de Entrada/Saída, frequentemente referido<br>
pelo acrônimo BIOS (do inglês Basic Input/Output System) e também conhecido como System BIOS,<br>
ROM BIOS ou PC BIOS, é firmware, gravado em uma memória não volátil, usado para realizar a<br>
inicialização do hardware durante o processo de inicialização (por meio do botão de inicialização<br>
da máquina) e para fornecer serviços de tempo de execução para sistemas operacionais e programas.

#Modelos dos Notebook utilizados na Atualização da BIOS:
```bash
A) Dell Inspiron 1440   ANO 2009 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
B) Dell XPS L502X       ANO 2011 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
C) Dell Vostro 5480     ANO 2015 (MODELO LEGADO, UTILIZAR PEN DRIVER COM FreeDOS);
D) Dell G3 3590         ANO 2019 (MODELO COM SUPORTE DE ATUALIZAÇÃO NO BOOT, PEN DRIVER EM FAT32).

OBSERVAÇÃO IMPORTANTE: O modelo G3 da Dell possui suporte para atualização da BIOS
ou Firmware utilizando o LVFS (Linux Vendor Firmware Service) que possibilita usar
os comandos fwupd* (fwupdagent, fwupdate, fwupdmgr e fwupdtool) que é nativo nas
distribuições Ubuntu e Linux Mint.

A) Dell Inspiron 1440   BIOS ATUAL: A07 21/12/2009   - UPDATE: A07 04/06/2020;
B) Dell XPS L502X 2011  BIOS ATUAL: A07 10/20/2011   - UPDATE: A12 04/06/2020;
C) Dell Vostro 5480     BIOS ATUAL: A03 02/10/2015   - UPDATE: A08 24/02/2018;
D) Dell G3 3590         BIOS ATUAL: 1.6.0 08/08/2019 - UPDATE: 1.18.0 09/08/2022.

A) Dell Inspiron 1440   SUPORTE A BIOS UEFI: NÃO;
B) Dell XPS L502X 2011  SUPORTE A BIOS UEFI: NÃO;
C) Dell Vostro 5480     SUPORTE A BIOS UEFI: SIM (RECOMENDADO DEIXAR A BIOS EM MODO LEGACY);
D) Dell G3 3590         SUPORTE A BIOS UEFI: SIM (RECOMENDADO DEIXAR A BIOS EM MODO LEGACY).

OBSERVAÇÃO IMPORTANTE: RECOMENDO FAZER O UPGRADE DA BIOS DOS NOTEBOOKS DA DELL CONECTADOS
NA ENERGIA (FONTE DE ALIMENTAÇÃO) E SE POSSÍVEL CONECTADO EM UM SISTEMA DE NOBREAK, POIS
QUALQUER FALHA NA ENERGIA NO PROCESSO DE ATUALIZAÇÃO DA BIOS PODE CAUSAR A FALHA DA PLACA
E POSTERIORMENTE A FALHA DE INICIALIZAÇÃO DO SISTEMA. RECOMENDO TAMBÉM VERIFICAR A BATERIA
DO NOTEBOOK SE ESTÁ CARREGANDO E FUNCIONANDO PERFEITAMENTE, ELA SERVER COMO NOBREAK CASO
TENHA ALGUMA QUEDA DE ENERGIA, MESMO ASSIM AINDA RECOMENDO CONECTAR EM UM NOBREAK ANTES DE
EXECUTAR O PROCEDIMENTO DE ATUALIZAÇÃO DA BIOS.
```

#01_ Download da BIOS do site Oficial da Dell
```bash
Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers

01) Service TAG no Linux: sudo dmidecode -s system-serial-number
02) Download da BIOS: Dell Inspiron 1440 System BIOS, A07 04 Jun 2020 <Download>
03) Download da BIOS: Dell XPS L502X System BIOS, A12 04 Jun 2020 <Download>
04) Download da BIOS: Dell Vostro 5480 System BIOS, A08 24 Feb 2018 <Download>
05) Download da BIOS: Dell G3 3590 System BIOS, 1.18.0 09 Aug 2022 <Download>

OBSERVAÇÃO IMPORTANTE: criar um diretório para cada modelo de notebook que você for
atualizar a BIOS, cuidado para não misturar as BIOS ou executar BIOS diferentes no
momento da atualização.
```

#02_ Download do FreeDOS com suporte a Boot via Pen Drive
```bash
Link de Download do FreeDOS: https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/test/
	Selecionar a opção: FDT2407-FullUSB.zip (atualizada em: 28/07/2024)

OBSERVAÇÃO IMPORTANTE: será utilizado a versão de Teste pois tem suporte a BIOS Intel, UEFI e Legada
Mais informações: https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/test/readme.txt
```

#03_ Criando Pen Driver Bootável com suporte ao FreeDOS
```bash
#Conectar o Pen Driver na porta USB
A) Conectar o Pen Drive na Porta USB antes de gravar a Imagem do FreeDOS

#Descompactar o arquivo Zipado do FreeDOS
B) Acessar o diretório de Download;
C) Botão direito do mouse em cima do arquivo: FDT2407-FullUSB.zip
D) Selecionar a opção: Extrai Aqui
E) Acessar o diretório criado: FDT2404-Full
F) Botão direito do mouse em cima do arquivo: T2404FULL.img
G) Selecionar a opção: Criar dispositivo USB inicializável
	Gravar imagem: T2404FULL.img para: SanDisk Cruzer Blade (/dev/sdb)
	<Detalhes>
		<Gravar>
```

#04_ Copiar os arquivos de BIOS para a Raiz do Pen Driver Bootável do FreeDOS
```bash
A) Copiar o diretório INSPIRON1440 para a Raiz do Pen Driver;
B) Copiar o diretório XPSL502X para a Raiz do Pen Driver;
C) Copiar o diretório VOSTRO5480 para a Raiz do Pen Driver.
```

#05_ Iniciar o Notebook da Dell (Inspiron, XPS ou Vostro) pelo Pen Driver do FreeDOS
```bash
01) Ligar o Notebook: Power;
02) Pressionar a Tecla: F12;
03) Selecionar a opção: USB Storage Device <Enter>
04) Aguardar o Boot inicial do FreeDOS.
```

#06_ Inicialização padrão do FreeDOS
```bash
OBSERVAÇÃO IMPORTANTE: por padrão o FreeDOS que fazer a instalação do sistema
no momento da inicialização do Pen Driver, nesse cenário vamos iniciar somente
o ambiente para atualizar a BIOS.

A) What is your preferred language? English <Enter>
B) Do you want to proceed? No - Return to DOS <Enter>
```

#07_ Atualizando as BIOS dos Notebooks da Dell (Inspiron, XPS e Vostro)
```bash
A) Acessar o diretório INSPIRON1440: cd INSPIRON1440 <Enter>
B) Atualizar o BIOS com o comando: 1440_A07.EXE <Enter>
C) Aguardar a finalização da atualização da BIOS.

A) Acessar o diretório XPSL502X: cd XPSL502X <Enter>
B) Atualizar o BIOS com o comando: L502XA12.EXE <Enter>
C) Aguardar a finalização da atualização da BIOS.

A) Acessar o diretório VOSTRO5480: cd VOSTRO5480 <Enter>
B) Atualizar o BIOS com o comando: 5480A08.EXE <Enter>
C) Aguardar a finalização da atualização da BIOS.
```

#08_ Acessando as BIOS dos Notebooks da Dell (Inspiron, XPS e Vostro) após a atualização
```bash
A) Ligar o Notebook: Power;
B) Pressionar a Tecla: F2;
	Inspiron: 
		Settings, 
			General, 
				System Information, 
					BIOS Version
	XPS L502X: 
		Main, 
			BIOS Version
	Vostro: 
		Main, 
			BIOS Version
```