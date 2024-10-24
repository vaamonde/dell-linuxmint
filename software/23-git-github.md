#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/01/2023<br>
#Data de atualização: 28/10/2024<br>
#Versão: 0.09<br>
#Testado e homologado no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Testado e homologado no Linux Mint 22 Wilma x64<br>

#Instalação do Git 2.x integrado no Github no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Git 2.x integrado no Github no Linux Mint 21 Vanessa, 21.1 Vera, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do Git 2.x integrado no Github no Linux Mint 22 Wilma x64<br>

[![Git e Github](http://img.youtube.com/vi/JDCYyjbrJu0/0.jpg)](https://www.youtube.com/watch?v=JDCYyjbrJu0 "Git e Github")

Link da vídeo aula: https://www.youtube.com/watch?v=JDCYyjbrJu0

Site Oficial do Git: https://git-scm.com/<br>
Site Oficial do Github: https://github.com/<br>
Site Oficial do Gitlab: https://about.gitlab.com/<br>
Site Oficial do Markdown Guide: https://www.markdownguide.org/

O QUE É E PARA QUE SERVER O GIT: Git (ou em inglês britânico) é um sistema de controle de versões distribuído, usado principalmente no desenvolvimento de software, mas pode ser usado para registrar o histórico de edições de qualquer tipo de arquivo. 

O QUE É E PARA QUE SERVER O GITHUB: GitHub é uma plataforma de hospedagem de código-fonte e arquivos com controle de versão usando o Git. Ele permite que programadores, utilitários ou qualquer usuário cadastrado na plataforma contribuam em projetos privados e/ou Open Source de qualquer lugar do mundo.

#00_ Verificando as Informações do Sistema Operacional do Linux Mint<br>
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

#01_ Atualização do Sistema Operacional do Linux Mint<br>
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
```

#02_ Instalando o Git e suas Dependências no Linux Mint<br>
```bash
#atualizando as listas do apt
sudo apt update

#instalando o Git e suas dependências no Linux Mint 20.x e 21.x
sudo apt install git vim python2 python3 pip

#instalando o Git e suas dependências no Linux Mint 22.x
sudo apt install git vim python3 pip
```

#03_ Verificando a Versão do Git instalado no Linux Mint<br>
```bash
#opção do comando git: --version (version)
#Documentação oficial do Git: https://git-scm.com/docs/git
git --version
```

#04_ Configurações Básicas do Git Localmente no Linux Mint<br>
```bash
#Seu nome completo que vai ser utilizado em qualquer commit (confirmação) recém-criado.
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --global user.name "Robson Vaamonde"

#Seu endereço de e-mail que vai ser utilizado em qualquer commit (confirmação) recém-criado.
#DICA: recomendo você usar o seu endereço de email utilizado na autenticação do Github
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --global user.email boraparapratica@gmail.com

#Seu editor de texto padrão para todos os commit (confirmação) e tags.
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --global core.editor vim

#Seu software de mesclagem que vai ser utilizado pelo git-mergetool para comparar arquivos.
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --global merge.tool vimdiff

#Habilitando o uso de cores do comando git.
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --global color.ui true

#Listando todas as variáveis definidas no arquivo de configuração do Git, junto com seus valores.
#Documentação oficial do Git: https://git-scm.com/docs/git-config
git config --list
  Q (quit) para sair

#Localização do arquivo de configuração do Git no Linux Mint.
#opção do comando ls: -l (long listing), -h (human-readable), -a (all), ~ (directory home)
ls -lha ~/.gitconfig

#listando o conteúdo do arquivo gitconfig
cat ~/.gitconfig
```

#05_ Criando uma conta de acesso ao Github<br>
```bash
Link Oficial do Projeto do Github: https://github.com

01) no canto superior direito do site clique em: Sing up;
02) no campo: Enter your email - digite o seu email para o cadastro e clique em: <Continue>
03) no campo: Create a password - digite a sua senha e clique em: <Continue>
04) no campo: Enter a username - digite o nome do seu usuário do Github <Continue>

#OBSERVAÇÃO IMPORTANTE: o nome de usuário no Github será utilizado como Repositório Base, 
#por exemplo o Repositório Base do Projeto Bora para Prática é: https://github.com/vaamonde
#(vaamonde), recomendo sempre criar o seu usuário tudo em minúscula, sem acentuação, sem
#espaço, nome que seja legível, fácil entendimento pois esse usuário será utilizado como 
#referência para o seu projeto.

05) no campo: Would you like to receive product updates and announcements via emails? - digite n e clique em? <Continue>
06) na tela de: Verify your account: clique em: <Verificar>
07) selecione depois nos quadros os dois objetivos idênticos e clique em: <Create account>
08) no campo: You are almost done! digite no campo: Enter code o código enviado para o seu email.
09) na tela de: Welcome to Github clique em: <Skip personalization>
```

#06_ Criando nosso primeiro Repositório Remoto no Github<br>
```bash
New Repository
  Owner: rsvaamonde
  Repository name: devops
  Description: Básico de DevOps com Git e Github no Linux Mint
  Check: Public
  Initialize this repository with:
    Check: Add a README file
    Add .gitignore: None
  Choose a license
    Add a license: MIT License
<Create repository>
```

#07_ Personalizando o nosso primeiro Repositório Remoto no Github<br>
```bash
About
  Edit repository details
    Description: (Emoji https://gist.github.com/rxaviers/7360908) 
    Website: http://www.boraparapratica.com.br
    Topics: git github bash shell linux linux-mint
    Include in the home page
      Check: Releases
      Check: Packages
      Check: Environments
<Save changes>
```

#08_ Criando um arquivo de Shell Script no Repositório Remoto do Github<br>
```bash
<Add file>
  Create new file
    devops/teste01.sh
      Edit new file: 
        #!/bin/bash
        echo "Criando nosso primeiro script em Shell"
      Preview
      Commit new file: Criando nosso primeiro script em Shell
      Add and optional: Aprendendo o básico em Shell
      Check: Commit directly to the master branch
<Commit new file>
```

#09_ Enviando um arquivo de Shell Script no Repositório Remoto do Github<br>
```bash
<Add file>
  Upload files
    Or choose your files: 
      Envio de arquivos: teste02.sh <Abrir>
    Commit changes: Upload do nosso segundo script em Shell
    Add and optional: Upload de arquivos no Github
    Check: Commit directly to the master branch
<Commit changes>
```

#10_ Enviando um diretório de Shell Script no Repositório Remoto do Github<br>
```bash
<Add file>
  Upload files
    Drag files here to add them to your repository:
      conf/ (arrastar e soltar)
    Commit changes: Enviando um diretório de configuração
    Add and optional: Envio do diretório de configuração no Github
    Check: Commit directly to the master branch
<Commit changes>
```

#11_ Criando um diretório e arquivo de Shell Script no Repositório Remoto do Github<br
```bash
<Add file>
  Create new file
    devops/install/teste04.sh
      Edit new file: 
        #!/bin/bash
        echo "Criando nosso quarto script em Shell"
        echo "A data de hoje é: $(date)"
      Preview
      Commit new file: Criando nosso quarto script em Shell
      Add and optional: Aprendendo o básico em Shell
      Check: Commit directly to the master branch
<Commit new file>
```

#12_ Criando um Token para acesso remoto utilizando o comando Git no Repositório Remoto do Github<br
```bash
Link da geração do Token: https://github.com/settings/tokens

Settings
  Developer settings
    Personal access tokens
      Tokens (classic)
        Generate new token (classic)
          Confirm access: <Confirm>
        New personal access token (classic)
          Note: rsvaamonde
          Expiration: No expiration
          Select scopes
            Select All Options
        <Generate token>
      Copiar o Token no ícone: copiar para área de transferência e salvar.
```

#13_ Utilizando o comando Git no no Linux Mint e sincronizando com o nosso Repositório Remoto no Github<br>
```bash
#clonando um Repositório Remoto do Github Localmente
#Documentação oficial do Git: https://git-scm.com/docs/git-clone
git clone https://github.com/rsvaamonde/devops

#listando o conteúdo do repositório clonado
#opção do comando ls: -l (list), -h (human-readable)
ls -lh

#acessando o diretório devops clonado
cd devops/

#criando um arquivo dentro do Repositório Local
#opção do redirecionador de saída >> (dois maiores): Redireciona a saída padrão, anexando
echo "#!/bin/bash" >> teste05.sh
echo "#Teste de versionamento utilizando o Git" >> teste05.sh
cat teste05.sh

#vendo o status dos arquivos no Repositório Local
#Documentação oficial do Git: https://git-scm.com/docs/git-status
git status

#adicionando o rastreamento de versionamento do arquivo no Repositório Local
#Documentação oficial do Git: https://git-scm.com/docs/git-add
#Documentação oficial do Git: https://git-scm.com/docs/git-status
git add teste05.sh
git status

#confirmando (commits) a modificação do arquivo no Repositório Local
#Documentação oficial do Git: https://git-scm.com/docs/git-commit
#Documentação oficial do Git: https://git-scm.com/docs/git-status
#opção do comando git commit: -m (message)
git commit -m "Criação do Arquivo em Shell Script teste05.sh"
git status

#listando vários tipos de objetos (blobs, trees, tags e commits) no Repositório Local
#Documentação oficial do Git: https://git-scm.com/docs/git-show
git show
  Q (quit) para sair

#mostrando os logs de confirmação (commits) no Repositório Local
#Documentação oficial do Git: https://git-scm.com/docs/git-log
git log
  Q (quit) para sair

#enviando o novo arquivo confirmado (commit) do Repositório Local para o Repositório Remoto do Github
#OBSERVAÇÃO IMPORTANTE: copiar e colocar o Token de acesso no campo login do comando git push
#Documentação oficial do Git: https://git-scm.com/docs/git-push
git push

#Editando arquivo, criando diretório, fazendo Upload de arquivo e diretório no Repositório Remoto do Github
Editar o arquivo: README.md
Editar o arquivo: install/teste04.sh
Editar o arquivo: teste05.sh

#atualizando o Repositório Local com as mudanças do Repositório Remoto do Github
#Documentação oficial do Git: https://git-scm.com/docs/git-pull
git pull

#editando um arquivo localmente e enviando as confirmações (commit) para o Repositório Remoto do Github
vim README.md
git add * ou git add . (recomendado)
git commit -m "Alteração do arquivo README.md"
git status
git show
git log
git push (utilizar o seu Token criado)

#criando um diretório e arquivo no Repositório Local e enviando as confirmando (commit) 
#para o Repositório Remoto do Github
#opção do comando mkdir: -v (verbose)
#opção do redirecionador de saída >> (dois maiores): Redireciona a saída padrão, anexando
mkdir -v teste06
cd teste06
echo "#Teste de versionamento utilizando o Git" >> teste06.sh
cd ..
git add * ou git add .
git commit -m "Criação do Diretório teste06 e do Arquivo teste06.sh"
git status
git show
git log
git push (utilizar o seu Token criado)

#criando um novo Repositório Local com o Git e enviando as confirmações (commit) para 
#o Repositório Remoto do Github
#opção do comando mkdir: -v (verbose)
mkdir -v vaamonde
cd vaamonde

#Crie um repositório Git vazio ou reinicie um existente
#Documentação oficial do Git: https://git-scm.com/docs/git-init
#opção do comando ls: -l (list), -h (human-readable), -a (all files and directory)
git init
ls -lha

#OBSERVAÇÃO IMPORTANTE: não foi comentado no vídeo, mais por padrão no Linux Mint
#todo repositório novo criado está no Branch: MASTER, muitas vezes recomendamos que
#o Branch padrão seja o: MAIN

#Troque de ramificação ou restaure os arquivos da árvore de trabalho
#opção do comando git checkout: -b (new_branch)
#Documentação oficial do Git: https://git-scm.com/docs/git-checkout
#opção do comando git checkout: -b (new-branch)
#opção do redirecionador de saída >> (dois maiores): Redireciona a saída padrão, anexando
git checkout -b main
git checkout -b master

echo "#Teste de versionamento utilizando o Git" >>  teste.sh
git add * ou git add . (recomendado)

#opção do comando git commit: -m (message)
git commit -m "Criação do arquivo teste.sh"
git status
git show
git log

#OBSERVAÇÃO IMPORTANTE: antigamente o Github permitia fazer o comando git push se o 
#diretório remoto não existir no Github ele fazia a criação, agora esse recurso não 
#funciona, sendo necessário fazer a criação do repositório remoto de forma simples 
#e depois adicionar no local a referência.
#Documentação oficial do Git: https://git-scm.com/docs/git-remote
git remote add origin https://github.com/rsvaamonde/vaamonde.git

#opção do comando git push: -u (set-upstream)
git push -u origin master

#Automatizando as mudanças do Repositório Local com o Repositório Remoto do Github no bash/shell
git pull && git add . && git commit -m "Atualização" && git push
```