#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 04/08/2024<br>
#Versão: 0.16<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Docker CE no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Docker CE no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64
#Instalação do Docker CE no Linux Mint 22 Wilma x64<br>

[![Docker CE](http://img.youtube.com/vi/iOI6V5iR9Cw/0.jpg)](https://www.youtube.com/watch?v=iOI6V5iR9Cw "Docker CE")

Link da vídeo aula: https://www.youtube.com/watch?v=iOI6V5iR9Cw

Site Oficial do Docker: https://www.docker.com/<br>
Site Oficial do Docker Hub: https://hub.docker.com/search?q=

O QUE É E PARA QUE SERVER O DOCKER CE: Docker é um conjunto de produtos de plataforma como<br>
serviço que usam virtualização de nível de sistema operacional para entregar software em<br>
pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus<br>
próprios softwares, bibliotecas e arquivos de configuração

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
sudo apt clean
```

#02_ Instalando as Dependência do Docker CE no Linux Mint<br>
```bash
#instalação das dependências básicas do Docker CE
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg-agent
```

#03_ Adicionando a Chave GPG do Docker CE no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO,
#OS COMANDOS DE ADICIONAR OU CONVERTER AS CHAVES GPG NO LINUX MINT NÃO MOSTRA NA
#TELA O RESULTADO.

#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 20.x
#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#BAIXANDO A CHAVE DO REPOSITÓRIO NO LINUX MINT 21.x E 22.x
#opções do comando wget: -q (quiet)
wget -q https://download.docker.com/linux/ubuntu/gpg 

#CONVERTENDO A CHAVE DO REPOSITÓRIO NO LINUX LINUX MINT 21.x E 22.x
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador >: Redireciona a saída padrão (STDOUT)
#opção do redirecionador 2>&1: Conecta a saída de erro na saída padrão
cat gpg | gpg --dearmor | sudo tee /usr/share/keyrings/docker-ce.gpg > /dev/null 2>&1
```

#04_ Adicionando o Repositório do Docker CE no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO,
#OS COMANDOS DE ADICIONAR REPOSITÓRIO NÃO MOSTRA RESULTADO NA TELA, CUIDADO PARA
#NÃO EXECUTAR MAIS DE UMA VEZ O COMANDO PARA NÃO ADICIONAR MÚLTIPLAS ENTRADAS NO
#ARQUIVO EM: /etc/apt/sources.list.d/additional-repositories.list.

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu jammy stable"

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 22.x
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu noble stable"
```

#05_ Atualizando as Lista do Apt com o novo Repositório do Docker CE no Linux Mint<br>
```bash
#atualizando as lista do apt com o novo repositório do Docker
sudo apt update
```

#06_ Instalando o Docker CE e suas Dependências no Linux Mint<br>
```bash
#instalando o Docker CE e Compose no Linux Mint 20.x e 21.x
sudo apt install docker-ce docker-compose git vim python2 python3

#instalando o Docker CE e Compose no Linux Mint 22.x
sudo apt install docker-ce docker-compose git vim python3

#OBSERVAÇÃO IMPORTANTE: a versão do Docker-Compose utilizando o Sources List do Docker-CE está
#desatualizada em relação ao projeto do Github: https://github.com/docker/compose, é recomendado
#baixar o Binário do projeto e atualizar a versão no Linux Mint com o procedimento abaixo (NÃO
#COMENTADO NO VÍDEO)

#removendo o Docker Compose
#opção do comando apt: purgue (remove --purge packages)
sudo apt purge docker-compose

#baixando o Docker Compose do Projeto do Github
#opção do comando curl: -S (show-error), -L (location), -o (output) (Build 2.29.x 04/08/2024)
sudo curl -SL https://github.com/docker/compose/releases/download/v2.29.1/docker-compose-linux-x86_64 -o /usr/bin/docker-compose

#alterando as permissões do Binário do Docker Compose	
#opção do comando chmod: -v (verbose), 755 (User=RWX,Group-R-X,Other-R-X)
sudo chmod -v 755 /usr/bin/docker-compose
```

#07_ Adicionando o Usuário Local no Grupo do Docker CE no Linux Mint<br>
```bash
#adicionando o seu usuário no grupo do Docker
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G docker $USER

#fazendo login em um novo grupo do Docker
newgrp docker

#verificando os identificadores de usuário e grupos
id

#recomendado reinicializar a máquina para aplicar as permissões
sudo reboot
```

#08_ Verificando o serviço do Docker CE, Docker Compose, Versões e Informações<br>
```bash
#verificando o status do serviço do Docker CE
sudo systemctl status docker

#verificando as versões do Docker CE e Compose
docker version
docker-compose version

#verificando informações detalhadas do Docker CE
docker info
docker system info
```

#09_ Iniciando um Container de Teste do Docker CE<br>
```bash
#pesquisando o container de Hello World do Docker CE
#opção do comando docker: search (Search the Docker Hub for images)
#link de consulta do Docker Hub: https://hub.docker.com/
docker search hello-world

#pesquisando e iniciando o container de Hello World do Docker CE
#opção do comando docker: run (Run a command in a new container)
#link de consulta do Docker Hub: https://hub.docker.com/
docker run hello-world
```

#10_ Iniciando um Container de Teste do Ubuntu Bash no Docker CE<br>
```bash
#pesquisando e iniciando o container do Ubuntu do Docker CE
#opções do comando docker: search (Search the Docker Hub for images), run (Run a command in 
#a new container), -i (interactive), -t (tty)
docker search ubuntu
docker run -it ubuntu bash

#executar os comandos básicos de Linux dentro do container Ubuntu
cat /etc/os-release
apt update
apt install net-tools iputils-ping
ifconfig
exit
```

#11_ Verificando as Imagens dos Container no Docker CE<br>
```bash
#listando as imagens de containers no Docker
#opção do comando docker: images (List images container on system)
docker images

#listando os container em execução no Docker
#opção do comando docker: ps (List containers)
docker ps
```

#12_ Limpando todas as Imagens, Container, Volumes e Redes no Docker CE<br>
```bash
#opção do comando docker: system (manager docker), prune (Remove unused data), rmi (Remove 
#one or more images), images (List images container on system)
docker system prune
docker rmi hello-world:latest
docker rmi ubuntu:latest
docker images
```