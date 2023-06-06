#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 29/05/2023<br>
#Data de atualização: 05/06/2023<br>
#Versão: 0.02<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação e Configuração do AWS-Cli no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação e Configuração do AWS-Cli no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do AWS: https://aws.amazon.com/pt/free<br>
Site Oficial do EC2: https://aws.amazon.com/pt/ec2<br>
Site Oficial do AWS-Cli: https://aws.amazon.com/pt/cli/

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

#02_ Criando um Conta no Amazon AWS Free (Gratuita)<br>

OBSERVAÇÃO IMPORTANTE: para fazer a assinatura Gratuita do Amazon AWS é necessário a utilização
de um Cartão de Crédito Internacional, na conta gratuita não será cobrado nenhum valor no seu
cartão, apenas se você ultrapassar os limites da conta.

Mais informações acesse: https://aws.amazon.com/pt/free/

Computação:
	Nível gratuito: 12 meses gratuitos;
	Amazon EC2: 750 horas por mês.
Armazenamento
	Nível gratuito: 12 meses gratuitos;
	Amazon S3: 5 GB.
Banco de Dados
	Nível gratuito: 12 meses gratuitos;
	Amazon RDS: 750 horas.

Criando sua conta na Amazon Free
	Acesse o site: https://aws.amazon.com/pt/free
	Clique em: <Crie uma conta gratuita>
	Preencha os campos:
		Endereço de e-mail do usuário raiz: SEU_ENDEREÇO_DE_EMAIL
		Nome da conta da AWS: SEU_USUÁRIO_DE_LOGIN
		<Verificar endereço de e-mail>

	Será enviado para o seu email um código de verificação, copiar e colar no campo
		Código de verificação
		<Verificar>

	Crie sua senha
		Senha do usuário raiz: SUA_SENHA
		Confirmar senha do usuário raiz: CONFIRMAÇÃO_DA_SUA_SENHA
		<Continuar (etapa 1 de 5)>

	Informações de contato
		Como você planeja usar a AWS?
			Pessoal - para seus próprios projetos
		Nome completo: SEU_NOME_COMPLETO
		Número de telefone: SEU_CELULAR
		País ou região: SEU_PAÍS
		Endereço: SEU_ENDEREÇO
		Cidade: SUA_CIDADE
		Estado/província ou região: SEU_ESTADO
		Código postal: SEU_CEP
		<Continuar (etapa 2 de 5)>
	
	Informações de faturamento
		Número do cartão de crédito: SEU_NÚMERO_CARTÃO_DE_CRÉDITO
		Data de expiração: MÊS_ANO
		Nome do titular do cartão: SEU_NOME_NO_CARTÃO_DE_CRÉDITO
		Endereço de faturamento: SEU_ENDEREÇO_DE_FATURAMENTO
		Tipo de registro fiscal: CPF_OU_CNPJ
			Número do registro fiscal: SEU_CPF
			Data de nascimento: SUA_DATA_DE_NASCIMENTO
			Endereço fiscal
				País ou região: AUTO_PREENCHIDO
				Código postal: SEU_CEP
				Estado: AUTO_PREENCHIDO
				Cidade: AUTO_PREENCHIDO
				Bairro: SEU_BAIRRO
				Endereço fiscal: SEU_ENDEREÇO
		<Continuar (etapa 3 de 5)>

	Confirmar sua identidade
		Como devemos enviar para você o código de verificação
			Mensagem de texto (SMS)
			Código do país ou região: SEU_CÓDIGO_DE_PAÍS
			Número de telefone celular: SEU_NÚMERO_DE_CELULAR
			Digite os caracteres como mostrado acima: SEU_CAPTCHA
		<Continuar (etapa 4 de 5)>

	Selecionar um plano de suporte
		Suporte Basic - Gratuito
		<Concluir cadastramento>
		<Acesse o Console de Gerenciamento da AWS>

#03_ Se autenticando na Amazon AWS Free (Gratuita)<br>

	Acesse a URL: https://aws.amazon.com/pt/
	Clique em: <Faça login no console>

	Entrar
		Usuário root
		Endereço de e-mail do usuário root: SEU_ENDEREÇO_DE_EMAIL
		<Próximo>
	 Login do usuário raiz
	 	Senha: SUA_SENHA
		<Entrar>

#04_ Criando um Par de Chaves de autenticação no EC2 da Amazon AWS<br>
	
	Clique em: EC2
	
	No Painel do EC2, clique em: 
		Rede e segurança
			Pares de Chaves
	
	Clique em: <Criar par de chaves>
		Par de chaves
			Nome: WebServer
			Tipo de par de chaves: RSA
			Formato de arquivo de chave privada: PEM
		<Criar par de chaves>

	OBSERVAÇÃO IMPORTANTE: automaticamente o Par de Chaves criado será feito download no seu computador
	recomendo copiar a chave para o diretório padrão de chaves do Linux Mint e alterar as suas permissões.

	Clique em: Arquivos (Nemo) acesse a Pasta: Download
	Clique como Botão Direito do Mouse e selecione: Abrir no Terminal

	Terminal: Ctrl + Alt + T
	#opção do comando cp: -v (verbose)
	#opção do comando chmod: -v (verbose), 0600 (User: RW-,Group: ---,Other: ---)
	cp -v WebServer.pem ../.ssh
	chmod -v 0600 ../.ssh/WebServer.pem

#05_ Criando uma Máquina Virtual (VPC - Virtual Private Cloud) no EC2 da Amazon AWS<br>

	No Painel do EC2, clique em:
		Instância
			Instância
				<Executar instância>

	Iniciar uma instância
		Nome e tags: 
			Nome: WebServer
		Imagens de aplicação e de sistema operacional (imagem de máquina da Amazon)
			Início rápido: Ubuntu
				Ubuntu Server 22.04 LTS (HVM), SSD Volume Type (Qualificado para o nível gratuito)
			Descrição: Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-05-16
			Arquitetura: 64 bits (x86)
		Tipo de instância
			Tipo de instância: t2.micro (Qualificado para o nível gratuito)
		Par de chaves (login)
			Nome do par de chaves - obrigatório: WebServer
		Configurações de Rede:
			Firewall (grupos de segurança): Criar grupo de segurança
			Permitir tráfego SSD de: Qualquer lugar (0.0.0.0/0)
		Configurar armazenamento
			1x 8GiB gp2 Volume raiz (Não criptografado)
		Detalhes avançado: Default
		Resumo
			<Executar instância>

#06_ Se conectando na Instância da VPC do Ubuntu Server no EC2 da Amazon AWS<br>

	No Painel do EC2, clique em:
		Instância
			Instância

	Clique no ID da sua Instância
		Clique em: <Conectar>
	
	Conexão da instância do EC2
		<Conectar>
	
	Terminal: Ctrl + Alt + T

	Cliente SSH
		#opção do comando ssh: -i (identity_file)
		ssh -i "/home/vaamonde/.ssh/WebServer.pem" ubuntu@ID_DA_SUA_VPC.amazonaws.com

#07_ Instalando e Configurando o AWS-Cli no Linux Mint<br>

	Terminal: Ctrl + Alt + T
	
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
				Detalhes do usuário
					Nome do usuário: SEU_NOME_DE_USUÁRIO
					ON (Enable) - Fornecer acesso para os usuários ao Console de Gerenciamento da AWS - opcional
					ON (Enable) - Quero criar um usuário IAM
						Senha do console:
							Senha personalizada: SUA_SENHA
							OFF (Disable) - Os usuários devem criar uma nova senha no próximo logon
					<Próximo>
				Opções de permissões
					ON - Anexar políticas diretamente
					Políticas de permissões
						ON (Enable) - IAMFullAccess
						ON (Enable) - AmazonEC2FullAccess
					<Próximo>
				Revisar e criar
			<Criar usuário>
		
		Usuários
			CLICAR_NO_USUÁRIO_CRIADO
				Credenciais e segurança
					Chaves de acesso
						<Criar chave de acesso>
							Práticas recomendadas e alternativas para chaves de acesso
								ON (Enable) - Command Line Interface (CLI)
								ON (Enable) - Compreendo a recomendação acima e quero prosseguir para criar uma chave de acesso.
								<Próximo>
							Definir etiqueta de descrição - opcional
								Valor da etiqueta de descrição: AWS-CLI
								<Criar chave de acesso>
							Recuperar chaves de acesso
								Chave de acesso: AKI(COPIAR_SUA_CHAVE_DE_ACESSO)
								Chave de acesso secreta: MOSTRAR (COPIAR_SUA_CHAVE_SECRETA_DE_ACESSO)
						<Concluído>

#09_ Configurando o AWS-Cli no Linux Mint com a conta IAM (Identity and Access Management) do Amazon AWS<br>

	Terminal: Ctrl + Alt + T

	#opção do comando aws: configure (Configure  AWS  CLI  options)
	aws configure
		AWS Access Key ID [None]: AKI(COLAR_SUA_CAHVE_DE_ACESSO)
		AWS Secret Access Key [None]: COLAR_SUA_CHAVE_SECRETA_DE_ACESSO
		Default region name [None]: us-west-2
		Default output format [None]: json
	
	#opção do comando aws: iam (Identity and Access Management (IAM)), list-users (Lists the IAM users) 
	aws iam list-users

	#opção do comando aws: ec2 (Amazon Elastic Compute Cloud), describe-instances (Describes the specified instances or all instances)
	aws ec2 describe-instances