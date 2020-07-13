
Instalação do Linux Mint 20 Ulyana 64 Bits no Dell Inspiron 1440 (2009)

#01_ Configuração da BIOS (versão A07)<br>
	_ Configuração Padrão de fábrica, Hard Disk SATA em AHCI, VT-x habilitado<br>
	_ Audio, Wireless e Bluetooth habilitados.
	
#02_ Inicialização da Instalação<br>
	_ Para não ter falhas de inicialização da instalação, utilizei o recurso<br>
	_ de Modo de Compatibilidade, recomendado para equipamentos legados.

#03_ Driver da Placa de Rede Sem-Fio (Wi-Fi)<br>
	_ Modelo Broadcom BCM-4312, por padrão, não é reconhecida no Linux Mint<br>
	_ sendo necessário instalar o Driver Proprietário pelo Gerenciador de<br>
	_ Drivers do Linux Mint (ou por linha de comando, recomendo pelo GUI).

#04_ Hard Disk SATA SSD 60GB e 500GB<br>
	_ Modelo Corsair Force 3, Hard Disk para a instalação do Linux Mint, sem<br>
	_ necessidade de particionamento (instalação padrão), Hard Disk WD usado<br>
	_ para armazenamento de arquivos e backup (case akasa AK-OA2SSA-BKV2 2,5").
	
#05_ Pós-Instalação do Linux Mint 20 Ulyana<br>
	_ Atualização do sistema utilizando o MintUpdate;<br>
	_ Atualização do sistema utilizando o Apt;<br>
		(apt update && apt upgrade && apt full-upgrade && apt dist-upgrade)<br>
	_ Instalação do Driver Broadcom BCM-4312.<br>
		(utilização do Gerenciador de Drivers)
	
#06_ Atualização dos Drivers VGA Intel<br>
	_ sudo apt update<br>
	_ sudo apt install vainfo intel-gpu-tool intel-media-va-driver-non-free
	  
#07_ Instalação dos Aplicativos Básicos<br>
	_ sudo apt update<br>
	_ sudo apt install software-properties-common build-essential<br>
	_ sudo apt install ttf-mscorefonts-installer cheese cairo-dock vim<br>
	_ sudo apt install htop nmon i8kutils psensor tlp cpufrequtils cputool

#08_ Instalação dos Aplicativos que utilizo no Dia-a-Dia<br>
	_ VirtualBOX: https://www.virtualbox.org/<br>
	_ NotepadQQ: https://notepadqq.com/s/<br>
	_ Packet Tracer: https://www.packettracernetwork.com/<br>
	_ GNS3: https://www.gns3.com/<br>
	_ WPS Office: http://linux.wps.com/<br>
	_ KolourPaint: https://kde.org/applications/en/graphics/org.kde.kolourpaint<br>
	_ VS Code: https://code.visualstudio.com/<br>
	_ Google Chrome: https://www.google.com/intl/pt-BR/chrome/<br>
	_ Genymotion: https://www.genymotion.com/download/<br>
	_ Kazam: https://launchpad.net/kazam<br>
	_ Kdenlive: https://kdenlive.org/en/<br>
	_ Audacity: https://www.audacityteam.org/<br>
	_ Mega: https://mega.nz/<br>
	_ Teams: https://www.microsoft.com/pt-br/microsoft-365/microsoft-teams/download-app<br>
	_ VLC: https://www.videolan.org/vlc/index.pt-BR.html<br>