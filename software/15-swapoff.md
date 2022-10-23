#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 09/10/2021<br>
#Data de atualização: 23/10/2022<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64

#Tabela de Referência do Swapfile: https://docs.rackspace.com/support/how-to/create-remove-swap-file-in-ubuntu/

#01_ Verificando a quantidade de memória RAM no Linux Mint

	Terminal: Ctrl + Alt + T
	  #opção do comando inxi: -m (memory), xxx (extra data)
	_ sudo inxi -mxxx
	  #opção do comando free: -h (human)
	_ sudo free -h

#02_ Desativando o Arquivo de Swapfile do Linux Mint

	_ sudo swapon --show

	  #opção do comando swapoff: -v (verbose)
	_ sudo swapoff -v /swapfile

	  #opção do comando sed: -i (in-place), /^\ (início da lista + escape), 
	  #/d (delete)
	_ sudo sed -i ′/^\/swapfile/d′ /etc/fstab

	  #opção do comando rm: -v (verbose)
	_ sudo rm -v /swapfile 

	_ sudo reboot

#03_ Verificando o serviço do TRIM SSD ATA no Linux Mint

	_ sudo systemctl status fstrim
	_ sudo systemctl status fstrim.timer