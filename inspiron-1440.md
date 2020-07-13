
Instalação do Linux Mint 20 Ulyana 64 Bits no Dell Inspiron 1440 (2009)

#01_ Configuração da BIOS (versão A07)
	_ Configuração Padrão de fábrica, Hard Disk SATA em AHCI, VT-x habilitado
	_ Audio, Wireless e Bluetooth habilitados
	
#02_ Inicialização da Instalação
	_ Para não ter falhas de inicialização da instalação, utilizei o recurso
	_ de Modo de Compatibilidade, recomendado para equipamentos legados

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)
	_ Modelo Broadcom BCM-4312, por padrão, não é reconhecida no Linux Mint
	_ sendo necessário instalar o Driver Proprietário pelo Gerenciador de
	_ Drivers do Linux Mint (ou por linha de comando, recomendo pelo GUI).

#04_ Hard Disk SATA SSD 60GB e 500GB
	_ Modelo Corsair Force 3, Hard Disk para a instalação do Linux Mint, sem
	_ necessidade de particionamento (instalação padrão), Hard Disk WD usado
	_ para armazenamento de arquivos e backup (case akasa AK-OA2SSA-BKV2 2,5").
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana
	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;
		(apt update && apt upgrade && apt full-upgrade && apt dist-upgrade)
	_ Instalação do Driver Broadcom BCM-4312.
		(utilização do Gerenciador de Drivers)
	
#06_ Atualização dos Drivers VGA Intel 
	_ sudo apt update
	_ sudo apt install vainfo intel-gpu-tool intel-media-va-driver-non-free
	  
#07_ Instalação dos Aplicativos Básicos
	_ sudo apt update
	_ sudo apt install software-properties-common build-essential
	_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim
	_ sudo apt install htop nmon i8kutils psensor tlp cpufrequtils cputool