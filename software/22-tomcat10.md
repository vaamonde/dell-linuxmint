#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 19/01/2023<br>
#Data de atualização: 28/07/2024<br>
#Versão: 0.06<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Apache Tomcat 10.1.x no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Apache Tomcat 10.1.x no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Apache Tomcat 10.1.x no Linux Mint 22 Wilma x64<br>

[![Tomcat Server](http://img.youtube.com/vi/ZmpQFKsMIXE/0.jpg)](https://www.youtube.com/watch?v=ZmpQFKsMIXE "Tomcat Server")

Link da vídeo aula: https://www.youtube.com/watch?v=ZmpQFKsMIXE

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/

O QUE É E PARA QUE SERVER O APACHE TOMCAT: O Tomcat é um servidor web Java, mais especificamente,<br>
um container de servlets. O Tomcat implementa, dentre outras de menor relevância, as tecnologias<br>
Java Servlet e JavaServer Pages e não é um container Enterprise JavaBeans. Desenvolvido pela<br>
Apache Software Foundation, é distribuído como software livre.

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

#02_ Instalando as Dependências do Apache Tomcat Server no Linux Mint<br>
```bash
#INSTALANDO O OPENJDK E OPENJRE NO LINUX MINT 20.x
sudo apt install git vim openjdk-17-jdk openjdk-17-jre openjdk-17-jre-headless \
software-properties-common build-essential

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 21.x (RECOMENDADO UTILIZAR A VERSÃO 17)
sudo apt install git vim openjdk-17-jdk openjdk-17-jre openjdk-17-jre-headless \
software-properties-common build-essential

#OBSERVAÇÃO IMPORTANTE: USAR OUTRAS VERSÕES DO JAVA (OPENJDK) PODE ACARRETAR FALHAS NO 
#PROJETO DE SOFTWARE, CUIDADO COM A VERSÃO DO JAVA UTILIZADO EM SEU PROJETO.

#CASO QUEIRA UTILIZAR OUTRAS VERSÕES DO JAVA NO LINUX 21.x (EXECUTAR SOMENTE SE NECESSÁRIO)
sudo apt install git vim openjdk-18-jdk openjdk-18-jre openjdk-18-jre-headless \
software-properties-common build-essential

sudo apt install git vim openjdk-19-jdk openjdk-19-jre openjdk-19-jre-headless \
software-properties-common build-essential

sudo apt install git vim openjdk-21-jdk openjdk-21-jre openjdk-21-jre-headless \
software-properties-common build-essential
```

#03_ Verificando as Versões do Java instalado no Linux Mint<br>
```bash
#opção do comando grep: -i (ignore-case)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo java -version
sudo apt list --installed | grep -i openjdk
sudo update-alternatives --list java
sudo update-java-alternatives --list
```

#04_ Download do Apache Tomcat Server 10.1.x do site Oficial<br>
```bash
#OBSERVAÇÃO IMPORTANTE: recomendo que o procedimento abaixo seja feito utilizando o usuário: 
#Root do Linux Mint para facilitar a instalação e configuração do Apache Tomcat Server 10.1.x.
#Link Oficial das versões do Apache Tomcat Server: https://dlcdn.apache.org/tomcat/

#se logando com o usuário Root no Linux Mint
#opção do comando sudo: -i (login)
sudo -i

#baixando a última versão do Apache TomCAT Server do Site Oficial
#opção do comando wget: -v (verbose), -O (output file) (link atualizado em 15/07/2024)
wget -v -O /tmp/tomcat10.tar.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz
```

#05_ Descompactando e instalando o Apache Tomcat 10.1.x no Linux Mint<br>
```bash
#descompactando o arquivo do Apache TomCAT Server
#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
tar -xzvf /tmp/tomcat10.tar.gz -C /tmp

#mover o diretório do Apache TomCAT para o diretório /opt
#opção do comando mv: -v (verbose)
mv -v /tmp/apache-tomcat* /opt/tomcat
```

#06_ Atualizando os arquivos de configuração do Apache Tomcat 10.1.x no Linux Mint<br>
```bash
#download dos principais arquivos de configuração do Apache TomCAT Server
#opção do comando wget: -v (verbose), -O (output file)

#download do arquivo de configuração do Servidor Apache Tomcat
wget -v -O /opt/tomcat/conf/server.xml https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/server.xml

#download do arquivo de configuração dos Usuários do Apache Tomcat
wget -v -O /opt/tomcat/conf/tomcat-users.xml https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/tomcat-users.xml	

#download do arquivo de configuração da Inicialização do Apache Tomcat
#OBSERVAÇÃO IMPORTANTE: NESSE ARQUIVO NA LINHA: 11 FICA A CONFIGURAÇÃO DA VERSÃO
#DO OPENJDK UTILIZADO, POR PADRÃO FOI ATUALIZADO PARA A VERSÃO 21.X NO DIA: 13/05/2024
wget -v -O /etc/systemd/system/tomcat10.service https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/conf/tomcat10.service
```

#07_ Criando o Usuário de Serviço do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
#opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
useradd -m -d /opt/tomcat -U -s /bin/false tomcat
```

#08_ Alterando os Permissões do Diretório do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
#opção do comando chown: -R (recursive), -v (verbose), tomcat:tomcat (user and group)
chown -Rv tomcat:tomcat /opt/tomcat

#opção do comando chmod: -R (recursive), -v (verbose), u+x (user added execute/search)
chmod -Rv u+x /opt/tomcat/bin
```

#09_ Habilitando o Serviço do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
#verificando o status de serviço do Apache TomCAT
systemctl daemon-reload
systemctl enable tomcat10
systemctl start tomcat10

#saindo do perfil do usuário Root
exit
```

#10_ Verificando o Serviço e Versão do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
#verificando o Status de Serviço do Apache TomCAT
sudo systemctl status tomcat10
sudo systemctl restart tomcat10
sudo systemctl stop tomcat10
sudo systemctl start tomcat10

#verificando a versão do Apache TomCAT
sudo bash /opt/tomcat/bin/version.sh
```

#11_ Verificando a Porta de Conexão do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN
```

#12_ Localização dos Arquivos de Configuração do Apache Tomcat Server 10.1.x no Linux Mint<br>
```bash
/opt/tomcat                        <-- Diretório de configuração do Apache Tomcat Server
/opt/tomcat/bin                    <-- Diretório do binário (executável) do Apache Tomcat Server
/opt/tomcat/conf                   <-- Diretório das configurações do Apache Tomcat Server
/opt/tomcat/conf/server.xml        <-- Arquivo de configuração do Servidor do Apache Tomcat Server
/opt/tomcat/conf/tomcat-users.xml  <-- Arquivo de configuração dos Usuários do Apache Tomcat Server
/opt/tomcat/conf/context.xml       <-- Arquivo de configuração do Aplicativo eb do Apache Tomcat Server
/opt/tomcat/logs                   <-- Diretório dos Logs do Apache Tomcat Server
/opt/tomcat/webapps                <-- Diretório das Aplicações Web do Apache Tomcat Server
```

#13_ Adicionado o Usuário Local no Grupo Padrão do Apache Tomcat Server no Linux Mint<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G tomcat $USER
newgrp tomcat
id

#recomendado reinicializar a máquina para aplicar as permissões
sudo reboot
```

#14_ Testando o Apache Tomcat Server no navegador utilizando o Linux Mint<br>
```bash
#testando o acesso ao Apache TomCAT via navegador
firefox ou google chrome: http://localhost:8080
	Usuário padrão: admin
	Senha padrão..: pti@2018
```

#15_ Administrando o Apache Tomcat Server<br>
```bash
Clique em: Manager App
	Usuário padrão: admin
	Senha padrão..: pti@2018
<Fazer Login>
```