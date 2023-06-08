#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/06/2023<br>
#Data de atualização: 07/06/2023<br>
#Versão: 0.01<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação e Configuração do Azure Cli no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação e Configuração do Azure Cli no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Azure: https://azure.microsoft.com/pt-br/<br>
Site Oficial do Azure Cli: https://learn.microsoft.com/pt-br/cli/azure/

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

#02_ Criando um Conta no Microsoft Azure Free (Gratuita)<br>

OBSERVAÇÃO IMPORTANTE: para fazer a assinatura Gratuita do Microsoft Azure é necessário a 
utilização de um Cartão de Crédito Internacional, na conta gratuita não será cobrado nenhum 
valor no seu cartão, apenas se você ultrapassar os limites da conta.

OBSERVAÇÃO: para utilizar o Microsoft Azure você pode utilizar uma conta do Office 365 ou
uma conta do Github.

	Acesse o site: https://azure.microsoft.com/pt-br/
	Clique em: <Testar o Azure gratuitamente>
	Clique em: <Início gratuito>
	Entrar:
		Email: SEU_ENDEREÇO_DE_EMAIL_DO_OFFICE
		<Avançar>
	Insira sua senha:
		SenHA: SUA_SENHA_DE_EMAIL_DO_OFFICE
		<Entrar>

	Contrato
		On (Enable) - Concordo com o contrato de client
		Off (Disable) - Compartilhar minhas informações
		<Avançar>
	
	Verificação de identidade por telefone
		Código do Pais: SEU_CÓDIGO_DO_PAIS (Brasil +55)
		Número de telefone: SEU_NÚMERO_DE_CELULAR (Prefixo São Paulo 11)
		<Enviar SMS para mim>
	
	Enviamos um código para seu telefone.
		Código de verificação: SEU_CÓDIGO_DO_SMS
		<Verificar código>

	Verificação de identidade por cartão
		Nome do Titular do Cartão: SEU_NOME_DO_CARTÃO_DE_CRÉDITO
		Número do cartão: NÚMERO_DO_CARTÃO_DE_CRÉDITO
		Expira em: MÊS_ANO_EXPIRAÇÃO_DO_CARTÃO_DE_CRÉDITO
		CVV: CÓDIGO_DE_VERIFICAÇÃO_DO_CARTÃO_DE_CRÉDITO
		Linha de endereço 1: ENDEREÇO_FATURA_DO_CARTÃO_DE_CRÉDITO
		Linha de endereço 2 COMPLEMENTO_DO_ENDEREÇO_FATURA_DO_CARTÃO_DE_CRÉDITO
		Cidade: CIDADE_DO_CARTÃO_DE_CRÉDITO
		Estado: ESTADO_DO_CARTÃO_DE_CRÉDITO
		Cep: CEP_DO_CARTÃO_DE_CRÉDITO
		Pais/Região: PAIS_DO_CARTÃO_DE_CRÉDITO
	<Inscrever-se>

	Você está pronto para iniciar com o Azure
	<Acesse o portal do Azure>

#03_ Se autenticando no Microsoft Azure Free (Gratuita)<br>

	Acesse a URL: https://azure.microsoft.com/pt-br/get-started/azure-portal
	<Entra>

	Escolha uma conta: 
		Selecione sua conta: SUA_CONTA_CADASTRADA
		Insira sua senha: SUA_SENHA_DA_CONTA
		<Entrar>

#04_ Criando uma Máquina Virtual no Microsoft Azure<br>

	No Painel do Azure, clique em:
		Máquinas Virtuais

	<Criar>
		Máquina Virtual do Azure
			Básico
				Detalhes do projeto
					Assinatura: Azure subscription 1
					Grupo de recursos: Default
				Detalhes da instância
					Nome da máquina virtual: WebServer
					Região: (South America) Brazil South
					Opções de disponibilidade: Nenhuma redundância infraestrutura necessária
					Tipo de segurança: Padrão
					Imagem: Ubuntu Server 22.04 LTS - x64 Gen2 (serviços gratuitos qualificados)
					Arquitetura de VM: x64
					Executar com desconto de Spot do Azure: Off (Disable)
					Tamanho: Standard_B1s - 1vCPU, 1GiB memória (US$ 12,26/mês) (serviços gratuitos qualificados)
				Conta de administrador
					Tipo de Autenticação: On (Enable): Chave pública de SSH
					Nome de usuário: SEU_USUÁRIO_DA_MÁQUINA_VIRTUAL
					Origem de chave SSH pública: Gerar um novo par de chaves
					Nome do par de chaves: WebServerAzure
				Regras de portas de entrada
					Portas de entrada públicas: On (Enable): Permitir portas selecionadas
					Selecione as portas de entrada: SSH 22
				<Avançar: Discos>
			Discos
				Criptografia de disco de VM
					Criptografia no host: Off (Disable)
				Disco de SO
					Tamanho do disco do OS: Tamanho padrão (30 GiB)
					Tipo de disco de SO: SSD Premium (armazenamento com redundância local)
					Excluir com VM: On (Enable)
					Gerenciamento de chaves: Chave de criptografia gerenciada pela plataforma
					Habilitar a compartibilidade com o Disco Ultra: Off (Disable)
				Discos de dados para WebServer
					Avançado
						Disco de SO efêmero: On (Enable) Nenhum
					<Avançar: Rede>
			Rede
				Interface de rede
					Rede Virtual: (novo) WebServer-vnet
					Sub-rede: (novo) Default (10.0.0.0/24)
					IP Público: (novo) WebServer-ip
					Grupo de segurança de rede do adaptador de rede: Básico
					Portas de entrada públicas: On (Enable) Permitir portas selecionadas
					Selecione as portas de entrada: SSH 22
					Excluir o IP público e a NIC quando a VM for excluída: On (Enable)
					Habilitar a rede acelerada: Off (Disable)
				Balanceamento de carga
					Colocar esta máquina virtual por trás de uma solução de balanceamento de carga existente?: Off (Disable)
				<Avançar: Gerenciamento>
			Gerenciamento
				Microsoft Defender para Nuvem
					Habilitar plano básico gratuitamente: On (Enable)
				Identidade
					Habilitar a identidade gerenciada atribuída pelo sistema: Off (Disable)
				Azure AD
					Entrar com o Azure AD: Off (Disable)
				Desligamento automático
					Habilitar desligamento automático: Off (Disable)
				Backup
					Habilitar backup: Off (Disable)
				Atualizações do SO convidado
					Opções de orquestração de patch: Padrão da imagem
				<Avançar: Monitoramento>
			Monitoramento
				Alertas
					Habilitar regras de alerta recomendadas: Off (Disable)
				Diagnóstico
					Diagnóstico de inicialização: Habilitar com a conta de armazenamento gerenciada (recomendado)
					Habilitar o diagnóstico de convidado do SO: Off (Disable)
				<Avançar: Avançado>
			Avançado
				Extensões: Default
				Aplicativos da VM: Default
				Dados personalizados e inicialização de nuvem: Default
				Dados do usuário
					Habilitar dados do usuário: Off (Disable)
				Desempenho (NVMe)
					Maior desempenho de armazenamento no disco remoto com NVMe: Off (Disable)
				Host
					Grupo de hosts: Nenhum grupo de hosts encontrado
				Reservas de Capacidade
					Grupo de reserva de capacidade: Nenhum
				Grupo de posicionamento por proximidade
					Grupo de posicionamento por proximidade: Nenhum grupo de posicionamento por proximidade encontrado
				<Avançar: Marcas>
			Marcas
				Nome: Default
				Valor: Default
				Recursos: 13 selecionados
				<Avançar: Revisar + criar>
		<Criar>

	GErar um novo par de chaves
	<Baixar chave privada e criar recurso>
	
#06_ Se conectando na Instância da VPC do Ubuntu Server no EC2 da Amazon AWS<br>

	No Painel do EC2, clique em:
		Instância
			Instância

	Clique no ID da sua Instância
		Clique em: <Conectar>
	
	Conexão da instância do EC2
		<Conectar>
	
	Cliente SSH
		#opção do comando ssh: -i (identity_file)
		ssh -i "/home/vaamonde/.ssh/WebServer.pem" ubuntu@ID_DA_SUA_VPC.amazonaws.com

#07_ Instalando e Configurando o AWS-Cli no Linux Mint<br>

	#instalando as principais dependências do AWS-Cli
	sudo apt update
	sudo apt install glibc-source groff less unzip git vim python2 python3

	#download e instalação do AWS-Cli
	#opção do comando curl: -o (output file)
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
	
	#verificando a versão do AWS-Cli
	aws --version

#08_ Criando um Usuário IAM (Identity and Access Management) no Amazon AWS<br>

	Na pesquisa de serviços da Amazon digite: IAM
		Em Service clique em: IAM (Manage access to AWS resources)
	
	Gerenciamento de acesso
		Usuários
			<Adicionar usuários>
				