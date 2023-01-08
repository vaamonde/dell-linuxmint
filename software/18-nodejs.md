#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 22/12/2022<br>
#Data de atualização: 08/01/2023<br>
#Versão: 0.03<br>
#Testado e homologado no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Testado e homologado no Linux Mint 21 Vanessa e 21.1 Vera x64

#Instalação do Node.JS e NPM no Linux Mint 20.1 Ulyssa, 20.2 Uma e 20.3 Una x64<br>
#Instalação do Node.JS e NPM no Linux Mint 21 Vanessa e 21.1 Vera x64

Site Oficial do Node.JS: https://nodejs.org/en/<br>
Site Oficial o NPM: https://www.npmjs.com/

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

	_ Atualização do sistema utilizando o MintUpdate;
	_ Atualização do sistema utilizando o Apt;

	Terminal: Ctrl + Alt + T
		sudo apt update
		sudo apt upgrade
		sudo apt full-upgrade
		sudo apt dist-upgrade
		sudo apt autoremove
		sudo apt autoclean

#02_ Instalando as Dependências do Node.JS no Linux Mint<br>

	_ sudo apt install git vim curl gcc g++ make build-essential ca-certificates

#03_ Instalando a Versão LTS do Node.JS no Linux Mint<br>

	_ sudo curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
	_ sudo sudo apt install nodejs

#04_ Verificando as Versões do Node.JS e NPM no Linux Mint<br>

	_ sudo node -v
	_ sudo npm -v

#05_ Criando um Projeto Simples para Testar o Node.JS no Linux Mint<br>

	_ md -v nodejs-hello
	_ cd nodejs-hello
	_	npm init -y
	_	npm install express --save

#06_ Editando o Projeto Simples do Node.JS o VSCode no Linux Mint<br>

	_ code .
	_ OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar o arquivo index.js

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

	_ Atalho: Ctrl + J
	_ node index.js

#08_ Acessando o Projeto Simples do Node.JS no Linux Mint<br>

	_ firefox http://localhost:3000/