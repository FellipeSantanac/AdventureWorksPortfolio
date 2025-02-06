# Análise de vendas no AdventureWorks 
Utilizando o banco de dados AdventureWorks, empresa imaginária de fabricação e venda de bicicletas, iniciei uma análise para entender a evolução das vendas ao longo do tempo, principalmente entre 2011 e 2014. O objetivo inicial é fazer uma análise exploratória das vendas dos produtos da AdventureWorks, entendendo onde estão e quanto, se houve evolução na base das vendas por mês/ano e onde está o maior impacto desta evolução.

Fazendo o download do arquivo AdventureWorksDW2022.bak e anexando-o no SQL Server, é possível executar cada consulta SQL utilizada nesta análise e obter os mesmos resultados apresentados.
<br><br>

## Análise exploratória de dados
<img align="right" width="500"  src="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/imagens/Captura%20de%20tela%202025-02-04%20163920.png?raw=true">
Iniciei o projeto entendendo cada objeto, tabela, campo, tipos de dados e relacionamentos do modelo de dados AdventureWorks. Após identificar a tabela de vendas e país, desenvolvi os scripts em SQL para explorar os dados e extrair os primeiros insights durante a análise exploratória de dados. Como por exemplo: <br><br>
- Total de clientes e quantidade por país <br>
- Total de vendas, custo, margem bruta e quantidade vendida <br>
- Total de vendas por cada região  <br>
- Total de vendas por mês e por ano <br>
<br><br>
<a href="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/SQL/AdventureWorks%20-%20Clientes%2C%20mes%20e%20ano.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.


<br><br>

## Análise de vendas
<img align="left" width="500"  src="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/SQL/AdventureWorks%20-%20Vendas.sql?raw=true">
Para identificar os novos clientes, primeiro foi necessário agrupar os clientes por ano e mês em uma CTE - Common Table Expression, porém é possível o mesmo resultado utilizando outras técnicas. Na CTE criada com o nome ClientesPrimeiraDataCompra, identificamos qual foi a primeira compra de cada, agrupando novos clientes por ano e mês.
Com os dados agrupados, utilizamos a função de janela LAG para encontrar novos clientes no mesmo mês do ano anterior, permitindo os seguintes cálculos: <br><br>
- Novos Clientes  <br>
- Novos Clientes Ano Anterior<br>
- Variação de novos clientes entre períodos <br>
<br>
<a href="https://github.com/BruceFonseca/AdventureWorks2022/blob/main/SQL/AdventureWorks%20-%20Novos%20Clientes.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.
<br><br>
Analisando a variação de novos clientes entre períodos, é possível identificar em 2013, um crescimento mensal muito acima da variação de 2012, sendo necessário aprofundar a análise e identificar de onde está vindo este grande crescimento de novos clientes.

<br><br>
