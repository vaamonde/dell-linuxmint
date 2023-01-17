#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 22/12/2022<br>
#Data de atualização: 17/01/2023<br>
#Versão: 0.05<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Node.JS e NPM no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Node.JS e NPM no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Node.JS: https://nodejs.org/en/<br>
Site Oficial do NPM: https://www.npmjs.com/

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

#02_ Instalando as Dependências do Node.JS no Linux Mint<br>

	sudo apt install git vim curl gcc g++ make software-properties-common build-essential ca-certificates

#03_ Instalando a Versão LTS do Node.JS no Linux Mint<br>

	#OBSERVAÇÃO IMPORTANTE: o script de adicionar o Sources List do Node.JS no
	Linux Mint já reconhece a versão que você está usando, não sendo necessário
	informar o codinome do Ubuntu (focal ou jammy).
	sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
	sudo apt install nodejs

#04_ Verificando as Versões do Node.JS e NPM no Linux Mint<br>

	#opção do comando node: -v (version)
	#opção do comando npm: -v (version)
	sudo node -v
	sudo npm -v

#05_ Criando um Projeto Simples para Testar o Node.JS no Linux Mint<br>

	#opção do comando mkdir: -v (verbose)
	mkdir -v nodejs-hello
	cd nodejs-hello
		#opção do comando npm: init (create package.json file), -y (yes)
		#opção do comando npm: install (install package in directory)
		#opção do comando ls: -l (list), -h (human-readable)
		npm init -y
		npm install express
		ls -lh

#06_ Editando o Projeto Simples do Node.JS o VSCode no Linux Mint<br>

	#OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar o arquivo index.js
	utilizando o Microsoft Visual Studio VSCode.
	code .

	01_ criando um novo arquivo: (Atalho) Ctrl + N
	02_ copiar e colar o código abaixo: 
	03_ salvar o arquivo com o nome: index.js (Atalho) Ctrl + S

```js
// Criando as variáveis express e app
var express = require ('express'); 
var app = express();

// Mensagem que será mostrada no browser (navegador) 
app.get('/', function (req, res) {
	res.send('Robson Vaamonde #BoraParaPrática!!!');
});

// Porta padrão utilizada pela aplicação do Node.JS
app.listen(3000, function() {
	console.log('Aplicativo de exemplo ouvindo na porta 3000');
});
```

#07_ Executando o Projeto Simples do Node.JS no Linux Mint<br>

	Abrir o Terminal do VSCode: (Atalho): Ctrl + J
		node index.js

#08_ Acessando o Projeto Simples do Node.JS no Linux Mint<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	lsof -nP -iTCP:'3000' -sTCP:LISTEN
	firefox http://localhost:3000/