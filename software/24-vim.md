#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/01/2023<br>
#Data de atualização: 21/01/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Editor de Texto Vim no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Editor de Texto Vim no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Vim: https://git-scm.com/<br>
Site Oficial do Aurelio.net: https://aurelio.net/vim/

#00_ Verificando as Informações do Sistema Operacional Linux Mint<br>

	Terminal: Ctrl + Alt + T

	OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
	OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
	sudo cat /etc/os-release
	sudo cat /etc/lsb-release
	sudo localectl

	Menu
		Informações do Sistema

#01_ Atualização do Sistema Operacional Linux Mint<br>

	Atualização do sistema utilizando o MintUpdate;
	Atualização do sistema utilizando o Apt;

	Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean

#02_ Instalando o Vim e suas Dependências no Linux Mint<br>

	sudo apt update
	sudo apt install git vim vim-common python2 python3

# Iniciando o editor de Texto VIM
man vim
vim
#
# Modos do editor de Texto VIM
Modo                Tecla                           Rodapé              Descrição 
---------------------------------------------------------------------------------------------------------
de Inserção         i ou Insert                     -- INSERÇÃO --      Inserção de texto
de Comandos         <Esc>                           Comandos de manipulação de texto
de Linha de comando <Esc> shift : (dois pontos)     :                   Comandos de manipulação arquivo 
de Visual           <Esc> v                         -- VISUAL --        Seleção visual de texto
de Busca            <Esc> /                         /                   Busca de padrões no texto
de Reposição        <Esc> shift R ou Insert/Insert  -- SUBSTITUIÇÃO --  Inserção sobrescrevendo
---------------------------------------------------------------------------------------------------------
#
# Ajuda do editor de Texto VIM (q = quit)
<Esc> shift :help <Enter>
<Esc> F1
<Esc> shift :q <Enter>
vimtutor
#
# Saindo do editor de Texto VIM (q = quit | a = all | ! = force)
<Esc> shift :q <Enter>
<Esc> shift :q! <Enter>
<Esc> shift :qa! <Enter>
#
# Salvando arquivo no editor de Texto VIM (w = write | wq = write/quit | x = write/quit)
<Esc> shift :w teste01.txt <Enter>
<Esc> shift :wq <Enter>
<Esc> shift :x <Enter>
#
# Criando um novo arquivo no editor de Texto VIM (enew = new file | w! = write/force | sav = save as)
vim teste01.txt <Enter>
<Esc> shift :enew <Enter>
<Esc> shift :w! teste01.txt <Enter>
<Esc> shift :sav teste02.txt <Enter>
#
# Abrindo um arquivo no editor de Texto VIM (e = explorer | o TAB funciona)
<Esc> shift :e teste01.txt <Enter>
<Esc> shift :e. <Enter>
#
# Executando comandos externos no editor de Texto VIM (o TAB funciona)
<Esc> shift :!ls -lh <Enter>
#
# Habilitando recursos no editor de Texto VIM
<Esc> shift :set number <Enter>	<-- mostra número da linha
<Esc> shift :set ignorecase <Enter> <-- ignora case insensitive na busca
<Esc> shift :set syntax on <Enter> <-- identificação da linguagem
<Esc> shift :set autoindent <Enter> <-- indentação automática
<Esc> shift :set showmatch <Enter> <-- completa as chaves e colchetes quando você os fecha
<Esc> shift :set autowrite <Enter> <-- salva o arquivo a cada alteração
#
# Arquivo de configuração do editor de Texto VIM
<Esc> shift :!ls -lha /etc/vim/vimrc
<Esc> shift :!cat /etc/vim/vimrc
<Esc> shift :e /etc/vim/vimrc
<Esc> shift :!sudo vim /etc/vim/vimrc
#
# Deletando caracteres e linhas no editor de Texto VIM (x = delete char | d = delete | dw = delete next word)
<Esc> x		<-- deleta carácter por carácter
<Esc> dw	<-- deleta palavra por palavra
<Esc> dd	<-- deleta uma linha inteira
#
# Desfazendo uma alteração no editor de Texto VIM (u = undo | . repeat)
<Esc> u
<Esc> .
#
# Copiando palavras ou linhas no editor de Texto VIM (y = yank)
<Esc> v		<-- selecionar o texto com os direcionadores
<Esc> y		<-- copia o texto
<Esc> yy	<-- copiando a linha inteira
#
# Colando palavras ou linhas no editor de Texto VIM (p = paste after)
<Esc> i		<-- colocar o curso no local que desejado para colar
<Esc> p		<-- colar o texto
#
# Localizando palavras no editor de Texto VIM (/ = find | n = next find)
<Esc> /palavra <Enter>
n		<-- localiza a próxima ocorrência
#
# Formatação de alinhamento no editor de Texto VIM
<Esc> :left <Enter>   <-- alinhamento de texto para a esquerda
<Esc> :right <Enter>  <-- alinhamento de texto centralizado
<Esc> :center <Enter> <-- alinhamento de texto para a direita
#
# Dividindo a tela horizontalmente no editor de Texto VIM (split = dividir)
:split
Ctrl W
#
# Dividindo a tela verticalmente no editor de Texto VIM (vsplit = dividir tela vertical)
:vsplit
Ctrl W
