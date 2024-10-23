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
#Versão: 0.09<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Microsoft Powershell no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Microsoft Powershell no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Microsoft Powershell no Linux Mint 22 Wilma<br>

[![Powershell](http://img.youtube.com/vi/1yUXXUtvl0o/0.jpg)](https://www.youtube.com/watch?v=1yUXXUtvl0o "Powershell")

Link da vídeo aula: https://www.youtube.com/watch?v=1yUXXUtvl0o

Site Oficial do PowerShell: https://docs.microsoft.com/pt-br/powershell/scripting/overview?view=powershell-7.2<br>
Site Oficial do .NET SDK: https://docs.microsoft.com/pt-br/dotnet/core/sdk<br>
Site Oficial do .NET Runtime: https://docs.microsoft.com/pt-br/dotnet/framework/get-started/

Documentação do PowerShell: https://docs.microsoft.com/pt-br/powershell/scripting/install/install-ubuntu?view=powershell-7.2<br>
Documentação do .NET SDK e Runtime: https://docs.microsoft.com/pt-br/dotnet/core/install/linux-ubuntu#2004-

O QUE É E PARA QUE SERVER O POWERSHELL: PowerShell é um shell de linha de comando baseado em tarefas e linguagem de script desenvolvido no .NET. Inicialmente, apenas um componente do Windows, o PowerShell tornou-se de código aberto e multiplataforma em 18 de agosto de 2016 com a introdução do PowerShell Core.

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

#02_ Instalando as Dependências do PowerShell e do .NET SDK e Runtime no Linux Mint<br>
```bash
#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 20.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apt-transport-https software-properties-common libc6 libgcc1 \
libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g vim git python2 python3

#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 21.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apt-transport-https software-properties-common libc6 libgcc-s1 \
libgssapi-krb5-2 libicu70 libssl3 libstdc++6 zlib1g vim git python2 python3

#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 22.x
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install apt-transport-https software-properties-common libc6 libgcc-s1 \
libgssapi-krb5-2 libicu74 libssl3t64 libstdc++6 zlib1g vim git python3 python3-pip
```

#03_ Baixando o repositório oficial do PowerShell, .NET SDK e Runtime no Linux Mint<br>
```bash
#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 20.x
#opção do comando wget: -q (quiet)
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 21.x
#opção do comando wget: -q (quiet)
wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb

#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 22.x
#opção do comando wget: -q (quiet)
wget -q https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb
```

#04_ Instalando o repositório oficial do PowerShell, .NET SDK e Runtime no Linux Mint<br>
```bash
#instalando o repositório da Microsoft no Linux Mint
#opção do comando dpkg: -i (install packet)
sudo dpkg -i packages-microsoft-prod.deb
```

#05_ Atualizando as Lista do Apt com os novos repositórios do Powershell no Linux Mint<br>
```bash
#atualizando as lista do apt com o novo repositório
sudo apt update
```

#06_ Instalando o PowerShell, .NET SDK e Runtime no Linux Mint<br>
```bash
#instalando o Powershell e suas dependências no Linux Mint 20.x e 21.x
sudo apt install powershell dotnet-sdk-8.0 aspnetcore-runtime-8.0

#OBSERVAÇÃO IMPORTANTE: A PARTIR DA VERSÃO DO UBUNTU 24.04.x E DO LINUX MINT 22.x O 
#REPOSITÓRIO OFICIAL DA MICROSOFT NÃO FORNECE MAIS O POWERSHELL POR PADRÃO, SENDO 
#NECESSÁRIO BAIXAR DO GITHUB A VERSÃO MAIS NOVA E FAZER A INSTALAÇÃO MANUALMENTE

#instalando as dependências do Powershell no Linux Mint 22.x
sudo apt install dotnet-sdk-8.0 aspnetcore-runtime-8.0

#baixando o a última versão do Powershell no Github (link atualizando em 23/10/2024)
wget https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/powershell-lts_7.4.6-1.deb_amd64.deb

#instalando manualmente o Powershell no Linux Mint 22.x
#opções do comando dpkg: -i (install), ignore-depends (Ignore dependency-checking)
sudo dpkg -i --ignore-depends=libicu72 powershell*.deb
```

#07_ Rodando o PowerShell no Linux Mint<br>
```bash
#acessando o Powershell via Terminal
pwsh
```

#08_ Utilizando os comandos Básicos do PowerShell no Linux Mint<br>
```bash
#principais comandos do Powershell no Linux Mint
#Site de referências dos comandos do Powershell: https://ss64.com/ps/
Get-Date        - informações de data e hora do linux
Get-Host        - informações detalhadas do PowerShell
Get-Location    - informações da localização (Path)
Get-PSDrive     - informações do Hard Disk
Get-Process     - informações de processos
Get-Uptime      - informações do tempo de uso do linux
Get-Command     - lista todos os comandos que estão disponíveis
Get-Module      - lista todos os módulos que estão disponíveis
Get-History     - imprimir todo o histórico de comandos do PowerShell
dir ou ls       - lista o conteúdo do diretório
exit            - sair do PowerShell
```