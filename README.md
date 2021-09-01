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

![Alt text](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/mockuppic.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/mockup.pdf?raw=true "Projeto entregador")


#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> A Projeto Entregador precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os entregadores disponíveis incluindo as seguintes informações: contato do entregador, tipo de contato, status de disponibilidade. 
* Relatório de pedidos entregues contendo as seguintes informações: dsc do entregador, dsc do cliente,  dsc da loja, número do pedido, dsc do produto , status do pedido e data do pedido.  
* Relatório dos ganhos do entregador incluindo as seguintes informações: qtd de entregas realizadas pelo entregador, resultado do valor de uma entrega por todas feitas.  
* Relatório de pedidos em andamentos incluindo as seguintes informações: descrição do status do entregador, numero do pedido.
* Relatório de lojas cadastradas incluindo as seguintes informações: nome da loja, cnpj da loja e o endereço da loja.
 

### 4 TABELA DE DADOS DO SISTEMA:
 <br> 
    
![Tabela de dados - Projeto Entregador](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/tabelasdedados.ods?raw=true "Tabela - Projeto Entregador")

 
 

 ### 5.PMC<br>
 ![PMC do projeto](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/PMC.pdf?raw=true "PMC")
 
 ### 6.MODELO CONCEITUAL<br>        
![Modelo conceitual](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/conceitual.jpg?raw=true "Modelo Conceitual")
![Modelo conceitual](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/conceitual.brM?raw=true "Modelo Conceitual")
    
      
    
#### 6.1 Descrição dos dados 

    Cliente: Tabela que armazena dados do cliente, no caso id, cpf e nome.<br>


### 7	MODELO LÓGICO<br>
        ![Alt text](https://github.com/JoaoPedro-Nascente/projetoIntegrador/blob/main/arquivosReadMe/logico.jpg?raw=true "Modelo Logico")

### 8	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 9	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados 
 <br> + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 10	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 10.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 10.2 PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
  a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
 <br>
  b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.
 <br>
 <br>
 
 ### 11 Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 11.1	Integração com Linguagem de programação; <br>
 #### 11.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>
 #### solicitações feitas pelo professor. <br>
 <br>
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