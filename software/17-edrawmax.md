#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 12/11/2023<br>
#Data de atualização: 28/07/2024<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Wondershare EdrawMax v11.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Wondershare EdrawMax v11.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Wondershare EdrawMax v11.x no Linux Mint 22 Wilma x64<br>

[![EdrawMax](http://img.youtube.com/vi/ISws4p7nggk/0.jpg)](https://www.youtube.com/watch?v=ISws4p7nggk "EdrawMax")

Link da vídeo aula: https://www.youtube.com/watch?v=ISws4p7nggk

Site Oficial do Edraw Soft: https://www.edrawsoft.com/pt/<br>
Site do EdrawMax On-Line: https://www.edrawmax.com/online/pt/

O QUE É E PARA QUE SERVER O EDRAWMAX: O Edraw Max é uma solução tudo-em-um de criação de<br>
diagramas que permite às empresas desenvolver uma variedade de diagramas para ilustrar fluxos<br>
de trabalho, plantas baixas, organograma, entre outros.

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

#01_ Atualização do Sistema Operacional Linux Mint<br>
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
sudo
```

#02_ Download do EdrawMax para o Linux Mint<br>
```bash
Site do download: https://www.edrawsoft.com/pt/download-edrawmax.html
	Versão para: Debian, Ubuntu, Mint 64 bits: <Teste Grátis>
	Arquivo (download feito em 22/12/2022): edrawmax_11.5.6_en_x86_64.deb
```

#03_ Instalando o EdrawMax no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: recomendo utilizar o Gerenciador de Instalação de Pacotes
#do Linux Mint: Gdebi, clicando duas vezes no arquivo: edrawmax_11.5.6_en_x86_64.deb
#Seguir os procedimentos na tela.

#OBSERVAÇÃO IMPORTANTE: teste feito no Linux Mint 21.1 Vera do instalador do pacote
#do EdrawMax via Gerenciador de Instalação Gdebi não funcionou corretamente, sendo
#necessário fazer a instalação via linha de comando, conforme abaixo:

01) Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
02) Digitar o comando: sudo dpkg -i edrawmax_11.*.deb;
03) Digitar a senha do seu usuário e aguardar a finalização da instalação.
```

#04_ Utilizando o EdrawMax On-Line via Navegaor
```bash
Site do EdrawMax On-Line: https://www.edrawmax.com/online/pt/
```