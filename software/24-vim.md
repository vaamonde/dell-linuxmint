#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/01/2023<br>
#Data de atualização: 05/06/2025<br>
#Versão: 0.07<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma e 22.1 Xia x64<br>

#Instalação do Editor de Texto Vim no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Editor de Texto Vim no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Editor de Texto Vim no Linux Mint 22 Wilma e 22.1 Xia x64<br>

[![VIM](http://img.youtube.com/vi/KknZSuFsfmk/0.jpg)](https://www.youtube.com/watch?v=KknZSuFsfmk "VIM")

Link da vídeo aula: https://www.youtube.com/watch?v=KknZSuFsfmk

Site Oficial do Vim: https://www.vim.org/<br>
Site Oficial do Aurelio.net: https://aurelio.net/vim/<br>
Site Oficial do Vimbook: https://vimbook.site/

**O QUE É E PARA QUE SERVER O EDITOR VIM:** O Vim é um clone do programa editor de textos vi para Unix de Bill Joy. Foi escrito por Bram Moolenaar baseado na fonte para um porte do editor Stevie para o Amiga com a primeiro lançamento público em 1991.

### 00_ Verificando as Informações do Sistema Operacional Linux Mint

**OBSERVAÇÃO IMPORTANTE:** Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa<br>
**OBSERVAÇÃO IMPORTANTE:** Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish<br>
**OBSERVAÇÃO IMPORTANTE:** Linux Mint 22.x é derivado do Ubuntu Desktop 24.04.x Noble Numbat<br>

```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
sudo cat /etc/os-release

#verificando as informações do Linux Standard Base
sudo cat /etc/lsb-release

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
  Informações do Sistema
```

### 01_ Atualização do Sistema Operacional Linux Mint
```bash
#atualizando o sistema operacional via MintUpdate (Recomendado)
A) Atualização do sistema utilizando o MintUpdate;
B) Atualização do sistema utilizando o Apt;

#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#atualizando o sistema operacional via Terminal
#recomendo utilizando o comando: apt - o comando: apt-get e considerado obsoleto
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
```

### 02_ Instalando o Vim e suas Dependências no Linux Mint
```bash
#atualizando as lista do apt
sudo apt update

#instalando o editor de texto Vim e suas dependências
sudo apt install git vim vim-common python2 python3 pip
```

### 03_ Iniciando o editor de Texto VIM
```bash
#iniciando o editor VIM no Terminal
vim
```

### 04_ Modos do editor de Texto VIM

| Modo | Tecla | Rodapé | Descrição |
|------|-------|--------|-----------|
| de Inserção | i ou INSERT | -- INSERÇÃO -- | Inserção de texto |
| de Comandos | <ESC> | Comandos de manipulação de texto |
| de Linha de comando | <ESC> SHIFT : (dois pontos) | : | Comandos de manipulação arquivo |
| de Visual | <ESC> v | -- VISUAL -- | Seleção visual de texto |
| de Busca | <ESC> /  | / | Busca de padrões no texto |
| de Reposição | <ESC> SHIFT R ou INSERT/INSERT | -- SUBSTITUIÇÃO -- | Inserção sobrescrevendo |

### 05_ Ajuda do editor de Texto VIM (q = quit)
```bash
#manual básico do editor VIM
man vim
  q (quit)
vim --help

#tutorial básico do editor VIM
vimtutor
  <ESC> SHIFT :q <Enter>

#ajuda e sair do editor VIM
vim
  <ESC> SHIFT :help <Enter>
  <ESC> SHIFT :q <Enter>

  <ESC> F1
  <ESC> SHIFT :q <Enter>
```

### 06_ Saindo do editor de Texto VIM (q = quit | a = all | ! = force)
```bash
#entrando e saindo do Editor VIM
vim
  <ESC> SHIFT :q <Enter>

#entrando e saindo sem salvar do Editor VIM
vim
  <INSERT>
    Robson Vaamonde
  <ESC> SHIFT :q <Enter>
  <ESC> SHIFT :q! <Enter>

#entrando e saindo sem salvar tudo do Editor VIM
vim
  <INSERT>
    Robson Vaamonde
  <ESC> SHIFT :qa! <Enter>
```

### 07_ Salvando arquivo no editor de Texto VIM (w = write | wq = write/quit | x = write/quit)
```bash
#entrando e salvando um novo arquivo no Editor VIM
vim
  <ESC> SHIFT :w teste01.txt <Enter>
  <ESC> SHIFT :q <Enter>

#editando um arquivo, salvando e saindo do Editor VIM
vim teste01.txt
  <ESC> SHIFT :wq <Enter>

#ditando um arquivo, salvando e saindo do Editor VIM
vim teste01.txt
  <ESC> SHIFT :x <Enter>
```

### 08_ Criando um novo arquivo no editor de Texto VIM (enew = new file | w! = write/force | sav = save as)
```bash
#editando um arquivo, criando um novo e salvando Editor VIM
vim teste01.txt
  <ESC> SHIFT :enew <Enter>
  <ESC> SHIFT :w! teste01.txt <Enter>
  <ESC> SHIFT :sav teste02.txt <Enter>
```

### 09_ Abrindo um arquivo no editor de Texto VIM (e = explorer | o TAB funciona)
```bash
#abrindo um novo arquivo no Editor VIM
vim
  <ESC> SHIFT :e teste01.txt <Enter>
  <ESC> SHIFT :e. <Enter>
```

### 10_ Executando comandos externos no editor de Texto VIM (o TAB funciona)
```bash
#listando o conteúdo do diretório no Editor VIM
vim
  <ESC> SHIFT :!ls -lh <Enter>
```

### 11_ Habilitando recursos no editor de Texto VIM
```bash
#habilitando os principais recursos do Editor VIM
vim
  <ESC> SHIFT :set number <Enter>	      <-- mostra número da linha
  <ESC> SHIFT :set ignorecase <Enter>   <-- ignora case insensitive na busca
  <ESC> SHIFT :set autoindent <Enter>   <-- indentação automática
  <ESC> SHIFT :set showmatch <Enter>    <-- completa as chaves e colchetes quando você os fecha
  <ESC> SHIFT :set autowrite <Enter>    <-- salva o arquivo a cada alteração
```

**OBSERVAÇÃO IMPORTANTE:** com essa opção habilita a seguinte mensagem é mostrada toda vez que você for editar um arquivo: filetype unknown Aperte ENTER ou digite um comando para continuar, recomendo não usar essa opção que foi mostrada no vídeo.

```bash
#não recomendo mais habilitar esse recurso no Editor VIM
vim
  <ESC> SHIFT :set syntax=on <Enter>    <-- identificação da linguagem
```

### 12_ Arquivo de configuração do editor de Texto VIM
```bash
#digitando comando no Editor VIM
vim
  <ESC> SHIFT :!ls -lha /etc/vim/vimrc
  <ESC> SHIFT :!cat /etc/vim/vimrc
  <ESC> SHIFT :e /etc/vim/vimrc
  <ESC> SHIFT :!sudo vim /etc/vim/vimrc
```

### 13_ Deletando caracteres e linhas no editor de Texto VIM (x = delete char | d = delete | dw = delete next word | G=end of file)
```bash
#deletando caracteres e linhas no Editor VIM
vim
  <ESC> x     <-- deleta carácter por carácter
  <ESC> dw    <-- deleta palavra por palavra
  <ESC> dd    <-- deleta uma linha inteira
  <ESC> dG    <-- deleta todo o conteúdo do arquivo
```

### 14_ Desfazendo uma alteração no editor de Texto VIM (u = undo | . repeat)
```bash
#desfazendo as alterações no Editor VIM
vim
  <ESC> u
  <ESC> .
```

### 15_ Copiando palavras ou linhas no editor de Texto VIM (y = yank)
```bash
#copiando palavras ou linhas no Editor VIM
vim
  <ESC> v     <-- selecionar o texto com os direcionadores
  <ESC> y     <-- copia o texto
  <ESC> yy    <-- copiando a linha inteira
```

### 16_ Colando palavras ou linhas no editor de Texto VIM (p = paste after)
```bash
#colando palavras ou linhas no Editor VIM
vim
  <ESC> i     <-- colocar o curso no local que desejado para colar
  <ESC> p     <-- colar o texto
```

### 17_ Localizando palavras no editor de Texto VIM (/ = find | n = next find)
```bash
#localizando palavras no Editor VIM
vim
  <ESC> /palavra <Enter>
    n        <-- localiza a próxima ocorrência
```

### 18_ Formatação de alinhamento no editor de Texto VIM
```bash
#alinhamento no Editor VIM
vim
  <ESC> SHIFT :left <Enter>   <-- alinhamento de texto para a esquerda
  <ESC> SHIFT :right <Enter>  <-- alinhamento de texto centralizado
  <ESC> SHIFT :center <Enter> <-- alinhamento de texto para a direita
```

### 19_ Dividindo a tela horizontalmente no editor de Texto VIM (split = dividir)
```bash
#dividindo a tela horizontalmente Editor VIM
vim
  <ESC> SHIFT :split <Enter>
    Ctrl w    <-- anda entre as telas
```

### 20_ Dividindo a tela verticalmente no editor de Texto VIM (vsplit = dividir tela vertical)
```bash
#dividindo a tela verticalmente
vim
  <ESC> SHIFT :vsplit <Enter>
    Ctrl w    <-- anda entre as telas
```

### 21_ Início e Fim de um arquivo movendo o cursor para uma Linha específica
```bash
#editando o arquivo e movendo o curso para o início e fim do arquivo
vim /etc/services
  <ESC> SHIFT :$ <Enter>
  <ESC> SHIFT :0 <Enter>
  <ESC> SHIFT :110 <Enter>

#editando o arquivo e movendo o curso para a linha 100
vim +100 /etc/services
```