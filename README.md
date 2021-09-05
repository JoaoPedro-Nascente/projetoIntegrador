# TRABALHO DE PI:  Projeto entregador
Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:<br>
João Pedro de Oliveira Nascente: joaopedro_nascente@outlook.com<br>
Enthoni Araújo Fontis Serafim: enthoni.afs@gmail.com<br>
João Pedro Ribeiro Silva: johncod3fla@gmail.com<br>

### 2.MINIMUNDO<br>

> O sistema proposto para a disciplina de projeto integrador conterá as informacões sobre entregadores disponíveis para realizar a entrega de protudos das lojas e microeenpreendedores da Grande Vitória, e  também conterá informações sobre o produto juntamente com o cliente. Do entregador será armazenado o contato e nome. Da loja será armazenado o contato, nome, cnpj e o endereço. O cliente terá armazenado o nome, o contato e o endereço. O pedido terá a data que foi feito e o status(entregue ou não). O cliente pode fazer vários pedidos, mas o pedido só tem um cliente. Um cliente pode pedir de várias lojas, e uma loja pode ter vários clientes. Um entregador pode ter vários pedidos, e um pedido só tem um entregador. Esse projeto tem como visão abordar somente a Grande Vitória.
 

### 3.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Alt text](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/mockuppic.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/mockup.pdf?raw=true "Projeto entregador")


#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> A Projeto Entregador precisa inicialmente dos seguintes relatórios:
* Relatório de lojas cadastradas, incluindo as seguintes informações: nome da loja e o endereço da loja.
* Relatório que informe quais as lojas que mais venderam e quanto cada uma vendeu. 
* Objetivo: Relatório dos produtos que mais venderam e quanto cada um vendeu com o seu respectivo nome.
* Objetivo: Relatório dos clientes que mais compraram e quanto cada um comprou, com seu nome e endereço.
* Objetivo: Relatório com as categorias de produtos mais requisitadas e quanto venderam.
 

### 4 TABELA DE DADOS DO SISTEMA:
 <br> 
    
![Tabela de dados - Projeto Entregador](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/tabelasdedados.ods?raw=true "Tabela - Projeto Entregador")

 
 

 ### 5.PMC<br>
 ![PMC do projeto](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/PMC.pdf?raw=true "PMC")
 
 ### 6.MODELO CONCEITUAL<br>        
![Modelo conceitual](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/conceitual.jpg?raw=true "Modelo Conceitual")
![Modelo conceitual](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/conceitual.brM?raw=true "Modelo Conceitual")
    
      
    
#### 6.1 Descrição dos dados 

    Pessoa: Tabela que armazena dados das pessoas cadastradas, no caso id, nome e endereço.<br>
    TpContato: Tabela com os tipos de forma de contato do sistema e seus id's.<br>
    Contato: Tabela com os contatos dos usuários, podendo ser mais de 1, os tipos de contato e seus id's.<br>
    Produto: Tabela com as id's dos produtos, nome e categoria na qual se encaixa.<br>
    Catalogo: Tabela que relaciona os id's dos produtos com os id's dos usuários que os vendem e o seu respectivo preço.<br>
    Pedido: Tabela com os id's dos pedidos realizados e os clientes que os realizaram.<br>
    Itensvendidos: Tabela que relaciona os itens que foram pedidos aos seus respectivos pedidos.<br>


### 7	MODELO LÓGICO<br>
![Modelo Logico](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/logico.jpg?raw=true "Modelo Logico")
![Modelo Logico](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/logico.brM?raw=true "Modelo Logico")

### 8	MODELO FÍSICO<br>
![Modelo Fisico](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/fisico.sql?raw=true "Modelo Fisico")
       
### 9	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Restauração e inserts no banco de dados](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/restauracao-inserts.sql?raw=true "Restauração e inserts no banco de dados")


### 10	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 10.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

*Pessoa
>SELECT * FROM mydb.pessoa
![Tabela pessoa](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/pessoa.png?raw=true "Tabela pessoa")
<br>

*tpContato
>SELECT * FROM mydb.tpcontato
![Tabela tpcontato](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/tpcontato.png?raw=true "Tabela tpcontato")
<br>

*Contato
>SELECT * FROM mydb.contato
![Tabela contato parte 1](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/contato1.png?raw=true "Tabela contato parte 1")
![Tabela contato parte 2](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/contato2.png?raw=true "Tabela contato 2")
<br>

*Produto
>SELECT * FROM mydb.produto
![Tabela produto](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/produto.png?raw=true "Tabela produto")
<br>

*Catalogo
>SELECT * FROM mydb.catalogo
![Tabela catalogo](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/catalogo.png?raw=true "Tabela catalogo")
<br>

*Pedido
>SELECT * FROM mydb.pedido
![Tabela pedido](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/pedido.png?raw=true "Tabela pedido")
<br>

*ItensVendidos
>SELECT * FROM mydb.itensvendidos
![Tabela itensvendidos](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/itensvendidos.png?raw=true "Tabela itensvendidos")
<br>

#### 10.2 PRINCIPAIS CONSULTAS DO SISTEMA 

*Relatório de lojas cadastradas incluindo as seguintes informações: nome da loja e o endereço da loja.
>SELECT pessoa.idpessoa, pessoa.dscnompessoa, pessoa.endereco FROM mydb.pessoa INNER JOIN mydb.catalogo ON(pessoa.idpessoa = catalogo.pessoa_idpessoa) GROUP BY pessoa.idpessoa
Resultado:
![Relatoóio gerado](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/relatorio1.png?raw=true "Relatório gerado")
 <br>

*Relatório que informe quais as lojas que mais venderam e quanto cada uma vendeu.
>SELECT pessoa.idpessoa, pessoa.dscnompessoa, SUM(itensvendidos.dscqtd) as TotalVendas FROM mydb.pessoa INNER JOIN mydb.catalogo ON(pessoa.idpessoa = catalogo.pessoa_idpessoa) INNER JOIN mydb.itensvendidos ON(catalogo.idcatalogo = itensvendidos.catalogo_idcatalogo) GROUP BY pessoa.idpessoa ORDER BY SUM(itensvendidos.dscqtd) DESC
Resultado:
![Relatoóio gerado](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/relatorio2.png?raw=true "Relatório gerado")
 <br>

*Relatório dos produtos que mais venderam e quanto cada um vendeu com o seu respectivo nome.
>SELECT produto.dscproduto, SUM(itensvendidos.dscqtd) AS TotalVendas FROM mydb.produto INNER JOIN mydb.catalogo ON(produto.idproduto = catalogo.produto_idproduto) INNER JOIN mydb.itensvendidos ON(itensvendidos.catalogo_idcatalogo = catalogo.idcatalogo) GROUP BY produto.idproduto ORDER BY SUM(itensvendidos.dscqtd) DESC
Resultado:
![Relatoóio gerado](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/relatorio3.png?raw=true "Relatório gerado")
<br>

*Relatório dos clientes que mais compraram e quanto cada um comprou, com seu nome e endereço.
>SELECT pessoa.dscnompessoa, pessoa.endereco, SUM(itensvendidos.dscqtd) FROM mydb.pessoa INNER JOIN mydb.pedido ON(pedido.pessoa_idpessoa = pessoa.idpessoa) INNER JOIN mydb.itensvendidos ON(itensvendidos.pedido_idpedido = pedido.idpedido) GROUP BY pessoa.idpessoa ORDER BY SUM(itensvendidos.dscqtd) DESC
Resultado:
![Relatoóio gerado](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/relatorio4.png?raw=true "Relatório gerado")
 <br>

*Relatório com as categorias de produtos mais requisitadas e quanto venderam.
>SELECT produto.tpproduto, SUM(itensvendidos.dscqtd) AS totalvendido FROM mydb.produto INNER JOIN mydb.catalogo ON(produto.idproduto = catalogo.produto_idproduto) INNER JOIN mydb.itensvendidos ON(itensvendidos.catalogo_idcatalogo = catalogo.idcatalogo) GROUP BY produto.tpproduto ORDER BY SUM(itensvendidos.dscqtd) DESC
Resultado:
![Relatoóio gerado](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/imagens/relatorio5.png?raw=true "Relatório gerado")
<br>
 
 ### 11 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
![Relatórios](https://colab.research.google.com/drive/1BSIIpcw3WcEQQodNQwVEQmlYOUx09Gcn?usp=sharing?raw=true "Relatórios")
 <br>
 
 ### 12 Slides e Apresentação em vídeo. <br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 12.1 Slides; <br>
 #### 12.2 Apresentação em vídeo <br>
 <br>
 <br>   


    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
   
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")