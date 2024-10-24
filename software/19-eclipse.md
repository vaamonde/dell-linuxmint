#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 24/10/2024<br>
#Versão: 0.58<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Eclipse IDE e OpenJDK/JRE 17.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Eclipse IDE e OpenJDK/JRE 17.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Eclipse IDE e OpenJDK/JRE 17.x no Linux Mint 22 Wilma<br>

[![Eclipse IDE](http://img.youtube.com/vi/OQ-Hb4OOSJA/0.jpg)](https://www.youtube.com/watch?v=OQ-Hb4OOSJA "Eclipse IDE")

Link da vídeo aula: https://www.youtube.com/watch?v=OQ-Hb4OOSJA

Site Oficial do Eclipse: https://www.eclipse.org/downloads/<br>
Site Oficial do OpenJDK: https://openjdk.org/<br>
Site Oficial do Java: https://www.java.com/pt-BR/

O QUE É E PARA QUE SERVER O JAVA: Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe de programadores chefiada por James Gosling, na empresa Sun Microsystems, que em 2008 foi adquirido pela empresa Oracle Corporation.

O QUE É E PARA QUE SERVER O ECLIPSE: Eclipse é uma IDE para desenvolvimento Java, porém suporta várias outras linguagens a partir de plugins como C/C++, PHP, ColdFusion, Python, Scala e Kotlin. Ele foi feito em Java e segue o modelo open source de desenvolvimento de software.

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

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
  Informações do Sistema
```

#01_ Atualização do Sistema Operacional do Linux Mint<br>
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
```

#02_ Instalando as Dependências do Eclipse IDE no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: USAR OUTRAS VERSÕES DO JAVA (OPENJDK) PODE ACARRETAR FALHAS NO 
#PROJETO DE SOFTWARE, CUIDADO COM A VERSÃO DO JAVA UTILIZADO EM SEU PROJETO.

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 20.x
sudo apt install git vim openjdk-21-jdk openjdk-21-jre openjdk-21-jre-headless \
software-properties-common build-essential

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 21.x
sudo apt install git vim openjdk-21-jdk openjdk-21-jre openjdk-21-jre-headless \
software-properties-common build-essential

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 22.x
sudo apt install git vim openjdk-21-jdk openjdk-21-jre openjdk-21-jre-headless \
software-properties-common build-essential
```

#03_ Verificando as Versões do Java instalado no Linux Mint<br>
```bash
#verificando a versão do Java
sudo java -version

#verificando as versões de Java instalado no Linux Mint
#opção do comando grep: -i (ignore-case)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo apt list --installed | grep -i openjdk

#verificando as alternativas do Java instalado no Linux Mint
sudo update-alternatives --list java
sudo update-java-alternatives --list
```

#04_ Configurando o Versão do Java Padrão no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: cuidado com a versão do Java que você está utilizando no seu
#projeto, versões diferentes pode causar falhas de abertura do projeto ou erros na 
#hora de executar a compilação e criação do arquivo WAN ou JAR.
sudo update-alternatives --config java
```

#05_ Download do Eclipse IDE (Integrated Development Environment) no Linux Mint<br>
```bash
#recomendo utilizar a versão do Eclipse IDE Enterprise Java e Web
Link do download: https://www.eclipse.org/downloads/packages/
  Versão do Eclipse: Eclipse IDE for Enterprise Java and Web Developers
    Linux x86_64: eclipse-jee-2024-09-R-linux-gtk-x86_64.tar.gz  (atualizado em 24/10/2024)
  <Download>
```

#06_ Descompactar o Arquivo Zipado do Eclipse IDE no Linux Mint<br>
```bash
01) acessar o diretório: Download;
02) clicar com o botão direito do mouse no arquivo: eclipse-jee-*.tar.gz
03) selecionar a opção: Extrair aqui
```

#07_ Executando o Eclipse IDE no Linux Mint<br>
```bash
01) acessar o diretório: eclipse
02) executar o aplicativo (clicando duas vezes) no binário: eclipse
03) na tela de Eclipse IDE Launcher deixar o padrão do Workspace:
      Workspace: /home/seu_usuário/eclipse-workspace/
04) marque a opção: use this default and do not ask again
05) clique em: <Launch>
```

#08_ Configuração Básica do Eclipse IDE no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: devido ao Tema Black/Dark do Linux Mint o Eclipse IDE fica com 
#uma aparência que os ícones ou botões não aparece corretamente, para resolver esse 
#problema recomendo utilizar o Tema Dark do Eclipse IDE.

#configuração básica do Eclipse IDE
Windows
  Preferences
    General
      Appearance
        Theme: Dark
  <Apply and Close>
<Restart>
```

#09_ Clocando um Projeto Desenvolvido em JAVA no Workspace do Eclipse IDE no Linux Mint<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#acessando o diretório de Workspace e clocando o projeto
cd eclipse-workspace/
  git clone https://github.com/vaamonde/javaimc
```

#10_ Importando o Projeto Desenvolvido em JAVA utilizando Eclipse IDE no Linux Mint<br>
```bash
#importando o projeto no Eclipse IDE
File
  Import
    Select
      General
        Existing Projects into Workspace
    <Next>
    Import Projects
      Select root directory: <Browse>
        /home/seu_usuário/eclipse-workspace/
      Project
        javaimc
    <Finish>
```

#11_ Executando o Projeto Desenvolvido em JAVA utilizando Eclipse IDE no Linux Mint<br>
```bash
#executando o projeto no Eclipse
Project Explorer
  javaimc
    src
      view
      TelaIMC.java
<Run TelaIMC> (atalho: Ctrl+3 - selecionar: Run)
```