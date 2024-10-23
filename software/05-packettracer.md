#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 23/10/2024<br>
#Versão: 0.17<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Packet Tracer no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Packet Tracer no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Packet Tracer no Linux Mint 22 Wilma x64<br>

[![Packet Tracer 8.1.x](http://img.youtube.com/vi/yFS2d93-hbw/0.jpg)](https://www.youtube.com/watch?v=yFS2d93-hbw "Packet Tracer 8.1.x")

Link da vídeo aula: https://www.youtube.com/watch?v=yFS2d93-hbw

[![Packet Tracer 8.2.x](http://img.youtube.com/vi/hLU-9NWmcno/0.jpg)](https://www.youtube.com/watch?v=hLU-9NWmcno "Packet Tracer 8.2.x")

Link da vídeo aula: https://www.youtube.com/watch?v=hLU-9NWmcno

Site Oficial do Netacad: https://www.netacad.com/pt-br<br>
Cursos Oficiais do Cisco Packet Tracer: https://www.netacad.com/pt-br/courses/packet-tracer<br>
Site Oficial do Dev do Cisco Packet Tracer: https://www.packettracernetwork.com/<br>
MEGA.nz do Projeto Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

O QUE É E PARA QUE SERVER O CISCO PACKET TRACER: O Packet Tracer é um programa educacional gratuito que permite simular uma rede de computadores, através de equipamentos e configurações presente em situações reais. O programa apresenta uma interface gráfica simples, com suportes multimídia que auxiliam na confecção das simulações.

#00_ Verificando as Informações do Sistema Operacional do Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
#OBSERVAÇÃO IMPORTANTE: Linux Mint 22.x é derivado do Ubuntu Desktop 24.04.x Noble Numbat
sudo cat /etc/os-release
sudo cat /etc/lsb-release

#verificando a versão do ambiente gráfico
sudo cinnamon --version

#verificando informações de hardware e processador
#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)
sudo inxi -CMSfxxx
sudo lscpu

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
  Informações do Sistema
```

#01_ Atualização do Sistema Operacional Linux Mint<br>
```bash
#atualizando o sistema operacional via MintUpdate (Recomendado)
A) Atualização do sistema utilizando o MintUpdate;
B) Atualização do sistema utilizando o Apt;

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

#02_ Download do Cisco Packet Tracer para o Linux Mint do Site Oficial do Netacad<br>
```bash
Link Oficial do Netacad: https://www.netacad.com/pt-br/courses/packet-tracer
Link Oficial do Packet Tracer Network: https://www.packettracernetwork.com/
Link do Mega.nz do Bora para Prática: https://mega.nz/folder/Co9GHIyK#2kzNnN7XzImP01M1SyRm2g/folder/vll2iSDI

DICA: RECOMENDO VOCÊ FAZER UMA CONTA NO NETACAD DA CISCO NO CURSO GRATUITO DO CISCO PACKET
TRACER DISPONÍVEL NA PLATAFORMA NO LINK: 
https://skillsforall.com/pt/learningcollections/cisco-packet-tracer?courseLang=pt-BR

PARA CRIAR UMA CONTA NO NETACAD ACESSE O LINK: https://id.cisco.com/signin/register
```

#03_ Instalando o Cisco Packet Tracer no Linux Mint<br>
```bash
#instalar o Cisco Packet Tracer em modo Gráfico no Linux Mint 20.x e 21.x
01) Na pasta de Download, clicar duas vezes no Instalador do Cisco Packet Tracer;
02) Na tela do Gdebi clique em: <Instalar Pacote>.
      (Digite a sua senha para instalar o pacote)
03) Na tela: Software License Agreement clique em: <Next>
04) Marque a opção: do you accept the terms of this EULA?: <Yes> clique em: <Next>

#OBSERVAÇÃO IMPORTANTE: se você utilizar o Gdebi para instalar o Cisco Packet Tracer e 
#apresentar uma falha no final da instalação, recomendo utilizar o comando: dpkg para 
#forçar a instalação em modo Terminal. 

#UTILIZAR ESSE PROCEDIMENTO SOMENTE SE TIVER FALHA  NA INSTALAÇÃO EM MODO GRÁFICO.

#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#instalando o Cisco Packet Tracer via linha de comando no Linux Mint 20.x e 21.x
#opção do comando dpkg: -i (install)
sudo dpkg -i CiscoPacketTracer*.deb
  Na tela de: Configurando PacketTracer pressione Enter em: <OK>
  Na tela de: Do you accept the terms of this EULA? selecione: <Sim> e <Enter>

#OBSERVAÇÃO IMPORTANTE: NO LINUX MINT 22.x QUE É BASEADO NO UBUNTU 24.04.x A BIBLIOTECA
#DO MESA: libgl1-mesa-glx FOI DESCONTINUADA, SENDO NECESSÁRIO FAZER SUA INSTALAÇÃO MANUAL
#PARA ATENDER AS DEPENDÊNCIAS DO CISCO PACKET TRACER VERSÃO 8.2.x

#download da Biblioteca Libgl1-Mesa-GLX no Linux Mint 22.x (Link atualizado em: 23/10/2024)
wget http://mirrors.kernel.org/ubuntu/pool/universe/m/mesa/libgl1-mesa-glx_22.0.1-1ubuntu2_amd64.deb

#instalando a Biblioteca Libgl1-Mesa-GLX
#opção do comando dpkg: -i (install), * (complete all description)
sudo dpkg -i libgl1-mesa-glx*.deb
```

#04_ Verificando se todas as Bibliotecas do Cisco Packet foram instaladas no Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as dependência do binário do Cisco Packet Tracer
#opção do comando ldd: -v (verbose)
sudo ldd -v /opt/pt/bin/PacketTracer

#filtrando as dependências não encontrado do Cisco Packet Tracer
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

#INSTALANDO AS DEPENDÊNCIAS DO CISCO PACKET TRACER NO LINUX MINT 20.x
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5 git vim python2 python3

#filtrando as dependências não encontrado do Cisco Packet Tracer
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

#OBSERVAÇÃO IMPORTANTE: as dependências: libQt5QmlModels.so.5 e o erro: /lib/x86_64-linux-gnu/libQt5Core.so.5: 
#version `Qt_5.15' not found não interfere diretamente no funcionamento do Cisco Packet Tracer 8.1.x ou 8.2.x
#no Linux Mint 20.x, essas dependências fazem parte da versão do Ubuntu >= 21.04, verifique a versão do Qt5Core 
#instalada no Linux Mint 20.x com o comando: sudo locate libQt5Core

#INSTALANDO AS DEPENDÊNCIAS DO CISCO PACKET TRACER NO LINUX MINT 21.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5 libqt5texttospeech5 libqt5positioning5 \
libqt5qml5 libqt5webchannel5 libqt5qmlmodels5 libqt5quick5 libqt5webenginecore5 libqt5webenginewidgets5 git \
vim python2 python3 libqt5websockets5 libqt5multimedia5 

#OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca LibSSL sofre alteração de versão, antes de baixar a versão
#acesse o site: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/ e veja qual a versão atual, altere
#o script e faça o download.

#Resolvendo a falha das bibliotecas libssl.so.1.1 e libcrypto.so.1.1 no Linux Mint 21.x
#opção do comando dpkg: -i (install)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#link de download da Biblioteca do LibSSL (atualizado no dia: 23/10/2024)
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.23_amd64.deb
sudo dpkg -i libssl1.1_1.1.1*.deb

#filtrando as dependências não encontrado do Cisco Packet Tracer
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando	
sudo ldd /opt/pt/bin/PacketTracer | grep "not found"

#INSTALANDO AS DEPENDÊNCIAS DO CISCO PACKET TRACER NO LINUX MINT 22.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install libqt5networkauth5 libqt5script5 libqt5scripttools5 libqt5texttospeech5 libqt5positioning5 \
libqt5qml5 libqt5webchannel5 libqt5qmlmodels5 libqt5quick5 libqt5webenginecore5 libqt5webenginewidgets5 git \
vim python3 libqt5websockets5 libqt5multimedia5

#OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca LibSSL sofre alteração de versão, antes de baixar a versão
#acesse o site: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/ e veja qual a versão atual, altere
#o script e faça o download.

#Resolvendo a falha das bibliotecas libssl.so.1.1 e libcrypto.so.1.1 no Linux Mint 22.x
#opção do comando dpkg: -i (install)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#link de download da Biblioteca do LibSSL (atualizado no dia: 04/08/2024)
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.23_amd64.deb

#instalando a Biblioteca LibgSSL
#opção do comando dpkg: -i (install), * (complete all description)
sudo dpkg -i libssl1.1_1.1.1*.deb

#filtrando as dependências não encontrado do Cisco Packet Tracer
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando	
sudo ldd /opt/pt/bin/PacketTracer | grep "not found"
```

#05_ Atualização para a Versão 8.2.0 do Cisco Packet Tracer<br>
```bash
Atualização feita em Julho/2022 - procedimento no Linux Mint versões 20.x, 21.x e 22.x continua a mesma coisa.
Mais informações: https://www.packettracernetwork.com/features/packettracer-81-newfeatures.html
```

#06_ Atualização para a Versão 8.2.1 do Cisco Packet Tracer<br>
```bash
Atualização feita em Março/2023 - procedimento no Linux Mint versões 20.x, 21.x e 22.x continua a mesma coisa.
Mais informações: https://www.packettracernetwork.com/features/packettracer-82-newfeatures.html
```

#07_ Atualização para a Versão 8.2.2 do Cisco Packet Tracer<br>
```bash
Atualização feita em Março/2023 - procedimento no Linux Mint versões 20.x, 21.x e 22.x continua a mesma coisa.
Mais informações: https://www.packettracernetwork.com/download/download-packet-tracer.html
```

#06_ Executando o Cisco Packet Tracer no Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#executando o Cisco Packet Tracer no terminal
packettracer

#executado o Cisco Packet Tracer no modo gráfico
Menu
  Packet Tracer
```

#08_ Se autenticando no Cisco Packet Tracer no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: RECENTEMENTE A NETACAD PASSOU POR MUDANÇAS NA FORMA DE SE AUTENTICAR
#NO PORTAL, O PROCEDIMENTO ABAIXO INFELIZMENTE NÃO ESTÁ MAIS FUNCIONANDO, RECOMENDO UTILIZAR
#A OPÇÃO DE: Skill for All ATÉ A NETACAD ATUALIZAR A NOVA VERSÃO DO CISCO PACKET TRACER.

#OBSERVAÇÃO IMPORTANTE: SE VOCÊ ESTÁ UTILIZANDO O CISCO PACKET TRACER NO SEU COMPUTADOR
#PESSOAL, RECOMENDO HABILITAR A OPÇÃO: Keep me logged in (for 3 months), CASO VOCÊ ESTEJA
#UTILIZANDO COMPUTADORES PÚBLICOS NÃO UTILIZAR ESSA OPÇÃO.
Cisco Packet Tracer
  (ON) Keep me logged in (for 3 months)
  Login Server: Worldwide
  <Cisco Networking Academy (BOTÃO AZUL)>

Netacad
  <Login>
    Welcome!
      Email: SEU_EMAIL_DO_CADASTRO_DO_NETACAD <Login>
      Password: SUA_SENHA_DO_NETACAD <Login>

#Se autenticando na opção do Skill for All
Cisco Packet Tracer
  (ON) Keep me logged in (for 3 months)
  Login Server: Worldwide
  <Cisco Skill for All (BOTÃO VERDE)>

#Será aberto o seu navegador padrão para a autenticação no Netacad
Netacad
  <Login>
    Welcome!
      Email: SEU_EMAIL_DO_CADASTRO_DO_NETACAD <Login>
      Password: SUA_SENHA_DO_NETACAD <Login>
      #Após se autenticar será apresentado a seguinte mensagem no navegador
      You have successfully logged in to Cisco Packet Tracer. You may close this tab.

#OBSERVAÇÃO IMPORTANTE: INFELIZMENTE ESSE OPÇÃO NÃO PERMITE CRIAR CENÁRIOS DE REDE POIS
#É UTILIZADA PARA PROVAS, ATÉ O MOMENTO: 23/10/2024 AINDA NÃO FOI RESOLVIDO O PROBLEMA
#DE LOGIN NO CISCO PACKET TRACER VERSÃO: 8.2.2
```