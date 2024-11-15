#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 09/10/2021<br>
#Data de atualização: 13/11/2024<br>
#Versão: 0.16<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

[![Swap Off](http://img.youtube.com/vi/CLxesX7eKs4/0.jpg)](https://www.youtube.com/watch?v=CLxesX7eKs4 "Swap Off")

Link da vídeo aula: https://www.youtube.com/watch?v=CLxesX7eKs4

#Partição Linux Swap (Memória Virtual): https://www.guiafoca.org/guiaonline/intermediario/ch05s07.html<br>
#Tabela de Referência do Swapfile: https://docs.rackspace.com/support/how-to/create-remove-swap-file-in-ubuntu/<br>
#Gerenciamento de Energia/Suspender e Hibernar: https://wiki.archlinux.org/title/Power_management/Suspend_and_hibernate

DIFERENÇAS ENTRE PARTIÇÃO SWAP E SWAPFILE (Memória Virtual): partição Swap é um espaço restrito 
que armazena uma quantidade de memória física a ser utilizada quando o sistema operacional fica 
sobrecarregado. O swap em arquivo passou a ter o mesmo desempenho do swap em partição, trazendo
vantagens em relação a partição swap.

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

#01_ Verificando a quantidade de memória RAM no Linux Mint
```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando a memória RAM com o INXI
#opção do comando inxi: -m (memory), xxx (extra data)
sudo inxi -mxxx

#verificando a memória RAM com o FREE
#opção do comando free: -h (human)
sudo free -h
```

#02_ Desativando o Arquivo de Swapfile do Linux Mint
```bash
#verificando o status da Swapfile
#opção do comando swapon: --show (Display a definable table of swap areas)
sudo swapon --show

#verificando o arquivo de Swapfile
#opção do comando ls: -l (use a long listing format), -h (human-readable)
sudo ls -lh /swapfile

#verificando o espaço em disco utilizado
#opção do coma do df: -h (human-readable)
sudo df -h

#OPÇÃO DO INXI PARA O LINUX MINT 20.x
#opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
sudo inxi -Duxxx

#OPÇÃO DO INXI PARA O LINUX MINT 21.x E 22.X
#opção do comando inxi: -Duxxx -D (disk), -P (Partition), -xxx (extra data levels)
sudo inxi -DPxxx

#desligando o Swapfile
#opção do comando swapoff: -v (verbose)
sudo swapoff -v /swapfile

#verificando o status da Swapfile
#opção do comando swapon: --show (Display a definable table of swap areas)
sudo swapon --show

#Opção-01: Comentar a linha de configuração do Swapfile no arquivo fstab
sudo apt install vim smartmontools

#editar o arquivo de configuração do FSTAB
sudo vim /etc/fstab

#entrando no modo de edição do editor de texto VIM
INSERT

  #Comentar a linha: 12 do Swapfile
  #swapfile	none	swap	sw	0	0

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#OBSERVAÇÃO IMPORTANTE: SÓ UTILIZAR A SEGUNDA OPÇÃO SE FOR REALMENTE NECESSÁRIO

#Opção-02: Remover a linha de configuração do Swapfile no arquivo fstab

#OBSERVAÇÃO: utilizar essa opção somente se necessário, recomendo comentar a linha do 
#swapfile no arquivo fstab do procedimento anterior.
#opção do comando sed: -i (in-place), /^\ (início da lista + escape), /d (delete)
sudo sed -i ′/^\/swapfile/d′ /etc/fstab

#listando o arquivo de Swapfile
#opção do comando ls: -l (list long format), -h (humman-read)
sudo ls -lh /swapfile

#removendo o arquivo de Swapfile
#opção do comando rm: -v (verbose)
sudo rm -v /swapfile

#Reiniciar o Linux Mint para verificar se o Swapfile foi removido.
sudo reboot

#Verificando as informações do Swapfile no Linux Mint
#opção do comando df: -h (human-readable)
sudo swapon --show
sudo df -h

#OPÇÃO DO INXI PARA O LINUX MINT 20.x
#opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
sudo inxi -Duxxx

#OPÇÃO DO INXI PARA O LINUX MINT 21.x e 22.x
#opção do comando inxi: -Duxxx -D (disk), -P (Partition), -xxx (extra data levels)
sudo inxi -DPxxx
```

#03_ Verificando o serviço do TRIM SSD ATA no Linux Mint
```bash
#OBSERVAÇÃO IMPORTANTE: Um comando trim permite que um sistema operacional informe a uma unidade 
#de estado sólido quais blocos de dados não são mais considerados 'em uso' e, portanto, podem ser 
#apagados internamente. O Trim foi introduzido logo após a introdução dos SSDs.

#verificando as informações de partições e discos com o fdisk
#opção do comando fdisk: -l (list)
sudo fdisk -l

#verificando as informações de partições e discos com o smartctl
#opção do comando smartctl: -a (all)
sudo smartctl -a /dev/MUDAR_PARA_SEU_HD (VEJA A LINHA: Disco do comando fdisk)

#verificando as informações do TRIM no diretório com o comando fstrim
#opção do comando fstrim: -v (verbose)
sudo fstrim -v /home/MUDAR_PARA_O_SEU_USUÁRIO

#verificando o status do serviço do FSTRIM (padrão desativado: Active: inactive (dead))
sudo systemctl status fstrim

#verificando o status do serviço do FSTRIM.TIMER (padrão ativado: Active: active (waiting))
sudo systemctl status fstrim.timer
```

#04_ Verificando o serviço de Suspender/Hibernação no Linux Mint	
```bash
#OBSERVAÇÃO IMPORTANTE: por padrão o serviço de hibernação está desativado no Linux Mint, para 
#utilizar esse recurso é necessário utilizar o swapfile. A comunidade do Ubuntu recomenda usar
#o software Userspace Software Suspend (uswsusp) para o gerenciamento da hibernação.

#DIFERENÇAS ENTRE SUSPENDER E HIBERNAÇÃO: O modo “Hibernar” deixa seu notebook em um modo de 
#baixo consumo, onde seu computador fica quase “desligado” para economizar energia ao máximo. 
#Já o modo “Suspender” apenas desliga sua tela e deixa o computador suspenso temporariamente. 
#Outra diferença entre os dois modos, está na hora de voltar ao trabalho.

#verificando o status do serviço do HIBERNATE.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status hibernate.target 

#verificando o status do serviço do SUSPEND.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status suspend.target 

#verificando o status do serviço do SUSPEND-THEN-HIBERNATE.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status suspend-then-hibernate.target 
```

#05_ Limpeza do Cache da Memória RAM no Linux Mint
```bash
#OBSERVAÇÃO IMPORTANTE: no vídeo eu não falo sobre a limpeza do cache da memória RAM do Linux Mint, 
#em todos os sistemas operacionais encontramos caches que possuem arquivos indesejados que podem 
#prejudicar o nosso sistema.

#PAGE CACHE também chamado de Disk Cache é uma cópia de parte dos dados do disco, mantida na memória 
#RAM, pelo sistema operacional.

#DENTRIES a palavra “dentry” é uma abreviatura para “directory entry” (entrada de diretório), uma 
#dentry é nada além de um componente específico no caminho para um arquivo a partir da raiz do 
#sistema. Sua função é prover acesso a arquivos e diretórios.

#INODES “inode” é abreviatura para “index node“. Em um sistema de arquivos Unix, um inode é uma 
#estrutura de dados usada para representar um objeto do sistema de arquivos – qual seja um arquivo, 
#um diretório etc.

#BUFFERS memória usada temporariamente para armazenar dados em tráfego no sistema. Utilizando os 
#exemplos de comandos demonstrados neste artigo podemos efetuar a limpeza de Inodes, cache de 
#disco e File System no Linux de forma simples e rápida, sem necessidade de reiniciar o computador.

#Limpando o Page Cache da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 1 > /proc/sys/vm/drop_caches'
sudo free -mh

#Limpando o Dentries e Inodes da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 2 > /proc/sys/vm/drop_caches'
sudo free -mh

#Limpando o Page Cache, Dentries e Inodes da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
sudo free -mh
```
