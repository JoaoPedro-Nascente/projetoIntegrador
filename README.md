1. COMPONENTES
Integrantes do grupo
João Pedro de Oliveira Nascente: joaopedro_nascente@outlook.com
Enthoni Araújo Fontis Serafim: enthoni.afs@gmail.com
João Pedro Ribeiro Silva: johncod3fla@gmail.com

2.MINIMUNDO
Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente real) Descrição textual das regras de negócio definidas como um subconjunto do mundo real cujos elementos são propriedades que desejamos incluir, processar, armazenar, gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

O sistema proposto para a disciplina de projeto integrador conterá as informacões sobre entregadores disponíveis para entrega de protudos de lojas(com suas informações) da grande vitoria e informações sobre o proputo juntamente com o cliente(e suas informações). Dos entregadores serão armazenados os contatos e nome. Das lojas serão armazenados o contato, nome, cnpj e o endereço. O cliente terá armazenado o nome, o contato e o endereço. O cliente pode fazer vários pedidos,mas um pedido só tem um cliente.

3.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser desenvolvidas. O princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas e/ou descartadas

Sugestão: https://balsamiq.com/products/mockups/

Alt text Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom

3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
A Empresa DevCom precisa inicialmente dos seguintes relatórios:

Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento, nome do departamento, e nome do gerente.
Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
4 TABELA DE DADOS DO SISTEMA:
A) Esta tabela deve conter **todos os atributos do sistema** e um mínimo de 10 linhas/registros de dados.
B) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 

(veja o exemplo abaixo antes de criar a tabela para seu trabalho) C) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho

Exemplo de Tabela de dados da Empresa Devcom

5.PMC
Exemplo de Tabela de dados da Empresa Devcom a) inclusão do PMC desenvolvido pelo grupo

6.MODELO CONCEITUAL
A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
    * informe quais são as 3 principais entidades do sistema em densenvolvimento

(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)
C) Principais fluxos de informação/entidades do sistema (mínimo 3).
Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados D) Qualidade e Clareza Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados). Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, e tuplas falsas (Aplicar os conceitos de normalização abordados).

Alt text

6.1 Descrição dos dados
[objeto]: [descrição do objeto]

EXEMPLO:
CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
7 MODELO LÓGICO
    a) inclusão do esquema lógico do banco de dados
    b) verificação de correspondencia com o modelo conceitual 
    (não serão aceitos modelos que não estejam em conformidade)
8 MODELO FÍSICO
    a) inclusão das instruções de criacão das estruturas em SQL/DDL 
    (criação de tabelas, alterações, etc..) 