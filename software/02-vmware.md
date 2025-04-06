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

#Instalação do VMware Workstation no Linux Mint 20 Ulyana, 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do VMware Workstation no Linux Mint 21 Vanessa, 21.1 Vera, 21.2 Victoria e 21.3 Virginia x64<br>
#Instalação do VMware Workstation no Linux Mint 22 Wilma e 22.1 Xia x64<br>

[![VMware Workstation](http://img.youtube.com/vi/Uv2mebfheaI/0.jpg)](https://www.youtube.com/watch?v=Uv2mebfheaI "VMware Workstation")

Link da vídeo aula: https://www.youtube.com/watch?v=Uv2mebfheaI

Site Oficial do VMware Workstation: https://www.vmware.com/br/products/workstation-pro.html<br>
Site Oficial do VMware Store: https://store-us.vmware.com/vmware-workstation-17-pro-5709912600.html<br>
Site Oficial da Broadcom VMWare: https://www.broadcom.com/info/vmware<br>

**O QUE É E PARA QUE SERVER O VMWARE WORKSTATION:** O VMware Workstation é uma linha de produtos de *hypervisor* de desktop que permitem aos usuários executar **Máquinas Virtuais**, contêineres e clusters de Kubernetes.

**OBSERVAÇÃO IMPORTANTE:** A fabricante de chips **Broadcom** finalizou sua aquisição de *US$ 69 bilhões da VMware*, fabricante de software em nuvem. O acordo foi finalmente concluído, apesar dos obstáculos de aprovação regulatória impostos pela China.

A empresa combinada se concentrará em ajudar as empresas a criar e modernizar seus ambientes de nuvem privada e híbrida. Todavia, a VMware continuará a oferecer seu catálogo de software para nuvem e Edge.

23/11/2023 - Mais informações acesse: https://www.datacenterdynamics.com/br/not%C3%ADcias/broadcom-conclui-a-aquisicao-de-us-69-bilhoes-da-vmware/<br>
23/11/2023 - Mais informações acesse: https://inforchannel.com.br/2023/11/23/broadcom-conclui-compra-da-vmware-e-acoes-deixam-de-ser-negociadas/<br>
27/11/2023 - Mais informações acesse: https://www.cisoadvisor.com.br/broadcom-deve-concluir-compra-da-vmware-por-us-69-bi-na-quarta/

## Tecnologias de Virtualização dos Processadores AMD e Intel
```bash
#Tecnologias de Virtualização Intel e AMD
1) vmx...: Intel VT-x, suporte a virtualização ativada na BIOS.
2) svm...: AMD SVM, suporte a virtualização ativada na BIOS.

#AES dos Processadores da AMD e Intel
01) aes...: Aplicativos que executam criptografia e descriptografia usando o Advanced
            Encryption Standard em processadores Intel e AMD.

#Flags dos Processadores da Intel
01) ept.....: Suporte de tabela de páginas estendidas da Intel habilitado para tornar
              mais rápida a emulação de tabelas de páginas de convidados.
02) vpid....: ID do processador virtual da Intel. Faça descargas de TLB caras
              desnecessárias quando alternar o contexto entre os convidados.
03) vnmi....: O Intel Virtual NMI ajuda com eventos de interrupção selecionados em 
              convidados.
04) tpr_shadow e flexpriority..: Recurso da Intel que reduz as chamadas para o hypervisor 
                                 ao acessar o Registro de prioridade de tarefas, o que ajuda 
                                 na execução de determinados tipos de convidados do SMP.

#Flags dos Processadores da AMD
01) npt...........: Tabelas de Páginas Aninhadas AMD, semelhantes ao Intel EPT.
02) lbrv..........: Suporte de virtualização da AMD LBR.
03) svm_lock......: MSR de bloqueio AMD SVM.
04) nrip_save.....: AMD SVM next_rip salvar.
05) tsc_scale.....: Suporte de dimensionamento do AMD TSC.
06) vmcb_clean....: Suporte para bits limpos AMD VMCB.
07) flushbyasid...: Suporte para AMD flush-by-ASID.
08) decodeassists.: AMD Decode Assistir ao suporte.
09) pausefilter...: Interrupção de pausa filtrada AMD.
10) pfthreshold...: AMD pausa o limite do filtro.
```

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

### 02_ Download do VMware Workstation Pro 17 (Build 17.5.0 26/11/2023)

**OBSERVAÇÃO IMPORTANTE:** DEPOIS DA COMPRA DA VMWARE PELA BROADCOM, O PROCEDIMENTO DE DOWNLOAD E INSTALAÇÃO DO VMWARE WORKSTATION QUE AGORA É FREE PARA USO PESSOAL MUDOU, PRECISANDO FAZER UM CADASTRO E GERAR UMA CHAVE DE ACESSO PARA O SEU DOWNLOAD, VEJA OS PROCEDIMENTOS A PARTIR DE ETAPA: 06.

```bash
#download do VMWare Workstation do site oficial
Link: https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
  Versão: Workstation 17 Pro for Linux
```

### 03_ Alterando as Permissões de Execução do Binário do VMware Workstation Pro
```bash
#executar os procedimentos em modo gráfico (gerenciador de arquivos Nemo)
01) Acessar o diretório de Download;
02) Clicar com o Botão direito do mouse no binário do VMware-Workstation-Full-*.bundle;
03) No Menu selecionar a opção: Propriedades;
04) Acessar a aba: Permissões;
05) Clicar na opção: Permitir execução do arquivo como um programa.
<Fechar>
```

### 04_ Instalando o VMware Workstation Pro no Linux Mint
```bash
#iniciar a instalar em modo gráfico e executar o script de instalação no Terminal
01) Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
02) Digitar o comando: sudo ./VMware-Workstation-Full-*.bundle
03) Digitar a senha do seu usuário e aguardar a finalização da instalação.
```

### 05_ Configuração básica do VMware Workstation Pro no Linux Mint
```bash
#telas de configuração da instalação do VMware Workstation
01) Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
02) Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
03) Na tela de Update marque a opção: Yes <Next>
04) Na tela de Experience marque a opção: Yes <next>
05) Na tela de License Key marque a opção: I want to try VMware Workstation 16 for 30 days: <Finish>
06) Na tela de autenticação, digite a senha do seu usuário e clique em: <Autenticar>
07) Na tela de Information, clique em: <OK>
```

### 06_ Desinstalando o VMware Workstation Pro no Linux Mint
```bash
#listando a versão do VMware Workstation Pro instalado no Linux Mint
#opções do comando vmware-installer: -l (list-products)
sudo vmware-installer -l

#removendo o VMware Workstation Pro do Linux Mint
#opções do comando vmware-installer: -u (uninstall-product)
sudo vmware-installer -u
```

**OBSERVAÇÃO IMPORTANTE:** No dia *13/05/2023* a VMware by Broadcom anunciou a versão do **VMware Workstation Pro 17 e VMware Fusion Pro 13 Free** para uso *pessoal* no seu site oficial, agora você pode baixar as versões no site da Broadcom é utilizar gratuitamente para testes e estudos.

Link sobre informações da versão Pro Free do VMware Workstation, mas informações acesse: https://blogs.vmware.com/workstation/2024/05/vmware-workstation-pro-now-available-free-for-personal-use.html

### 07_ Baixando a Nova Versão PRO FREE do VMware Workstation do site da Broadcom

Site da Broadcom para o cadastro de acesso ao download do VMware Workstation, link VMware Workstation Pro Download: https://access.broadcom.com/default/ui/v1/signin/

```bash
A) Criando uma conta na Broadcom (User Registration)
  Site: https://profile.broadcom.com/web/registration

  User Registration
  Email Address: SEU_EMAIL
  Caption: SEU_CAPTION
  <Next>

  Verify your Email Address
  Code Number: CÓDIGO_DE_VERIFICAÇÃO
  <Verify & Continue>

  Complete your Registration
  First Name: SEU_PRIMEIRO_NOME
  Last Name: SEU_SOBRENOME
  Country: Brazil
  Job Title: SEU_TRABALHO
  Password: SUA_SENHA
  Confirm Password: CONFIRMA_SUA_SENHA
  (ON) I accept the Terms of Use .Your privacy is important to us. Please see our 
  Privacy Policy for more information.
  <Create Account>
  <Ill do it later>
```

**OBSERVAÇÃO IMPORTANTE:** ANTES DE CLICAR NO LINK RECOMENDADO DEIXAR AUTENTICADO NO SITE DA BROADCOM O SEU USUÁRIO PARA FACILITAR O DOWNLOAD DO VMWARE WORKSTATION.

```bash
B) Acessando o Link de Download do VMware Workstation Pro
#Site para download da nova versão do VMWare Workstation Pro Free by Broadcom
Site: https://support.broadcom.com/group/ecx/productdownloads?subfamily=VMware+Workstation+Pro

  Clique em: VMware Workstation Pro 17 for Personal Use (Linux)
  Clique em: 17.5.2 (atualizado em: 01/07/2024)
  Clique em: (ON) I agree toTerms and Conditions
  Clique em: Ícone de Download (Screening Required)

  Prior to downloading this file, additional verification is required. Proceed? (YES)

  Trade Compliance Verification: CONFIRME_SEU_DADOS 
  (ON) I Agree <SUBMIT>

  VMware Workstation Pro for Personal Use (For Linux) 17.5.2
  Clique em: Ícone de Download (HTTPS Download)
  Binário com cerca de: 511MB

C) Instalando o VMware Workstation Pro 17 for Personal Use (Linux)

  Acesse o diretório downloads;
  Clique com o botão direito do mouse em cima do binário: VMware-Workstation-Full*.bundle
  Selecione: Propriedades
  Clique na aba: Segurança
  Marque a opção: Permitir execução do arquivo como um programa
  <Fechar>

  Clique com o botão direito do mouse na área de download
  Selecione: Abrir no Terminal
  Digite o comando: sudo ./VMware-Workstation-Full*.bundle

D) Welcome to VMware Workstation

  I accept the therms in the license agreement: <Next>
  I accept the therms in the license agreement: <Next>
  Would you like to check for product update on startup? (YES) <Next>
  Join the VMware Customer Experience Improvement Program (CEIP)? (YES) <Next>
  I want to license VMware Workstation 17 for Personal Use: <Finish>
    <DIGITE A SENHA DO SEU USUÁRIO COM DIREITOS A ROOT>
  Thank you for using VMware Workstation 17! <OK>

E) Verificando a Licença do VMWare Workstation Pro 17 for Personal Use

  Help, About VMware Workstation 17 Pro.
  License Information:
    Status: Not Licensed
    Type: Personal Use Only
    Expiration: Not Applicable
    Notes: For Commercial Use, purchase a license

F) Criando uma máquina Virtual do Ubuntu Server

  Home VMware Workstation
    Create a New Virtual Machine

  Virtual Machine Configuration
    (ON) Custom (advanced): <Next>
  Virtual Machine Hardware Compatibility
    Hardware compatibility: Workstation 17.5.x: <Next>
  Install operating system from
    Use ISO image: <Browse> <Next>
  Guest Operating System
    (ON) 2. Linux
    Version: Ubuntu <Next>
  Virtual Machine Name
    Name: wsvaamonde
    Location: DEFAULT <Next>
  Processors
    Number of processors: 2
    Number  fo cores per processor: 1
    Total processor cores: 2 <Next>
  Memory
    Memory for this virtual machine: 4096MB <Next>
  Network Connection
    (ON) Use bridged networking <Next>
  I/O Controller Types
    SCI controller: LSI Logic (Recommended) <Next>
  Virtual Disk type
    SCSI (Recommended) <Next>
  Disk
    Create a new virtual disk <Next>
  Disk Size
    Maximum disk size (in GB): 50GB <Next>
  Disk File
    File name: wsvaamonde.vmdk <Next>
  <Finish>
  <Close>

G) Iniciando a Máquina Virtual do Ubuntu Server

  Library: wsvaamonde <Play/Star up>
```