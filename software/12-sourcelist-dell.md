#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/07/2021<br>
#Data de atualização: 27/07/2024<br>
#Versão: 0.13<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br

#Configuração do Repositório da Dell no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Configuração do Repositório da Dell no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Configuração do Repositório da Dell no Linux Mint 22 Wilma<br>

[![Dell Sources.List](http://img.youtube.com/vi/sHhn7OA6jDc/0.jpg)](https://www.youtube.com/watch?v=sHhn7OA6jDc "Dell Sources.List")

Link da vídeo aula: https://www.youtube.com/watch?v=sHhn7OA6jDc

#Link da Postagem na Comunidade da Dell: https://www.dell.com/community/Notebooks-Laptops/Reposit%C3%B3rio-Dell-Ubuntu-Codinome-Notebook/m-p/8262168#M36640

#Modelos dos Notebook da Dell Homologados:
```bash
A) Dell Inspiron 1440 2009 (Codename: ???) - NÃO Homologado pela Canonical;
B) Dell XPS L502X 2011 (Codename: ???) - NÃO Homologado pela Canonical;
C) Dell Vostro 5480 2015 (Codename: ???) - Homologado pela Canonical;
D) Dell G3 3590 2019 (Codename: ???) - Homologado pela Canonical.
```

#Link de Hardware Homologados pela Dell: https://ubuntu.com/certified<br>
#Link de Drivers e downloads: https://www.dell.com/support/home/pt-br?app=drivers<br>
#Link da Imagem de Recuperação Linux: https://www.dell.com/support/home/en-us/drivers/osiso/linux?lwp=rt<br>
#Link de Imagem de Recuperação: https://www.dell.com/support/home/pt-br/drivers/OSISO<br>
#Link do Sources List da Dell Desktop: http://dell.archive.canonical.com/dists/<br>
#Link do Sources List da Dell Server: https://linux.dell.com/repo/community/openmanage/<br>
#Link do Sources List do Ubuntu OEM: http://oem.archive.canonical.com/updates/dists/<br>
#Verificar o Service TAG no Linux: sudo dmidecode -s system-serial-number

O QUE É E PARA QUE SERVER O DELL SOURCES LIST: A ferramenta de pacote avançada, é uma interface<br>
de usuário de software livre que funciona com bibliotecas centrais para lidar com a instalação<br>
e remoção de software no Debian e em distribuições Linux baseadas nele. Há várias maneiras de<br>
configurar o repositório Dell Linux. Se você sempre quiser a versão mais recente e melhor das<br>
atualizações, vá para o repositório mais recente e siga as instruções lá.

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
#OBSERVAÇÃO IMPORTANTE: Linux Mint 22.x é derivado do Ubuntu Desktop 24.04.x Noble Numbat
sudo cat /etc/os-release
sudo cat /etc/lsb-release

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
	Informações do Sistema
```

#01_ Atualização do Sistema Operacional<br>
```bash
#atualizando o sistema operacional via MintUpdate (Recomendado)
_ Atualização do sistema utilizando o MintUpdate;
_ Atualização do sistema utilizando o Apt;

#atualizando o sistema operacional via Terminal
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#recomendo utilizando o comando: apt - o comando: apt-get e considerado obsoleto
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
sudo apt clean
```

#02_ Instalação do Linux Kernel OEM (versão do Kernel instalada >= 5.15.x suportado até 2025)<br>
```bash
#Link de pesquisa do Kernel OEM da Canonical/Ubuntu: https://wiki.ubuntu.com/Kernel/OEMKernel

#atualizando as lista do apt
sudo apt update

#verificando a versão do Kernel em execução
#opção do comando uname: -a (all)
sudo uname -a

#Kernel homologados no Linux Mint 20.x, 21.x ou 22.x
sudo apt install linux-oem-20.04 fdutils (Linux Mint Versão 20.x)
sudo apt install linux-oem-22.04a fdutils (Linux Mint Versão 21.x - Kernel >= 5.17)
sudo apt install linux-oem-22.04b fdutils (Linux Mint Versão 21.x - Kernel >= 6.0)
sudo apt install linux-oem-22.04c fdutils (Linux Mint Versão 21.x - Kernel >= 6.1)
sudo apt install linux-oem-22.04d fdutils (Linux Mint Versão 21.x - Kernel >= 6.5)

#reiniciando o Linux Mint
sudo reboot (Reinicializar o Sistema)

#verificando a versão do Kernel em execução
#opção do comando uname: -a (all)
sudo uname -a
```

#03_ Habilitando os repositórios no Linux Mint<br>
```bash
#Link de pesquisa dos pacotes do Ubuntu: https://packages.ubuntu.com/
sudo add-apt-repository main (Principal - Software livre e de código aberto suportado pela Canonical)
sudo add-apt-repository universe (Universe - Software livre e de código aberto mantido pela comunidade)
sudo add-apt-repository multiverse (Multiverse - Software restrito por direitos autorais ou questões legais)
sudo add-apt-repository restricted (Restrito - Drivers proprietários para dispositivos)
```

#04_ Adicionando o repositório da Dell no Linux Mint<br>	
```bash
#instalando as dependências básicas no Linux Mint 20.x e 21.x
sudo apt update && sudo apt install vim git python3 python2 pip

#instalando as dependências básicas no Linux Mint 22.x
sudo apt update && sudo apt install vim git python3 python3-pip

#Criando o arquivo do Sources List da Dell no Linux Mint 20.x
sudo vim /etc/apt/sources.list.d/dell.list
INSERT

#ADICIONANDO OS REPOSITÓRIOS DA DELL NO LINUX MINT 20.x
deb http://dell.archive.canonical.com/updates/ focal-dell public
deb http://dell.archive.canonical.com/updates/ focal-oem public
deb http://dell.archive.canonical.com/updates/ focal-somerville public
deb http://dell.archive.canonical.com/updates/ focal-somerville-melisa public
#deb https://linux.dell.com/repo/community/openmanage/11010/focal focal main

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#ADICIONANDO A CHAVE GPG DA DELL NO LINUX MINT 20.x
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D4D1EAED36962F69

#OBSERVAÇÃO IMPORTANTE: adicionar a chave abaixo somente se você for utilizar o repositório
#da Dell OpenManager no seu Linux Mint 20.x somente se você for utilizar.
#sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key 1285491434D8786F

#OBSERVAÇÃO IMPORTANTE: a partir do Linux Mint 21.x que é baseado no Ubuntu 22.04.x
#a forma de adicionar repositórios e Chaves GPG mudou, no procedimento abaixo estou
#adicionando de forma manual os repositórios e convertendo as chaves GPG para o novo
#padrão.

#Criando o arquivo do Sources List da Dell no Linux Mint 21.x
sudo vim /etc/apt/sources.list.d/dell.list
INSERT

#ADICIONANDO OS REPOSITÓRIOS DA DELL NO LINUX MINT 21.x	
deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/dell01.gpg] http://dell.archive.canonical.com/updates/ jammy-oem public
deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/dell01.gpg] http://dell.archive.canonical.com/updates/ jammy-somerville  public
deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/dell01.gpg] http://dell.archive.canonical.com/updates/ jammy-stella public
#deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/dell01.gpg] https://linux.dell.com/repo/community/openmanage/11010/jammy

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#ADICIONANDO AS CHAVES GPG DA DELL NO LINUX MINT 21.x
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F9FDA6BED73CDC22
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D4D1EAED36962F69
sudo apt-key export F9FDA6BED73CDC22 | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/dell01.gpg
sudo apt-key export D4D1EAED36962F69 | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/dell01.gpg
```

#05_ Atualizando as Lista do Apt e instalando os principais pacotes da Dell no Linux Mint
```bash
#INSTALANDO OS PRINCIPAIS PACOTES DA DELL NO LINUX MINT 20.x
sudo apt update
sudo apt install oem-somerville-melisa-meta oem-somerville-meta libfprint-2-tod1-goodix tlp-config
sudo reboot (Reinicializar o Sistema)

#INSTALANDO OS PRINCIPAIS PACOTES DA DELL NO LINUX MINT 21.x
sudo apt update
sudo apt install oem-somerville-meta oem-stella-meta libfprint-2-tod1 tlp tlp-rdw
sudo reboot (Reinicializar o Sistema)
```

#06_ Verificando o Driver da Dell no Gerenciador de Drivers do Linux Mint
```bash
#verificação de drivers no Gerenciador de Driver do Linux Mint
Menu
	Pesquisa Indexada
		Driver
```

07_ Verificando os Aplicativos de Drivers da Dell no Gerenciador de Aplicativos do Linux Mint
```bash
#verificando os aplicativos da Dell no Gerenciador de Aplicativos do Linux Mint
Menu
	Gerenciador de Aplicativos
		Pesquisar: Dell
```