#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 31/05/2022<br>
#Data de atualização: 06/04/2025<br>
#Versão: 0.14<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma e 22.1 Xia x64<br>

#Instalação do Tilix e OhMyZSH no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Tilix e OhMyZSH no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Tilix e OhMyZSH no Linux Mint 22 Wilma e 22.1 Xia x64<br>

[![Tilix](http://img.youtube.com/vi/0BrJ8jWbTko/0.jpg)](https://www.youtube.com/watch?v=0BrJ8jWbTko "Tilix")

Link da vídeo aula: https://www.youtube.com/watch?v=0BrJ8jWbTko

Site Oficial do Terminal Tilix: https://gnunn1.github.io/tilix-web/<br>
Site Oficial do Oh My Zsh: https://ohmyz.sh/<br>
Site Oficial das Fontes Nerd Fonts: https://www.nerdfonts.com/font-downloads

**O QUE É E PARA QUE SERVER O TERMINAL TILIX:** O Terminix/Tilix é um um novo emulador de terminal GTK3 com divisão de tela em blocos, o que permite ter vários terminais divididos horizontal e verticalmente, e que podem ser reorganizados simplesmente usando arrastar e soltar.

**O QUE É E PARA QUE SERVER O ZSH:** O Z-shell ou Zsh é um interpretador de comandos UNIX que, dos shells padrão, mais se assemelha ao Korn shell; sua compatibilidade com o shell Korn de 1988 vem aumentando gradualmente.

**O QUE É E PARA QUE SERVER O OH MY ZSH:** Oh My Zsh é um gerenciador de configuração de shell open-source para o Zsh (um shell Unix semelhante ao Bash). Ele fornece uma estrutura de diretórios e arquivos para organizar vários plugins e temas para o Zsh, além de incluir vários recursos úteis, como auto-completar comandos e comandos personalizados.

### 00_ Verificando as Informações do Sistema Operacional do Linux Mint

**OBSERVAÇÃO IMPORTANTE:** Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa<br>
**OBSERVAÇÃO IMPORTANTE:** Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish<br>
**OBSERVAÇÃO IMPORTANTE:** Linux Mint 22.x é derivado do Ubuntu Desktop 24.04.x Noble Numbat<br>

```bash
#atalho para acessar o Terminal
Terminal: Ctrl + Alt + T

#verificando as informações do sistema operacional em execução
sudo cat /etc/os-release

#verificando as informações de identificação do sistema operacional
sudo cat /etc/lsb-release

#verificando as informações de hardware e processador
#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)
sudo inxi -CMSfxxx

#listando as informações do processador
sudo lscpu

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
  Informações do Sistema
```

### 01_ Atualização do Sistema Operacional Linux Mint
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

### 02_ Instalando o Terminal Tilix no Linux Mint
```bash
#instalando o Tilix e suas dependências no Linux Mint 20.x e 21.x
sudo apt install tilix unzip git vim python2 python3
```
```bash
#instalando o Tilix e suas dependências no Linux Mint 22.x
sudo apt install tilix unzip git vim python3
```

### 03_ Instalando as Fontes Hack Nerd Fonts no Linux Mint
```bash
#criando o diretório das fontes Hack Nerd Fonts
#opção do comando mkdir: -v (verbose), -p (parents), ~ (til: alias home directory), . (files or directory hidden)
mkdir -pv ~/.local/share/fonts/Hack

#acessando o diretório das fontes Hack
#opção do comando cd: ~ (til: alias home directory)
cd ~/.local/share/fonts/Hack

#baixando as fontes do Github (link atualizado em: 06/04/2025)
#OBSERVAÇÃO IMPORTANTE: o tempo todo as fontes Nerd sobre alteração, acessar primeiro
#o projeto no Github: https://github.com/ryanoasis/nerd-fonts/releases/ antes de baixar
#o pacote compactado.
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip

#descompactando o arquivo zipado das fontes
unzip Hack.zip

#atualizando o cache de fontes do sistema operacional com as novas fontes
#opção do comando fc-cache: -f (Force up-to-date cache files), -v (Display status)
fc-cache -f -v

#saindo do terminal
exit
```

### 04_ Configurando o Tilix como Terminal Padrão no Linux Mint

**OBSERVAÇÃO IMPORTANTE:** no *Linux Mint 20.x* a mudança do Terminal padrão é feita utilizando o recurso das Configurações do Sistema em Aplicativos Preferenciais

```bash
Menu
  Aplicativos Preferenciais
    Terminal
      Tilix
```

**OBSERVAÇÃO IMPORTANTE:** no *Linux Mint 21 Vanessa e 21.1 Vera* a mudança do Terminal padrão **NÃO** é mais feita utilizando o recurso das Configurações do Sistema em Aplicativos Preferenciais, essa opção foi retirada da ferramenta, sendo necessário alterar via linha de comando:

```bash
#UTILIZAR O COMANDO ABAIXO SOMENTE SE VOCÊ ESTÁ USANDO A VERSÃO 21 OU 21.1
#opção do comando gsettings: set (Sets the value of KEY to VALUE)
gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/tilix
exit
```

**OBSERVAÇÃO IMPORTANTE:** no *Linux Mint 21.2 Victoria e 21.3 Virginia* e na nova *Versão 22 Wilma* o recurso de configurar o terminal pelo Aplicativos Preferenciais voltou, recomendo fazer por ele, **NÃO** utilizar o comando: *gsettings* para essa configuração.

```bash
Menu
  Aplicativos Preferenciais
    Sistema
      Terminal
        Tilix
```

### 05_ Executando o Terminal Tilix no Linux Mint
```bash
#atalho para abrir o Tilix no lugar do Bash padrão do Linux Mint
Atalho do Terminal: Ctrl + Alt + T
```

### 06_ Customização Básica do Tilix no Linux Mint

**OBSERVAÇÃO IMPORTANTE:** quando você executar o Tilix pela primeira vez a mensagem de: *Problema de Configuração detectado* é apresentada, essa falha está associada ao **VTE (Virtual Terminal Emulator)** você pode clicar em: *Não exibir esta mensagem novamente* ou essa falha será corrigida depois que você instalar e configurar o **ZSH** e o **Oh-My-ZSH**.

```bash
Menu
  Preferências
    Aparência
      Usar abas em vez da barra lateral (necessário reiniciar aplicação)
    Padrão (Default)
      Geral
        Fonte Personalizada: Yes
          Hack Nerd Font Mono Bold
          Tamanho: 16
            Selecionar
      Cor
        Esquemas de Cores: Monokai Dark
        Transparência: Aumentar um Pouco
<Fechar>
```

### 07_ Instalando o ZSH (Z Shell) e Oh My Zsh no Linux Mint
```bash
#abrir o terminal do Tilix
Terminal: Ctrl + Alt + T

#atualizando as lista do Apt e instalando o ZSH
sudo apt update && sudo apt install zsh

#Executando o Terminal ZSH
zsh
  #selecione a opção 2 para a criação do arquivo: ~/.zshrc com as configurações recomendadas
  Type one of the keys in parentheses: 2 <Enter>

#instalando o Oh My Zsh no Linux Mint via script do Github
#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input)
#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location) 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  Do you want to change your default shell to zsh? [Y/n] Y <Enter>
  [sudo] senha do seu usuário: <Enter>

#recomendo fechar o Terminal Tilix e abrir novamente para verificar se tudo está funcionando,
#será necessário sair 03 (três) vezes do terminal para concluir a configuração, você pode usar
#o atalho: Ctrl + D para sair dos terminais.
exit
exit
exit
```

### 08_ Instalação dos Plugins e Temas do ZSH e do Oh My Zsh no Linux Mint

Link de referência do ZSH Syntax Highlighting: https://github.com/zsh-users/zsh-syntax-highlighting<br>
Link de referência do FZF: https://github.com/junegunn/fzf.git

**OBSERVAÇÃO IMPORTANTE:** PARA O CORRETO FUNCIONAMENTO DO *ZSH* E DO *OH MY ZSH* SERÁ NECESSÁRIO INSTALAR E CONFIGURAR: **05 (CINCO) PLUGINS/TEMAS**, SEGUIR A SEQUÊNCIA ABAIXO PARA O CORRETO FUNCIONAMENTO, NÃO PULAR ETAPA.

```bash
#abrir o terminal do Tilix
Terminal: Ctrl + Alt + T

#01-PRIMEIRO: Instalação do Plugin Highlighting do ZSH
#opção d variável de ambiente ${}: opção não ambígua
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#02-SEGUNDO: Instalação do Plugin Zsh-AutoSuggestions do ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

#03-TERCEIRO: Instalação do Plugin K do ZSH
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

#04-QUARTO: Instalação do Tema PowerLevel10K
#opção d variável de ambiente ${}: opção não ambígua
#opção do comando git clone: --depth (create a shallow clone with a history truncated to the 
#specified number of commits)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

#05-QUINTO: Instalação do Plugin FZF do ZSH
#opção do comando git clone: --depth (create a shallow clone with a history truncated to the 
#specified number of commits)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

#Executando o instalador do Plugin FSF do ZSH
#opção do comando: ~ (til: alias home directory)
~/.fzf/install
  Do you want to enable fuzzy auto-completion? ([y]/n) y <Enter>
  Do you want to enable key bindings? ([y]/n) y <Enter>
  Do you want to update your shell configuration files? ([y]/n) y <Enter>
```

### 09_ Editando o arquivo de configuração do ZSHRC no Linux Mint
```bash
#editando o arquivo de configuração do ZSHRC
#opção do comando vim: ~ (til: alias home directory)
vim ~/.zshrc

#entrando no modo de edição do editor de texto VIM
INSERT

#Variáveis de configuração do Tema PowerLevel10K
#Copiar e colar substituindo a partir da linha: 11
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="nerdfont-complete"

#Variável de configuração dos Plugins do ZSH
#Copiar e colar substituindo a partir da linha: 74
plugins=(
  git
  zsh-syntax-highlighting
  fzf
  zsh-autosuggestions
  k
)
source $ZSH/oh-my-zsh.sh

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#recomendo fechar o Terminal Tilix e abrir novamente para verificar se tudo está funcionando,
#deverá iniciar automaticamente a customização do Tema PowerLevel10K utilizando o Wizard padrão.
exit
```

### 10_ Personalizando o Tema PowerLevel10K no Linux Mint
```bash
#abrir um novo terminal para iniciar as configurações do PowerLevel10K
Terminal: Ctrl + Alt + T

01) Does this look like a diamond (rotated square)?
    Choice [ynrq]: y

02) Does this look like a lock?
    Choice [ynrq]: y

03) Does this look like an upwards arrow?
    Choice [ynrq]: y

04) What digit is the downwards arrow pointing at?
    Choice [1234rq]: 2

05) Does this look like an upwards arrow?
    Choice [ynrq]: y

06) Do all these icons fit between the crosses?
    Choice [ynrq]: y

07) Prompt Style: (2) Classic.
    Choice [1234rq]: 2

08) Character Set: (1) Unicode.
    Choice [12rq]: 1

09) Prompt Color: (4) Darkest.
    Choice [1234rq]: 4

10) Show current time?: (2) 24-hour format.
    Choice [n12rq]: 2

11) Prompt Separators: (3) Slanted.
    Choice [1234rq]: 3

12) Prompt Heads: (1) Sharp.
    Choice [1234rq]: 3

13) Prompt Tails: (1) Flat.
    Choice [12345rq]: 1

14) Prompt Height: (2) Two lines.
    Choice [12rq]: 2

15) Prompt Connection: (1) Disconnected.
    Choice [123rq]: 1

16) Prompt Frame: (1) No frame.
    Choice [1234rq]: 1

17) Prompt Spacing: (2) Sparse.
    Choice [12rq]: 2

18) Icons: (2) Many icons.
    Choice [12rq]: 2

19) Prompt Flow: (2) Fluent.
    Choice [12rq]: 2

20) Enable Transient Prompt? (n) No.
    Choice [ynrq]: n

21) Instant Prompt Mode: (1) Verbose (recommended).
    Choice [123rq]: 1

22) Apply changes to ~/.zshrc?: (y) Yes (recommended).
    Choice [ynrq]: y

#caso queira reconfigurar o PowerLevel10K novamente digite o comando abaixo.
p10k configure
```

### 11_ Configurando o Visual Studio Code com suporte a Fonte Hack Nerd Font e Terminal ZSH

**OBSERVAÇÃO IMPORTANTE:** executar esse procedimento somente se você tem instalado o *Microsoft Visual Studio* no seu Linux Mint

```bash
Gerenciar
  Configurações
    terminal.integrated.fontFamily
      Hack Nerd Font

#abrindo o Terminal no VSCode
Ctrl + J
  Terminal: Selecionar o Perfil Padrão (Símbolo do + Launch Profile)
    zsh
    #OBSERVAÇÃO: remover depois o bash do perfil padrão do usuário
```