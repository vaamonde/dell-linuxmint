#!/bin/bash
#Autor: Robson Vaamonde
#Procedimentos em TI: http://procedimentosemti.com.br
#Bora para Prática: http://boraparapratica.com.br
#Robson Vaamonde: http://vaamonde.com.br
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
#LinkedIn Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/
#Data de criação: 19/01/2023
#Data de atualização: 19/01/2023
#Versão: 0.02
#
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64
#
#Instalação do Apache Tomcat 10.1.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64
#Instalação do Apache Tomcat 10.1.x no Linux Mint 21 Vanessa e 21.1 Vera x64

#
# Site Oficial do Apache Tomcat: https://tomcat.apache.org/
# Site Oficial do OpenJDK: https://openjdk.org/
#
# OBSERVAÇÃO IMPORTANTE: Nesse vídeo utilizei os conceitos do Git e Github para clonar o 
# projeto no Linux Mint
#
# Terminal: Ctrl + Alt + t (Atalho do Terminal)
#	sudo apt update
#	sudo apt install git vim
#	wget 
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
# Declarando as variáveis de download do Tomcat 10 (Links atualizados no dia 19/01/2023)
TOMCAT10="https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.5/bin/apache-tomcat-10.1.5.tar.gz"
SERVERXML="https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/server.xml"
USERXML="https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/tomcat-users.xml"
SERVICE="https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/tomcat10.service"
OPENJDK="openjdk-17-jdk openjdk-17-jre software-properties-common build-essential"
DEPENDENCE="members git vim unzip python2 python3"
PATH="/opt/tomcat"
USERTOMCAT10="tomcat"
#
# Script de instalação do Tomcat 10.1.x no Linux Mint 21 Vanessa e 21.1 Vera x64
# opção do comando echo: -e (enable interpretation of backslash escapes), \n (new line)
# $0 (variável de ambiente do nome do comando)
# opção do comando date: + (format), %d (day), %m (month), %Y (year 1970), %H (hour 24), %M (minute 60)
# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
echo -e "Início do script $0 em: $(date +%d/%m/%Y-"("%H:%M")")\n" &>> $LOG
clear
#
echo
echo -e "Instalação do Apache Tomcat Server 10.x no Linux Mint 20.x e 21.x\n"
echo -e "Aguarde, esse processo demora um pouco dependendo do seu Link de Internet...\n"
sleep 5
#
echo -e "Atualizando o Sources List do Apt, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	apt update &>> $LOG
echo -e "Listas atualizadas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando o sistema operacional, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	apt upgrade -y &>> $LOG
	apt full-upgrade -y &>> $LOG
	apt dist-upgrade -y &>> $LOG
echo -e "Sistema atualizado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando as dependências desse script, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	apt install $DEPENDENCE -y &>> $LOG
echo -e "Dependências instaladas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Removendo os software desnecessários, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	apt autoremove -y &>> $LOG
	apt autoclean -y &>> $LOG
echo -e "Software desnecessários removidos com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalando o Apache Tomcat Server 10.x, aguarde...\n"
sleep 5
#
echo -e "Instalando o OpenJDK e OpenJRE 17 LTS, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando apt: -y (yes)
	# opção do comando grep: -i (ignore-case)
	apt install $OPENJDK -y &>> $LOG
	java -version &>> $LOG
	apt list --installed | grep -i openjdk &>> $LOG
	update-alternatives --list java &>> $LOG
	update-java-alternatives -l  &>> $LOG
echo -e "OpenJDK e OpenJRE instalados com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Fazendo o download do Apache Tomcat Server 10.x site Oficial, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando wget: -v (verbose), -O (output-document)
	wget -v -O /tmp/tomcat10.tar.gz $TOMCAT10 &>> $LOG
echo -e "Download do Apache Tomcat Server 10.x feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Descompactando o Apache Tomcat Server 10.x, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
	# opção do comando mv: -v (verbose)
	tar -xzvf /tmp/tomcat10.tar.gz -C /tmp --strip-components=1 &>> $LOG
	mv -v /tmp/apache-tomcat* $PATH &>> $LOG
echo -e "Descompactação do Apache Tomcat Server 10.x feito com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Atualizando os arquivos de configuração do Apache Tomcat Server 10.x, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando wget: -O (output)
	wget $SERVERXML -O /opt/tomcat/conf/server.xml &>> $LOG
	wget $USERXML -O /opt/tomcat/conf/tomcat-users.xml &>> $LOG
	wget $SERVICE -O /etc/systemd/system/tomcat10.service &>> $LOG
echo -e "Arquivos de configuração do Apache Tomcat Server 10.x atualizados com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Criando o Usuário do Apache Tomcat Server 10.x, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
	useradd -m -d $PATH -U -s /bin/false $USERTOMCAT10 &>> $LOG
echo -e "Usuário do Apache Tomcat Server 10.x criado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Alterando os Permissões do Diretório do Apache Tomcat Server 10.x, aguarde..."
	# opção do redirecionador &>>: Redireciona a saída padrão (STDOUT) anexando
	# opção do comando chown: -R (recursive), -v (verbose), tomcat:tomcat (user and group)
	# opção do comando chmod: -R (recursive), -v (verbose), u+x (user added execute/search)
	chown -Rv tomcat:tomcat $PATH &>> $LOG
	chmod -Rv u+x $PATH/bin &>> $LOG
echo -e "Permissões do Diretório do Apache Tomcat Server 10.x alteradas com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Iniciando o Serviço do Apache Tomcat Server 10.x, aguarde..."
	systemctl daemon-reload &>> $LOG
	systemctl enable tomcat10 &>> $LO
	systemctl start tomcat10 &>> $LOG
echo -e "Serviço do Apache Tomcat Server 10.x iniciado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Verificando o serviço do Apache Tomcat 10.x, aguarde..."
	echo -e "Tomcat10: $(systemctl status tomcat10 | grep Active)"
echo -e "Serviço do Apache Tomcat Server 10.x verificado com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Verificando a porta de conexão do Apache Tomcat 10.x, aguarde..."
	# opção do comando lsof: -n (inhibits the conversion of network numbers to host names for 
	# network files), -P (inhibits the conversion of port numbers to port names for network files), 
	# -i (selects the listing of files any of whose Internet address matches the address specified 
	# in i), -s (alone directs lsof to display file size at all times)
	lsof -nP -iTCP:"8080" -sTCP:LISTEN
echo -e "Porta de conexão do Apache Tomcat 10.x verificada com sucesso!!!, continuando com o script...\n"
sleep 5
#
echo -e "Instalação do Apache Tomcat Server 10.x feita com Sucesso!!!"
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
