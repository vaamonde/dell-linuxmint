#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 09/10/2021<br>
#Data de atualização: 12/12/2022<br>
#Versão: 0.10<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Partição Linux Swap (Memória Virtual): https://www.guiafoca.org/guiaonline/intermediario/ch05s07.html<br>
#Tabela de Referência do Swapfile: https://docs.rackspace.com/support/how-to/create-remove-swap-file-in-ubuntu/<br>
#Gerenciamento de Energia/Suspender e Hibernar: https://wiki.archlinux.org/title/Power_management/Suspend_and_hibernate

DIFERENÇAS ENTRE PARTIÇÃO SWAP E SWAPFILE (Memória Virtual): partição Swap é um espaço restrito 
que armazena uma quantidade de memória física a ser utilizada quando o sistema operacional fica 
sobrecarregado. O swap em arquivo passou a ter o mesmo desempenho do swap em partição, trazendo
vantagens em relação a partição swap.

#01_ Verificando a quantidade de memória RAM no Linux Mint

	Terminal: Ctrl + Alt + T

	  #opção do comando inxi: -m (memory), xxx (extra data)
	_ sudo inxi -mxxx
	
	  #opção do comando free: -h (human)
	_ sudo free -h

#02_ Desativando o Arquivo de Swapfile do Linux Mint

	  #opção do comando swapon: --show (Display a definable table of swap areas)
	  #opção do comando ls: -l (use a long listing format), -h (human-readable)
	  #opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
	  #opção do coma do df: -h (human-readable)
	_ sudo swapon --show
	_ sudo ls -lh /swapfile
	_ sudo inxi -Duxxx
	_ sudo df -h

	  #opção do comando swapoff: -v (verbose)
	_ sudo swapoff -v /swapfile
	_ sudo swapon --show

	#Opção-01: Comentar a linha de configuração do Swapfile no arquivo fstab
	_ sudo apt install vim smartmontools
	_ sudo vim /etc/fstab
		INSERT
			#Comentar a linha do Swapfile (salvar e sair: Esc Shift: x)
			#swapfile	none	swap	sw	0	0
		ESC SHIFT :x <Enter>
	
	#Opção-02: Remover a linha de configuração do Swapfile no arquivo fstab
	#OBSERVAÇÃO: utilizar essa opção somente se necessário, recomendo comentar a linha do 
	#swapfile no arquivo fstab.
	  #opção do comando sed: -i (in-place), /^\ (início da lista + escape), /d (delete)
	_ sudo sed -i ′/^\/swapfile/d′ /etc/fstab

	  #opção do comando rm: -v (verbose)
	_ sudo ls -lh /swapfile
	_ sudo rm -v /swapfile 

	#Reiniciar o Linux Mint para verificar se o Swapfile foi removido.
	_ sudo reboot

	#Verificando as informações do Swapfile no Linux Mint
	_ sudo swapon --show
	_ sudo inxi -Duxxx
	_ sudo df -h

#03_ Verificando o serviço do TRIM SSD ATA no Linux Mint

	OBSERVAÇÃO IMPORTANTE: Um comando trim permite que um sistema operacional informe a uma	unidade 
	de estado sólido quais blocos de dados não são mais considerados 'em uso' e, portanto, podem ser 
	apagados internamente. O Trim foi introduzido logo após a introdução dos SSDs.

	  #opção do comando fdisk: -l (list)
	  #opção do comando smartctl: -a (all)
	  #opção do comando fstrim: -v (verbose)
	_ sudo fdisk -l
	_ sudo smartctl -a /dev/nvme0n1
	_ sudo fstrim -v /home/vaamonde

	_ sudo systemctl status fstrim (padrão desativado: Active: inactive (dead))
	_ sudo systemctl status fstrim.timer (padrão ativado: Active: active (waiting))

#04_ Verificando o serviço de Suspender/Hibernação no Linux Mint	

	OBSERVAÇÃO IMPORTANTE: por padrão o serviço de hibernação está desativado no Linux Mint, para 
	utilizar esse recurso é necessário utilizar o swapfile. A comunidade do Ubuntu recomenda usar
	o software Userspace Software Suspend (uswsusp) para o gerenciamento da hibernação.

	DIFERENÇAS ENTRE SUSPENDER E HIBERNAÇÃO: O modo “Hibernar” deixa seu notebook em um modo de 
	baixo consumo, onde seu computador fica quase “desligado” para economizar energia ao máximo. 
	Já o modo “Suspender” apenas desliga sua tela e deixa o computador suspenso temporariamente. 
	Outra diferença entre os dois modos, está na hora de voltar ao trabalho.

	_ sudo systemctl status hibernate.target (padrão desativado: Active: inactive (dead))
	_ sudo systemctl status suspend.target (padrão desativado: Active: inactive (dead))
	_ sudo systemctl status suspend-then-hibernate.target (padrão desativado: Active: inactive (dead))

#05_ Limpeza do Cache da Memória RAM no Linux Mint

	OBSERVAÇÃO IMPORTANTE: no vídeo eu não falo sobre a limpeza do cache da memória RAM do Linux Mint, 
	em todos os sistemas operacionais encontramos caches que possuem arquivos indesejados que podem 
	prejudicar o nosso sistema.

	PAGE CACHE também chamado de Disk Cache é uma cópia de parte dos dados do disco, mantida na memória 
	RAM, pelo sistema operacional.

	DENTRIES a palavra “dentry” é uma abreviatura para “directory entry” (entrada de diretório), uma 
	dentry é nada além de um componente específico no caminho para um arquivo a partir da raiz do 
	sistema. Sua função é prover acesso a arquivos e diretórios.

	INODES “inode” é abreviatura para “index node“. Em um sistema de arquivos Unix, um inode é uma 
	estrutura de dados usada para representar um objeto do sistema de arquivos – qual seja um arquivo, 
	um diretório etc.

	BUFFERS memória usada temporariamente para armazenar dados em tráfego no sistema. Utilizando os 
	exemplos de comandos demonstrados neste artigo podemos efetuar a limpeza de Inodes, cache de 
	disco e File System no Linux de forma simples e rápida, sem necessidade de reiniciar o servidor.

	#Limpando o PageCache da Memória RAM
	_ sudo free -mh (coluna buffer/cache)
	_ sudo sync; sudo sh -c 'echo 1 > /proc/sys/vm/drop_caches'
	_ sudo free -mh

	#Limpando o Dentries e Inodes da Memória RAM
	_ sudo free -mh (coluna buffer/cache)
	_ sudo sync; sudo sh -c 'echo 2 > /proc/sys/vm/drop_caches'
	_ sudo free -mh

	#Limpando o Page Cache, Dentries e Inodes da Memória RAM
	_ sudo free -mh (coluna buffer/cache)
	_ sudo sync; sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
	_ sudo free -mh