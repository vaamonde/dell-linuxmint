#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/01/2023<br>
#Data de atualização: 12/11/2023<br>
#Versão: 0.04<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

#Instalação do Editor de Texto Vim no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Editor de Texto Vim no Linux Mint 21 Vanessa, 21.1 Vera e 21.2 Victoria x64

[![VIM](http://img.youtube.com/vi/KknZSuFsfmk/0.jpg)](https://www.youtube.com/watch?v=KknZSuFsfmk "VIM")

Link da vídeo aula: https://www.youtube.com/watch?v=KknZSuFsfmk

Site Oficial do Vim: https://www.vim.org/<br>
Site Oficial do Aurelio.net: https://aurelio.net/vim/<br>
Site Oficial do Vimbook: https://cassiobotaro.dev/vimbook/

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

#03_ Iniciando o editor de Texto VIM

	vim

#04_ Modos do editor de Texto VIM

	Modo                 Tecla                           Rodapé              Descrição 
	----------------------------------------------------------------------------------------------------------
	de Inserção          i ou INSERT                     -- INSERÇÃO --      Inserção de texto
	de Comandos          <ESC>                                               Comandos de manipulação de texto
	de Linha de comando  <ESC> SHIFT : (dois pontos)     :                   Comandos de manipulação arquivo 
	de Visual            <ESC> v                         -- VISUAL --        Seleção visual de texto
	de Busca             <ESC> /                         /                   Busca de padrões no texto
	de Reposição         <ESC> SHIFT R ou INSERT/INSERT  -- SUBSTITUIÇÃO --  Inserção sobrescrevendo
	---------------------------------------------------------------------------------------------------------

#05_ Ajuda do editor de Texto VIM (q = quit)

	man vim
		q (quit)
	vim --help
	
	vimtutor
		<ESC> SHIFT :q <Enter>

	vim
		<ESC> SHIFT :help <Enter>
		<ESC> SHIFT :q <Enter>

		<ESC> F1
		<ESC> SHIFT :q <Enter>

#06_ Saindo do editor de Texto VIM (q = quit | a = all | ! = force)

	vim
		<ESC> SHIFT :q <Enter>

	vim
		<INSERT>
			Robson Vaamonde
		<ESC> SHIFT :q <Enter>
		<ESC> SHIFT :q! <Enter>

	vim
		<INSERT>
			Robson Vaamonde
		<ESC> SHIFT :qa! <Enter>

#07_ Salvando arquivo no editor de Texto VIM (w = write | wq = write/quit | x = write/quit)

	vim
		<ESC> SHIFT :w teste01.txt <Enter>
		<ESC> SHIFT :q <Enter>
	
	vim teste01.txt
		<ESC> SHIFT :wq <Enter>
	
	vim teste01.txt
		<ESC> SHIFT :x <Enter>

#08_ Criando um novo arquivo no editor de Texto VIM (enew = new file | w! = write/force | sav = save as)

	vim teste01.txt
		<ESC> SHIFT :enew <Enter>
		<ESC> SHIFT :w! teste01.txt <Enter>
		<ESC> SHIFT :sav teste02.txt <Enter>

#09_ Abrindo um arquivo no editor de Texto VIM (e = explorer | o TAB funciona)

	<ESC> SHIFT :e teste01.txt <Enter>
	<ESC> SHIFT :e. <Enter>

#10_ Executando comandos externos no editor de Texto VIM (o TAB funciona)

	<ESC> SHIFT :!ls -lh <Enter>

#11_ Habilitando recursos no editor de Texto VIM

	<ESC> SHIFT :set number <Enter>	      <-- mostra número da linha
	<ESC> SHIFT :set ignorecase <Enter>   <-- ignora case insensitive na busca
	<ESC> SHIFT :set autoindent <Enter>   <-- indentação automática
	<ESC> SHIFT :set showmatch <Enter>    <-- completa as chaves e colchetes quando você os fecha
	<ESC> SHIFT :set autowrite <Enter>    <-- salva o arquivo a cada alteração
	
	#OBSERVAÇÃO IMPORTANTE: com essa opção habilita a seguinte mensagem é mostrada toda vez que você for 
	#editar um arquivo: filetype unknown Aperte ENTER ou digite um comando para continuar, recomendo não
	#usar essa opção que foi mostrada no vídeo.
	<ESC> SHIFT :set syntax=on <Enter>    <-- identificação da linguagem

#12_ Arquivo de configuração do editor de Texto VIM

	<ESC> SHIFT :!ls -lha /etc/vim/vimrc
	<ESC> SHIFT :!cat /etc/vim/vimrc
	<ESC> SHIFT :e /etc/vim/vimrc
	<ESC> SHIFT :!sudo vim /etc/vim/vimrc

#13_ Deletando caracteres e linhas no editor de Texto VIM (x = delete char | d = delete | dw = delete next word | G=end of file)

	<ESC> x     <-- deleta carácter por carácter
	<ESC> dw    <-- deleta palavra por palavra
	<ESC> dd    <-- deleta uma linha inteira
	<ESC> dG    <-- deleta todo o conteúdo do arquivo

#14_ Desfazendo uma alteração no editor de Texto VIM (u = undo | . repeat)

	<ESC> u
	<ESC> .

#15_ Copiando palavras ou linhas no editor de Texto VIM (y = yank)

	<ESC> v     <-- selecionar o texto com os direcionadores
	<ESC> y     <-- copia o texto
	<ESC> yy    <-- copiando a linha inteira

#16_ Colando palavras ou linhas no editor de Texto VIM (p = paste after)

	<ESC> i     <-- colocar o curso no local que desejado para colar
	<ESC> p     <-- colar o texto

#17_ Localizando palavras no editor de Texto VIM (/ = find | n = next find)

	<ESC> /palavra <Enter>
		n     <-- localiza a próxima ocorrência

#18_ Formatação de alinhamento no editor de Texto VIM

	<ESC> SHIFT :left <Enter>   <-- alinhamento de texto para a esquerda
	<ESC> SHIFT :right <Enter>  <-- alinhamento de texto centralizado
	<ESC> SHIFT :center <Enter> <-- alinhamento de texto para a direita

#19_ Dividindo a tela horizontalmente no editor de Texto VIM (split = dividir)

	<ESC> SHIFT :split <Enter>
	Ctrl W

#20_ Dividindo a tela verticalmente no editor de Texto VIM (vsplit = dividir tela vertical)

	<ESC> SHIFT :vsplit <Enter>
	Ctrl W

#21_ Início e Fim de um arquivo movendo o cursor para uma Linha específica

	vim /etc/services
		<ESC> SHIFT :$ <Enter>
		<ESC> SHIFT :0 <Enter>
		<ESC> SHIFT :110 <Enter>
	vim +100 /etc/services