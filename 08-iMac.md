#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 04/12/2023<br>
#Data de atualização: 24/11/2025<br>
#Versão: 0.21<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma, 22.1 Xia e 22.2 Zara x64<br>

**O QUE É E PARA QUE SERVER O GNU:** O GNU (pronuncia-se "g-n-u", e não "gnu") é um projeto de software livre iniciado em 1983 por Richard Stallman, com o objetivo de criar um sistema operacional completo, livre e gratuito, semelhante ao Unix, mas sem usar nenhum código proprietário. A sigla GNU significa: “GNU's Not Unix” — (GNU Não é Unix). É uma brincadeira dos desenvolvedores com siglas recursivas, muito comuns no meio da tecnologia.

**O QUE É E PARA QUE SERVER O LINUX:** O Linux é um sistema operacional de código aberto, baseado no núcleo (kernel) Linux, criado por Linus Torvalds em 1991. Assim como o Windows e o macOS, o Linux permite que você interaja com o hardware do computador e execute programas. 

**O QUE É E PARA QUE SERVER O DEBIAN:** O Debian é uma distribuição Linux (ou distro) extremamente estável, robusta e de código aberto. Ele é desenvolvido por uma comunidade de voluntários e existe desde 1993, sendo uma das distribuições mais antigas e respeitadas no mundo Linux. O Debian é a base para várias outras distribuições famosas, como o Ubuntu, o Kali Linux, o Raspbian (para Raspberry Pi) e muitos outros.

**O QUE É E PARA QUE SERVER O UBUNTU:** O Ubuntu é uma distribuição Linux baseada no Debian, criada pela empresa sul-africana Canonical em 2004. É uma das distribuições Linux mais populares do mundo, conhecida por ser fácil de usar, amigável para iniciantes e bastante estável. O nome "Ubuntu" vem de uma filosofia africana que significa "humanidade para com os outros", refletindo a ideia de software livre, acessível e colaborativo.

**O QUE É E PARA QUE SERVER O LINUX MINT:** O Linux Mint é uma distribuição Linux baseada no Ubuntu (e indiretamente no Debian). Foi criada para ser fácil, leve, rápida e muito amigável, especialmente para quem está migrando do Windows. Ele tem uma aparência bem parecida com o Windows, o que facilita muito a adaptação de quem nunca usou Linux antes.

Conteúdo estudado nessa instalação do Linux Mint 22.x:<br>
01_ Download da ISO do Linux Mint 22.2 x64 do Site Oficial
02_ Indicação de Software para a criação do Pen Drive Bootável do Linux Mint
03_ Configurações do Hardware do Apple iMac
04_ Configuração da BIOS Apple iMac
05_ Inicialização da Instalação do Linux Mint 22.2 no no Apple iMac
06_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless) no Apple iMac
07_ Hard Disk SATA HDDD do Apple iMac
08_ Instalando o Linux Mint 22.2 no Apple iMac
09_ Se logando pela primeira vez no Linux Mint 22.2 x64
10_ Personalização Básica do Linux Mint 22.2 x64
11_ Pós-Instalação do Linux Mint 22.2 x64 no Apple iMac
12_ Instalação do Linux Kernel OEM (Original Equipment Manufacturer) no Apple iMac
13_ Instalação dos Aplicativos Básicos do Linux Mint 22.2 x64 no Apple iMac
14_ Instalação dos Drivers VGA Intel Graphics do Linux Mint no Apple iMac
15_ Personalização do Ambiente Gráfico Cinnamon do Linux Mint 22.2 x64
16_ Instalação e Configuração dos Principais Aplicativos utilizados no Dia-a-Dia do Linux Mint 22.2 x64

### Lançamentos Oficiais do Linux Mint 22.2
04/11/2025 - Lançamento do Linux Mint 22.2 “Zara” - https://blog.linuxmint.com/?p=4881

## Instalação do Linux Mint 64 Bits no Apple iMac A1225 2008 e iMac 2012

### 01_ Download da ISO do Linux Mint 22.2 x64 do Site Oficial

Link de download do Linux Mint 22.2 "Zara" Cinnamon 64 Bits

01. Site Oficial: https://linuxmint.com/download.php<br>
02. Mirror......: https://pub.linuxmint.io/stable/22.2/<br>
03. Link direto.: https://pub.linuxmint.io/stable/22.2/linuxmint-22.2-cinnamon-64bit.iso<br>

### 02_ Indicação de Software para a criação do Pen Drive Bootável do Linux Mint

01) Rufus (Microsoft): https://rufus.ie/pt_BR/<br>
02) YUMI: https://www.pendrivelinux.com/yumi-multiboot-usb-creator/<br>
03) Etcher: https://www.balena.io/etcher/<br>
04) UNetbootin: https://unetbootin.github.io/<br>
05) Ventoy: https://www.ventoy.net/en/index.html<br>
06) Linux Live USC Creator: https://www.linuxliveusb.com/<br>
07) Popsicle: https://github.com/pop-os/popsicle<br>

### 03_ Configurações do Hardware do Apple iMac
```bash
A) CPU Intel Core 2 Duo de 2,8 GHz (E8235) 6MB Cache, 
B) RAM 4GB DDR-2 1066Mhz, 
C) HD Samsung HM500JI-(S1) 500GB, 
D) MONITOR LCD 24 polegadas, 
E) Webcam iSigh, 
F) GPU AMD Radeon RV730/M96, 
G) NETWORK Ethernet Realtek RTL8111/8168, 
H) SOM Audio Intel 5 Series/3400 e AMD
I) VGA RV710/730 HDMI Radeon 4000 Series
```

### 04_ Configuração da BIOS Apple iMac

01) Por padrão o Apple iMac não possui __`BIOS`__, somente o sistema de Boot Load.

### 05_ Inicialização da Instalação do Linux Mint 22.2 no no Apple iMac

**OBSERVAÇÃO IMPORTANTE:** EQUIPAMENTOS DA APPLE NÃO POSSUI AS RECURSOS BÁSICOS DE BIOS DOS PC NORMAIS, PARA ESCOLHER O BOOT NO MOMENTO DE LIGAR O iMAC MANTENHA PRESSIONADO A TECLA: __`ALT`__

01) Inicialização padrão, a falha de resolução de vídeo não acontece nesse modelo de Apple iMac devido o monitor ser de 27 polegadas e atingir altas resoluções.

### 06_ Driver da Placa de Rede Sem-Fio (Wi-Fi/Wireless) no Apple iMac

01) Já é reconhecida no Live-CD do Mint, depois de instalado o Linux Mint ela já está habilitada.

### 07_ Hard Disk SATA HDDD do Apple iMac

**OBSERVAÇÃO IMPORTANTE:** sempre utilizar o software: __`GParted`__ para remover todas as partições existente no disco que será feito a instalação do **Linux Mint**, isso deixa o sistema mais seguro e não causa problemas de Múltiplos Boots.

01) Modelo HM500JI, Hard Disk para a instalação do Linux Mint, sem necessidade de particionamento (instalação padrão).

### 08_ Instalando o Linux Mint 22.2 no Apple iMac

01) Conecte o: __`PEN DRIVER BOOTÁVEL`__ do Linux Mint na Porta: __`USB`__ do Apple iMac (RECOMENDADO COM O IMAC DESLIGADO), após ligar o equipamento pressione: __`Alt`__ para aparecer a tela de Opções de Mídias de Boot.

02) Utilizando o __`VENTOY BOOT`__ será mostrado todas as **ISO** disponíveis no Pen Driver Bootável, selecionar a opção: __`linuxmint-22.2-cinnamon-64bit.iso`__ e pressionar: <Enter>

03) No boot loader do __`VENTOY BOOT`__ escolher a opção: __`Boot in grub2 mode`__

**OBSERVAÇÃO IMPORTANTE:** O Boot Inicial do Linux Mint demora cerca de: 10 (dez segundos) para iniciar a instalação padrão caso você não altere as opções de Boot.

**OBSERVAÇÃO:** Para parar o Boot Inicial do Linux Mint pressione: <Seta para Baixo>.

**DICA:** Entendendo as opções de inicialização do Linux Mint<br>
| Opção | Explicação | 
|-------|------------|
| **Start Linux Mint 22.2 Cinnamon 64-Bit (Padrão)** | Carrega o sistema na memória sem alterar nada no HD/SSD. |
| **Start Linux Mint 22.2 Cinnamon 64-Bit (compatibility mode)** | Inicia o sistema com drivers genéricos, desativa recursos avançados de vídeo, rede e hardware, além de opções como ACPI, gráficos 3D ou som.
| **OEM install (for manufacturers)** | Permite que fabricantes, vendedores ou técnicos instalem o sistema, configurem drivers, atualizem pacotes e personalizem o sistema.
| **Hardware Detection** | Inicia uma sessão especial que varre e mostra informações detalhadas do hardware do computador | 
| **Boot from local drive** | Inicializa o sistema operacional que já está instalado no HD/SSD.
| **Memory test (memtest86+)** | Verifica se há erros na memória RAM, algo muito importante para diagnosticar travamentos, telas azuis (no Windows), congelamentos ou reinicializações aleatórias.

```bash
Na tela inicial do Boot Load GRUB do Linux Mint
  Welcome to Linux Mint 22.2 64-Bit
    *Start Linux Mint 22.2 Cinnamon 64-Bit (Padrão) <-- ESCOLHER ESSA OPÇÃO E PRESSIONAR: <ENTER>
    Start Linux Mint 22.2 Cinnamon 64-Bit (compatibility mode)
    OEM install (for manufacturers)
    Hardware Detection
    Boot from local drive
    Memory test
```

**OBSERVAÇÃO IMPORTANTE:** ANTES DE INICIAR A INSTALAÇÃO E CONFIGURAÇÃO DO LINUX MINT NO APPLE IMAC, RECOMENDO REMOVER TODAS AS PARTIÇÕES EXISTENTE COM O SOFTWARE: __`GPARTED`__

```bash
#Removendo todas as partições existente no Apple iMac
Clique no menu do Linux Mint
  01) Na busca indexada digite: gparted
    A) Selecione o disco para fazer a limpeza: /dev/sd??? (500GB)
    B) Selecione as partições e pressione: Del (Delete)
    D) Clique em: Aplicar todas as opções (Save)
  <Fechar>
```
```bash
#Iniciando a instalação do Linux Mint no Apple iMac
No Desktop do Linux Mint
  Clique no Ícone de: Install Linux Mint
    01) Na tela de: Welcome
      Selecione: Português do Brasil
    <Continuar>
    02) Na tela de: Layout do teclado
      Selecione o layout de seu teclado: Portuguese (Brazil)
      Portuguese (Brazil)
      Digite aqui para testar o seu teclado: /\|ç
    <Continuar>
    03) Na tela de: Codecs Multimídia
      Instalar codecs multimídia: ON (Habilitar)
    <Continuar>
    04) Na tela de: Tipo de instalação
      Apagar disco e reinstalar o Linux Mint: ON (Selecionado)
      <Instalar agora>
    <Continuar>
    05) Na tela de: Onde você está?
      Selecione: Brasil / São Paulo (Fuso Horário UTC/GMT -03:00)
    <Continuar>
    06) Na tela de: Quem é você?
      Seu nome: Seu Nome e Sobrenome
      Nome do seu computador: VirtualBox
      Escolha um nome de usuário: seu_usuário
      Escolha uma senha: sua_senha
      Confirme sua senha: sua_senha
      Solicitar minha senha para entrar: ON (Selecionado)
    <Continuar>
  Instalação Concluída: <Reiniciar agora>
#OBSERVAÇÃO: REMOVER A MÉDIA DE INSTALAÇÃO ANTES DE PRESSIONAR: <ENTER>
Please remove the installation medium, then press <ENTER>
```
**OBSERVAÇÃO:** Aguardar a reinicialização total do sistema para se logar no Linux Mint.

**DICA:** Se você quiser ver toda a inicialização detalhada do Linux Mint, no Boot Load do Ícone do Linux Mint pressione: <Esc>.

### 09_ Se logando pela primeira vez no Linux Mint 22.2 x64
```bash
Na tela de Login do Linux Mint
  Selecionar o usuário: Seu Nome e Sobrenome
    Digitar a senha do usuário: sua_senha pressionar: <Enter> ou clique no ícone: >
    Aguardar a criação do perfil do usuário
```

### 10_ Personalização Básica do Linux Mint 22.2 x64
```bash
Na tela de Bem-Vindo(a) ao Linux Mint
  Clique em: Primeiros Passos
    Selecione: Cores da Área de Trabalho: <Iniciar>
      Na tela de Temas selecione em Aparência: <Escuro>
      <Fechar>
    Desmarque a opção: (OFF) Mostre essa tela de boas-vindas ao iniciar o Linux Mint
<Fechar>
```

### 11_ Pós-Instalação do Linux Mint 22.2 x64 no Apple iMac

**OBSERVAÇÃO IMPORTANTE:** É RECOMENDADO FAZER PRIMEIRO A ATUALIZAÇÃO VIA MINTUPDATE, DEPOIS VOCÊ PODE UTILIZAR O BASH/SHELL COM O COMANDO APT PARA MANTER O DESKTOP SEMPRE ATUALIZADO.

```bash
01) Atualização do sistema utilizando o MintUpdate;
    Clique no Ícone na Barra de Tarefas: Gerenciador de Atualizações
      01) Na tela de Bem-vindo ao Gerenciador de Atualizações clique em: <OK>
      02) Na tela de Uma nova versão do Gerenciador de Atualizações está disponível clique em: <Aplicar atualização>
      03) Na tela de Autenticação Obrigatório digite a senha do seu usuário e clique em: <Autenticar>
      04) Na Aba Azul Você quer mudar para um repositório regional clique em: <Não>
      05) Atualize as Lista de Aplicativos clicando em: <Atualizar>
      06) Atualize os Aplicativos (software) clicando em: <Instalar Atualizações>
          Na tela de Autenticação Obrigatório digite a senha do seu usuário e clique em: <Autenticar>
          Após a atualização clique em Fechar o MintUpdate
      07) Reinicie o Linux Mint para aplicar as atualizações
          Na barra de Tarefas clique no Ícone do Linux Mint
          Clique em: <Desligar>
            Clique em: <Reiniciar>
    AGUARDE A REINICIALIZAÇÃO TOTAL DO LINUX MINT PARA APLICAR AS NOVAS ATUALIZAÇÕES.
```

### 12_ Instalação do Linux Kernel OEM (Original Equipment Manufacturer) no Apple iMac

**OBSERVAÇÃO IMPORTANTE:** CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO, VERIFIQUE A VERSÃO E ESCOLHA OS PROCEDIMENTOS CORRESPONDENTE A SUA VERSÃO.

**Versões do Linux Mint baseadas na Distribuição Ubuntu**<br>
01) Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa<br>
02) Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish<br>
03) Linux Mint 22.x e derivado do Ubuntu Desktop 24.04.x Noble Numbat<br>

```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
sudo cat /etc/os-release

#verificando as informações do Linux Standard Base
sudo cat /etc/lsb-release
```

**INSTALAÇÃO DO KERNEL OEM NO LINUX MINT 22.x x64 (KERNEL >= 6.17)**

```bash
#atualizando as listas do Apt
sudo apt update

#Linux Mint Versão 22.x - Kernel >= 6.17 (TESTADO E HOMOLOGADO, RECOMENDO A SUA INSTALAÇÃO)
sudo apt install linux-oem-24.04d fdutils

#Reinicializar o Sistema
sudo reboot 

#Verificando a versão do Kernel que está rodando na inicialização do Linux Mint
#opção do comando uname: -a (all)
sudo uname -a
```

### 13_ Instalação dos Aplicativos Básicos do Linux Mint 22.2 x64 no Apple iMac

**OBSERVAÇÃO IMPORTANTE:** CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO, VERIFIQUE A VERSÃO E ESCOLHA OS PROCEDIMENTOS CORRESPONDENTE DE CADA VERSÃO.

```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#atualizando as listas do Apt
sudo apt update

#instalação dos software base do Linux Mint 20.x, 21.x e 22.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install software-properties-common build-essential lsb-base dkms lsb-release \
apt-transport-https module-assistant

#instalação dos software de hardware do Linux Mint 20.x, 21.x e 22.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install htop nmon i8kutils psensor tlp tlp-rdw cpufrequtils cputool ipmitool \
ipmiutil smartmontools btop

#instalação dos software e aplicativos básicos do Linux Mint 20.x, 21.x e 22.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install ttf-mscorefonts-installer cheese guvcview v4l-utils vim git p7zip-full \
p7zip-rar

#reinicializar o Sistema
sudo reboot
```

### 14_ Instalação dos Drivers VGA Intel Graphics do Linux Mint no Apple iMac
```bash
#Atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#Atualizando as listas do Apt
sudo apt update

#Instalação dos drivers de vídeo da Intel do Linux Mint 20.x, 21.x e 22.x
sudo apt install vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra

#Instalação dos drivers e recursos do Mesa da Intel do Linux Mint 20.x, 21.x e 22.x
sudo apt install libgl1-mesa-dev libgles2-mesa-dev libassimp5 libgles2-mesa-dev

#Reinicializar o Sistema
sudo reboot

#Testando o suporte ao Driver da Intel Mesa do Linux Mint 20.x, 21.x e 22.x
sudo glxgears
```

### 15_ Personalização do Ambiente Gráfico Cinnamon do Linux Mint 22.2 x64

01) Personalizar a Área de Trabalho;<br>
02) Personalizar a Barra de Tarefas (Painel);<br>
03) Personalizar o Tema (Aparência);<br>
04) Personalizar a Janela de Início de Sessão (Tela de Login);<br>
05) Pesquisar sobre: Extensões, Desklets, Applets, Temas (Windows), Plano de Fundo.<br>

### 16_ Instalação e Configuração dos Principais Aplicativos utilizados no Dia-a-Dia do Linux Mint 22.2 x64

A) Instalação dos principais Navegadores de Internet (INSTALAR TODOS OS NAVEGADORES E DEIXAR OS ÍCONES NO DESKTOP)
  01) Google Chrome: https://www.google.com/intl/pt-BR/chrome/            DICA: instalar via site Oficial
  02) Opera: https://www.opera.com/pt-br                                  DICA: instalar via site Oficial
  03) Microsoft Edge: https://www.microsoft.com/pt-br/edge/?form=MA13FJ   DICA: instalar via site Oficial
  04) Vivaldi: https://vivaldi.com/pt-br/                                 DICA: instalar via site Oficial
  05) Brave: https://brave.com/pt-br/                                     DICA: instalar via site Oficial
  06) Slimjet: https://www.slimjet.com/pt/                                DICA: instalar via site Oficial
  07) Midori: https://astian.org/midori-browser/                          DICA: instalar via site Oficial

B) Instalação dos principais Softwares de Produtividade (INSTALAR TODOS OS APLICATIVOS E DEIXAR OS ÍCONES NO DESKTOP)
  01) KolourPaint: https://apps.kde.org/pt-br/kolourpaint/   DICA: instalar via apt
  02) NotepadQQ: https://notepadqq.com/s/                    DICA: instalar via apt
  03) VLC: https://www.videolan.org/vlc/                     DICA: instalar via apt
  04) Audacity: https://www.audacityteam.org/                DICA: instalar via apt
  05) Kdenlive: https://kdenlive.org/en/                     DICA: usar imagens AppImage via site Oficial
  06) Kazam: https://launchpad.net/kazam                     DICA: instalar via apt

C) Instalar e Configurar todos os procedimentos do Oracle VirtualBOX (DEIXAR O ÍCONE NO DESKTOP)
  01) Site: VirtualBOX: https://www.virtualbox.org/

D) Instalar e Configurar todos os procedimentos do Editor de Texto e IDE VSCode (DEIXAR O ÍCONE NO DESKTOP)
  01) Site Microsoft Visual Studio Code: https://code.visualstudio.com/

E) Instalar e Configurar todos os procedimentos da Suite do WPS Office (DEIXAR O ÍCONE NO DESKTOP)
  01) Site WPS Office: http://linux.wps.com/
  02) Procedimentos: https://github.com/vaamonde/dell-linuxmint/blob/master/software/11-wpsoffice.md
  03) **OBSERVAÇÃO IMPORTANTE**: Executar todas as etapas de: 00 até 04.
