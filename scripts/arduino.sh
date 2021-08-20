#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 23/01/2021
# Data de atualização: 20/08/2021
# Versão: 0.06
# Testado e homologado para a versão do Linux Mint 20.1 Ulyssa e 20.2 Uma x64
# Testado e homologado para a versão do Arduino IDE v1.8.x, BlockDuino e Fritzing v0.9.x
#
# Arduino é uma plataforma de prototipagem eletrônica de hardware livre e de placa única, 
# projetada com um microcontrolador Atmel AVR com suporte de entrada/saída embutido, uma 
# linguagem de programação padrão, a qual tem origem em Wiring, e é essencialmente C/C++.
#
# Arduino Integrated Development Environment IDE é uma aplicação de plataforma cruzada, 
# escrito em funções de C e C ++. É usado para escrever e fazer upload de programas em 
# placas compatíveis com Arduino, mas também, com a ajuda de núcleos de terceiros, outras 
# placas de desenvolvimento de fornecedores.
#
# O BlocklyDuino é um editor de programação visual baseado na web para Arduino. BlocklyDuino 
# é baseado no Blockly, o editor de programação gráfica baseado na web. Fornece blocos de 
# linguagem de tipo estático e geradores de código para programação em Arduino. O BlocklyDuino 
# também oferece suporte aos blocos Grove para iniciar facilmente a experimentação e o 
# aprendizado baseados em microcontroladores.
#
# O Fritzing é uma iniciativa de código aberto para desenvolver um software tipo CAD amador 
# para design de hardware eletrônico, para apoiar designers e artistas prontos para deixar 
# de experimentar um protótipo e construir um circuito mais permanente com uma Placa de 
# Circuito Impresso. 
#
# Site Oficial do Arduino IDE: https://www.arduino.cc/
# Site Oficial do BlocklyDuino IDE Plugin: https://github.com/BlocklyDuino/BlocklyDuino_IDE_plugin
# Site Oficial do Fritzing: https://fritzing.org/
#
# Vídeo de instalação do Linux Mint 20.1 Ulyssa: https://www.youtube.com/watch?v=jhqmvgMQypo
#
# Variável da Data Inicial para calcular o tempo de execução do script (VARIÁVEL MELHORADA)
# opção do comando date: +%T (Time)
HORAINICIAL=$(date +%T)
#
# Variável do usuário local que vai executar o Arduino IDE
# opção da variável de ambiente USER: usuário atual logado no sistema 
USUARIO=$(echo $USER)
#
# Variável do caminho do Log dos Script utilizado nesse curso (VARIÁVEL MELHORADA)
# opção do shell script: piper | = Conecta a saída padrão com a entrada padrão de outro comando
# opção do shell script: aspas simples ' ' = Protege uma string completamente (nenhum caractere é especial)
# opção do shell script: aspas duplas " " = Protege uma string, mas reconhece $, \ e ` como especiais
# opções do comando cut: -d (delimiter), -f (fields)
# opção da variável de ambiente $0: nome do comando ou script digitado
LOG="$HOME/$(echo $0 | cut -d'/' -f2)"
#
# Declarando as variáveis de download do Arduino IDE, BlocklyDuino e do Fritzing (Links atualizados no dia 23/01/2021)
ARDUINO="https://downloads.arduino.cc/arduino-1.8.15-linux64.tar.xz"
BLOCKLYDUINO="https://github.com/BlocklyDuino/BlocklyDuino_IDE_plugin"
FRITZING="https://github.com/fritzing/fritzing-parts.git"
#
# Script de instalação do Arduino IDE, BlocklyDuino e do Fritzing no Linux Mint 20.1 Ulyssa e 20.2 Uma 
# opção do comando echo: -e (enable interpretation of backslash escapes), \n (new line)
# $0 (variável de ambiente do nome do comando)
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
echo -e "Início do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
clear
#
echo
echo -e "Instalação do Arduino IDE, BlocklyDuino e do Fritzing no Linux Mint 20.x\n"
echo -e "Após a instalação do Arduino IDE digitar no console ou localizar na busca indexada por: arduino.\n"
echo -e "Após a instalação do Fritzing digitar no console ou localizar na busca indexada por: fritzing.\n"
echo -e "Aguarde, esse processo demora um pouco dependendo do seu Link de Internet...\n"
echo -e "Será necessário digitar a senha do seu usuário que tem direitos administrativos do sudo.\n"
sleep 5
#
echo -e "Atualizando o Sources List do Apt, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	sudo apt update &>> $LOG
echo -e "Listas atualizadas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando todo o sistema operacional do Linux Mint, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	sudo apt -y upgrade &>> $LOG
	sudo apt -y full-upgrade &>> $LOG
	sudo apt -y dist-upgrade &>> $LOG
echo -e "Sistema atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando as dependências desse script do Arduino, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	sudo apt -y install members git vim &>> $LOG
echo -e "Dependências instaladas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Removendo os software desnecessários, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	sudo apt -y autoremove &>> $LOG
	sudo apt -y autoclean &>> $LOG
echo -e "Software desnecessários removidos com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Arduino IDE, BlocklyDuino e o Fritzing, aguarde...\n"
#
echo -e "Verificando a conexão com a Porta TTY (USB) do Arduino, aguarde...\n"
# opção do bloco de agrupamento "": Protege uma string, mas reconhece $, \ e ` como especiais
# opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
# opção do redirecionar |: Conecta a saída padrão com a entrada padrão de outro comando
# opção do operador ; (ponto e vírgula): operador que executa vários comandos em sucessão
# opção da variável de ambiente $?: Código de retorno do último comando executado
# opção do operador relacional ==: Igual
if [ "$(sudo lsusb | grep Arduino &>> $LOG ; echo $?)" == "0" ]
	then
		sudo lsusb | grep Arduino
		echo -e "Arduino está conectado na Porta USB do seu computador.\n"
		echo -e "Pressione <Enter> para continuar o script.\n"
		read
		sleep 5
	else
		echo -e "Arduino não está conectado na Porta USB, conecte o Arduino ou verifique a porta"
		echo -e "USB ou cabo USB, execute novamente esse script."
		exit 1
fi
#
echo -e "Verificando a conexão com a Porta Dialout do Arduino, aguarde...\n"
# opção do bloco de agrupamento "": Protege uma string, mas reconhece $, \ e ` como especiais
# opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
# opção do comando ls: -l (listing), -h (human-readable)
# opção do redirecionador >: Redireciona a saída padrão (STDOUT)
# opção do operador ; (ponto e vírgula): operador que executa vários comandos em sucessão
# opção da variável de ambiente $?: Código de retorno do último comando executado
# opção do operador relacional ==: Igual
# opção do caractere curinga *: Qualquer coisa
if [ "$(sudo ls -lh /dev/ttyA* &>> $LOG ; echo $?)" == "0" ]
	then
		sudo ls -lh /dev/ttyACM*
		echo -e "Conexão com a Porta Dialout do Arduino verificada com sucesso.\n"
		echo -e "Alterando as permissões da Porta Dialout para todos os usuários.\n"
		# opção do comando chmod: -v (verbose) a (all users), + (added), r (read), w (write)
		# opção do comando ls: -l (listing), -h (human-readable)
		# opção do caractere curinga *: Qualquer coisa
		sudo chmod -v a+rw /dev/ttyACM*
		sudo ls -lh /dev/ttyACM*
		echo
		echo -e "Pressione <Enter> para continuar o script.\n"
		read
		sleep 5
	else
		echo -e "Conexão com a Porta Dialout do Arduino não está disponível, verifique se você conectou"
		echo -e "corretamente o Arduino na Porta USB, conecte o Arduino ou verifique o cabo USB, execute"
		echo -e "novamente esse script."
		exit 1
fi
#
echo -e "Verificando o grupo de acesso ao Dialout do Arduino, aguarde...\n"
# opção do bloco de agrupamento "": Protege uma string, mas reconhece $, \ e ` como especiais
# opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
# opção do redirecionar |: Conecta a saída padrão com a entrada padrão de outro comando
# opção do redirecionador >: Redireciona a saída padrão (STDOUT)
# opção do operador ; (ponto e vírgula): operador que executa vários comandos em sucessão
# opção da variável de ambiente $?: Código de retorno do último comando executado
# opção do operador relacional ==: Igual
if [ "$(sudo cat /etc/group | grep dialout &>> $LOG ; echo $?)" == "0" ]
	then
		sudo cat /etc/group | grep dialout
		echo -e "Grupo de acesso ao Dialout do Arduino verificado com sucesso.\n"
		echo -e "Verificando os Membros efetivos dos grupos Dialout e Plugdev.\n"
		# opção do comando members: -a (all)
		echo -e "Grupo Dialout: $(sudo members -a dialout)"
		echo -e "Grupo Plugdev: $(sudo members -a plugdev)"
		echo
		echo -e "Adicionando o usuário local: $USUARIO ou Grupo do Dialout.\n"
		# opção do comando usermod: -a (append), -G (groups)
		# opção do comando members: -a (all)
		sudo usermod -a -G dialout $USUARIO
		sudo usermod -a -G plugdev $USUARIO
		sudo usermod -a -G tty $USUARIO
		sudo usermod -a -G uucp $USUARIO
		echo -e "Grupo Dialout: $(sudo members -a dialout)"
		echo -e "Grupo Plugdev: $(sudo members -a plugdev)"
		echo -e "Grupo TTY: $(sudo members -a tty)"
		echo -e "Grupo UUCP: $(sudo members -a uucp)"
		echo -e "Usuário $USUARIO: $(id)"
		echo
		echo -e "Pressione <Enter> para continuar o script.\n"
		read
		sleep 5
	else
		echo -e "Grupo de Dialout do Arduino não está disponível, verifique se você conectou corretamente o"
		echo -e "Arduino na Porta USB, conecte o Arduino ou verifique o cabo USB, execute novamente esse script."
		exit 1
fi
#
echo -e "Fazendo o download do Arduino IDE do site Oficial, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando wget: -v (verbose), -O (output-document)
	sudo wget -v -O /tmp/arduino.tar.xz $ARDUINO &>> $LOG
echo -e "Download do Arduino IDE do site Oficial feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Descompactando o Arduino IDE no diretório: /opt/arduino, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando tar: -J (xz), -x (extract), v (verbose), -f (file)
	# opção do comando mv: -v (verbose)
	cd /tmp
	sudo tar -Jxvf arduino.tar.xz &>> $LOG
	sudo mv -v arduino-*/ /opt/arduino &>> $LOG
	cd - &>> $LOG
echo -e "Descompactação do Arduino IDE no diretório /opt/arduino feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Arduino IDE utilizando o script do próprio Arduino, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	sudo bash /opt/arduino/install.sh
echo -e "Instalação do Arduino IDE feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Clonando o projeto do BlocklyDuino do Github, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	sudo git clone $BLOCKLYDUINO /tmp/blocklyduino &>> $LOG
echo -e "Projeto do BlocklyDuino clonado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Adicionando o BlocklyDuino nas ferramentas do Arduino IDE, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando mv: -v (verbose)
	# opção do caractere curinga *: Qualquer coisa
	sudo mv -v /tmp/blocklyduino/BlocklyDuinoPlugin/tool/* /opt/arduino/tools/ &>> $LOG
echo -e "BlocklyDuino adicionado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Fritzing, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	sudo apt -y install fritzing &>> $LOG
echo -e "Instalação do Fritzing feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Clonando o projeto do Fritzing Parts do Github, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	sudo git clone $FRITZING /usr/share/fritzing/parts &>> $LOG
echo -e "Projeto do Fritzing Parts clonado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalação do Arduino IDE, BlocklyDuino e do Fritzing feita com Sucesso!!!."
	# script para calcular o tempo gasto (SCRIPT MELHORADO, CORRIGIDO FALHA DE HORA:MINUTO:SEGUNDOS)
	# opção do comando date: +%T (Time)
	HORAFINAL=$(date +%T)
	# opção do comando date: -u (utc), -d (date), +%s (second since 1970)
	HORAINICIAL01=$(date -u -d "$HORAINICIAL" +"%s")
	HORAFINAL01=$(date -u -d "$HORAFINAL" +"%s")
	# opção do comando date: -u (utc), -d (date), 0 (string command), sec (force second), +%H (hour), %M (minute), %S (second), 
	TEMPO=$(date -u -d "0 $HORAFINAL01 sec - $HORAINICIAL01 sec" +"%H:%M:%S")
	# $0 (variável de ambiente do nome do comando)
	echo -e "Tempo gasto para execução do script $0: $TEMPO"
echo -e "Pressione <Enter> para concluir o processo."
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
echo -e "Fim do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
read
exit 1
