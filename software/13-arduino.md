#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 15/08/2022<br>
#Data de atualização: 23/10/2024<br>
#Versão: 0.10<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Arduino IDE 2.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Arduino IDE 2.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Arduino IDE 2.x no Linux Mint 22 Wilma<br>

[![Arduino 2.x](http://img.youtube.com/vi/ByK8ADwI2mY/0.jpg)](https://www.youtube.com/watch?v=ByK8ADwI2mY "Arduino 2.x")

Link da vídeo aula: https://www.youtube.com/watch?v=ByK8ADwI2mY

Site Oficial do Arduino IDE: https://www.arduino.cc/<br>
Projeto do Github do Arduino IDE 2.x: https://github.com/arduino/arduino-ide<br>
Site Oficial do Arduino Cloud: https://cloud.arduino.cc/<br>
Site Oficial do Arduino Web Editor: https://create.arduino.cc<br>
Site Oficial do Arduino IoT: https://create.arduino.cc/iot/things<br>
Site Oficial do Arduino Profile: https://id.arduino.cc/<br>
Site Oficial do Fritzing: https://fritzing.org/<br>
Site Oficial do Tinkercad: https://www.tinkercad.com/

O QUE É E PARA QUE SERVER O ARDUINO: Arduino é uma plataforma programável de prototipagem eletrônica de placa única e hardware livre, que permite aos usuários criar objetos eletrônicos interativos e independentes, usando o microcontrolador Atmel AVR ou ARM com suporte de entrada saída embutido, uma linguagem de programação padrão, essencialmente C/C++.

O QUE É E PARA QUE SERVER O FRITZING: Fritzing é uma iniciativa de código aberto para desenvolver um software tipo CAD amador para design de hardware eletrônico, para apoiar designers e artistas prontos para deixar de experimentar um protótipo e construir um circuito mais permanente com uma Placa de Circuito Impresso.

O QUE É E PARA QUE SERVER O TINKERCAD: O Tinkercad é um programa didático e versátil que possui uma coleção online gratuita de ferramentas de software que ajudam as pessoas de todo o mundo a pensar, criar e produzir.

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

#02_ Plugar o Arduino na porta USB no Linux Mint<br>
```bash
#OBERVAÇÃO: verificar se os LED's de indicação do Arduino começa a piscar
```

#03_ Instalando as Dependências desse procedimento no Linux Mint<br>
```bash
#instalação das dependências desse procedimento no Linux Mint 20.x e 21.x
sudo apt install git vim python2 python3 pip

#instalação das dependências desse procedimento no Linux Mint 22.x
sudo apt install git vim python3 python3-pip
```

#04_ Clonando o Repositório do Projeto do Instalado do Arduino-IDE do Github<br>
```bash
#clocando o projeto do Github
git clone https://github.com/vaamonde/arduino
```

#05_ Acessando o diretório clocando do Arduino<br>
```bash
#acessando o repositório clonado
cd arduino/
```

#06_ Executando o script de Instalação do Arduino IDE 2.x no Linux Mint<br>
```bash
#INSTALAÇÃO DO ARDUINO IDE NO LINUX MINT 20.x
bash install20.sh

#INSTALAÇÃO DO ARDUINO IDE NO LINUX MINT 21.x
bash install21.sh

#INSTALAÇÃO DO ARDUINO IDE NO LINUX MINT 22.x
bash install22.sh
```

#07_ Executando o Arduino IDE 2.x no Linux Mint<br>
```bash
#executando o binário do arquivo no Linux Mint
arduino-20
```

#08_ Verificando as Informações do Hardware do Arduino no Linux Mint<br>
```bash
#configuração básica da IDE do Arduino
Arduino IDE 2.2.x
  Tools
    Board "Arduino Uno"
    Port: "/dev/ttyACM0"
    Get Board Info
```

#09_ Executando um projeto básico do Arduino IDE no Linux Mint<br>
```bash
#iniciando um script de teste do Arduino
File
  Examples
    01. Basics
      Blink
        Upload
```

#10_ Verificando as Informações do Hardware do Arduino utilizando o Arduino-Cli<br>
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#utilizar o Arduino CLI para verificar informações do hardware
arduino-cli
arduino-cli version
arduino-cli board list
```