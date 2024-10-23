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

#Instalação do Docker CE no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Docker CE no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64
#Instalação do Docker CE no Linux Mint 22 Wilma x64<br>

[![Docker CE](http://img.youtube.com/vi/iOI6V5iR9Cw/0.jpg)](https://www.youtube.com/watch?v=iOI6V5iR9Cw "Docker CE")

Link da vídeo aula: https://www.youtube.com/watch?v=iOI6V5iR9Cw

Site Oficial do Docker: https://www.docker.com/<br>
Site Oficial do Docker Hub: https://hub.docker.com/search?q=

O QUE É E PARA QUE SERVER O DOCKER CE: Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus próprios softwares, bibliotecas e arquivos de configuração

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

#02_ Instalando as Dependência do Docker-CE Community no Linux Mint<br>
```bash
#instalação das dependências básicas do Docker CE
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install vim git python3 python3-pip apt-transport-https ca-certificates curl \
software-properties-common linux-image-generic linux-image-extra-virtual lsof jq
```

#03_ Adicionando a Chave GPG do Docker CE no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO,
#OS COMANDOS DE ADICIONAR OU CONVERTER AS CHAVES GPG NO LINUX MINT NÃO MOSTRA NA
#TELA O RESULTADO.

#ADICIONANDO AS CHAVES DO REPOSITÓRIO DO DOCKER-CE NO LINUX MINT 20.x
#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#BAIXANDO A CHAVE DO REPOSITÓRIO DO DOCKER-CE NO LINUX MINT 21.x E 22.x
#opções do comando wget: -q (quiet)
wget -q https://download.docker.com/linux/ubuntu/gpg 

#CONVERTENDO A CHAVE DO REPOSITÓRIO DO DOCKER-CE NO LINUX LINUX MINT 21.x E 22.x
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador >: Redireciona a saída padrão (STDOUT)
#opção do redirecionador 2>&1: Conecta a saída de erro na saída padrão
cat gpg | gpg --dearmor | sudo tee /usr/share/keyrings/docker-ce.gpg > /dev/null 2>&1
```

#04_ Adicionando o Repositório do Docker-CE Community no Linux Mint<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CUIDADO COM A VERSÃO DO LINUX MINT QUE VOCÊ ESTÁ USANDO,
#OS COMANDOS DE ADICIONAR REPOSITÓRIO NÃO MOSTRA RESULTADO NA TELA, CUIDADO PARA
#NÃO EXECUTAR MAIS DE UMA VEZ O COMANDO PARA NÃO ADICIONAR MÚLTIPLAS ENTRADAS NO
#ARQUIVO EM: /etc/apt/sources.list.d/additional-repositories.list.

#ADICIONANDO O REPOSITÓRIO DO DOCKER-CE NO LINUX MINT 20.x
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#ADICIONANDO O REPOSITÓRIO DO DOCKER-CE NO LINUX MINT 21.x
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu jammy stable"

#ADICIONANDO O REPOSITÓRIO DO DOCKER-CE NO LINUX MINT 22.x
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu noble stable"
```

#05_ Atualizando as Lista do Apt com o novo Repositório do Docker-CE Community no Linux Mint<br>
```bash
#atualizando as lista do apt com o novo repositório do Docker-CE
sudo apt update
```

#06_ Instalando o Docker-CE Community e suas Dependências no Linux Mint<br>
```bash
#instalando o Docker-CE no Linux Mint 20.x e 21.x
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends docker-ce docker-ce-cli containerd.io docker-buildx-plugin \
docker-compose-plugin cgroup-lite

#instalando o Docker-CE no Linux Mint 22.x
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends docker-ce docker-ce-cli containerd.io docker-buildx-plugin \
docker-compose-plugin cgroup-lite

#OBSERVAÇÃO IMPORTANTE: a versão do Docker-Compose utilizando o Sources List do Docker-CE está
#desatualizada em relação ao projeto do Github: https://github.com/docker/compose, é recomendado
#baixar o Binário do projeto e atualizar a versão no Linux Mint com o procedimento abaixo (NÃO
#COMENTADO NO VÍDEO)

#baixando o Docker Compose do Projeto do Github
#opção do comando curl: -S (show-error), -L (location), -o (output) (Build 2.29.x 23/10/2024)
sudo curl -SL https://github.com/docker/compose/releases/download/v2.29.7/docker-compose-linux-x86_64 -o /usr/bin/docker-compose

#alterando as permissões do Binário do Docker Compose	
#opção do comando chmod: -v (verbose), 755 (User=RWX,Group-R-X,Other-R-X)
sudo chmod -v 755 /usr/bin/docker-compose
```

#07_ Adicionando o Usuário Local no Grupo do Docker-CE Community no Linux Mint<br>
```bash
#adicionando o seu usuário no grupo do Docker-CE
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G docker $USER

#fazendo login em um novo grupo do Docker-CE
newgrp docker

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo Docker-CE
sudo getent group docker

#recomendado reinicializar a máquina para aplicar as permissões
sudo reboot
```

#08_ Verificando o status do serviço, Versões e Informações do Docker-CE no Linux Mint<br>
```bash
#verificando o status do serviço do Docker-CE
sudo systemctl status docker

#verificando as versões do Docker-CE e Docker Compose
docker version
docker-compose version

#verificando informações detalhadas do Sistema do Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/system/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/system/info/
docker system info
```

#09_ Iniciando um Container de Teste do Docker-CE<br>
```bash
#pesquisando o container de Hello World do Docker-CE
#link de consulta do Docker Hub: https://hub.docker.com/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/search/
#opção do comando docker: search (Search the Docker Hub for images)
docker search hello-world

#iniciando o container de Hello World do Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/run/
#opção do comando docker: run (Run a command in a new container)
docker run hello-world
```

#10_ Iniciando um Container de Teste do Ubuntu no Docker-CE<br>
```bash
#pesquisando o container do Ubuntu do Docker-CE
#link de consulta do Docker Hub: https://hub.docker.com/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/search/
#opção do comando docker: search (Search the Docker Hub for images)
docker search ubuntu

#iniciando o container do Ubuntu Bash do Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/run/
#opção do comando docker: container (Manage containers), run (Create and run a new container 
#from an image), -i --interactive (Keep STDIN open even if not attached), -t --tty (Allocate 
#a pseudo-TTY), ubuntu (imagem docker hub), bash (command bash/shell terminal)
docker container run -it ubuntu bash

#executar os comandos básicos de Linux dentro do container Ubuntu Bash
cat /etc/os-release                             #verificação do Sistema Operacional 
apt update                                      #atualizando as listas do apt
apt install net-tools iputils-ping traceroute   #instalando os software básicos
ifconfig                                        #verificando as informações de placa de rede
ping 8.8.8.8                                    #pingando o endereço de DNS do Google
traceroute 8.8.8.8                              #traçando a rota do endereço de DNS do Google

#OBSERVAÇÃO IMPORTANTE: quando você utiliza o comando: exit o Container em Docker e desligado
#(stopping), caso você queira sair do Container sem desligar pressione: Ctrl + P ou Ctrl + Q
#ou a tecla de atalho: Ctrl + D que faz a função do comando: exit.
exit
```

#11_ Verificando as Imagens e Containers no Docker-CE<br>
```bash
#listando todas as imagens de containers no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/ls/
#opção do comando docker: image (Manage images), ls (List images)
docker image ls

#listando os container em execução no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/ls/
#opção do comando docker: container (Manage containers), ls (List containers), -a --all (Show all
#images (default hides intermediate images))
docker container ls -a
```

#12_ Limpando todas as Imagens, Container, Volumes e Redes no Docker CE<br>
```bash
#limpando todos os containers no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/prune/
#opção do comando docker: container (Manage containers), prune (Remove all stopped containers)
#OBSERVAÇÃO IMPORTANTE: MUITO CUIDADO NA HORA DE USAR ESSA OPÇÃO EM SERVIDORES DE PRODUÇÃO
#QUE ESTÁ RODANDO PRINCIPALMENTE O PORTAINER.
docker container prune
  WARNING! This will remove all stopped containers.
  Are you sure you want to continue? [y/N] y <Enter>

#listando os container em execução no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/container/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/ls/
#opção do comando docker: container (Manage containers), ls (List containers), -a --all (Show all
#images (default hides intermediate images))
docker container ls -a

#limpando todos as imagens de containers no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/prune/
#opção do comando docker: image (Manage images), prune (Remove unused images)
#OBSERVAÇÃO IMPORTANTE: MUITO CUIDADO NA HORA DE USAR ESSA OPÇÃO EM SERVIDORES DE PRODUÇÃO
#QUE ESTÁ RODANDO PRINCIPALMENTE O PORTAINER.
docker image prune
  WARNING! This will remove all images without at least one container associated to them.
  Are you sure you want to continue? [y/N] y <Enter>

#listando todas as imagens de containers no Docker-CE
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/
#Documentação do Docker-CE: https://docs.docker.com/reference/cli/docker/image/ls/
#opção do comando docker: image (Manage images), ls (List images)
docker image ls
```