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
<img align="left" width="500"  src="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/imagens/Captura%20de%20tela%202025-02-04%20163945.png?raw=true">
Para identificar as vendas, primeiro foi necessário agrupar as vendas juntamente com ano e país em uma CTE - Common Table Expression, porém é possível o mesmo resultado utilizando outras técnicas. Na CTE criada com o nome VendasporPaís, identifiquei qual foi a primeira compra de cada país, agrupando as vendas por ano.
Com os dados agrupados, tive os seguintes cálculos simples para dar continuidade: <br><br>
- Soma de vendas em todos os anos  <br>
- Soma do custo total em todos os anos <br>
- Quantidade total de pedidos <br>
<br>
<a href="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/SQL/AdventureWorks%20-%20Vendas.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.
<br><br>
Analisando a variação de vendas entre períodos, é possível identificar em 2013, um crescimento anual muito acima da variação de 2011, tanto 2012, sendo necessário aprofundar a análise e identificar de onde está vindo este grande crescimento de vendas.
Com essa análise, deu para endenter que os Estados Unidos tiverem grande crescimento no ano de 2013 em relação aos outros paises, que por sua vez também tiverem aumentos significativos.
- Como análisado os Estados Unidos tiverem um crescimento em 2013 em relação a 2012 uma evolução de vendas em 270%, o que consequentemente aumentou a quantidade de clientes passando de 863 em 2012 para 7119 clientes em 2013.
- Segundo da Australia que até em 2012 tinha os melhores resultados em relação a números de vendas e clientes (nos anos 2011 e 2012), que em 2013 com uma evolução de vendas em 107%, o que atingiu a quantidade de 3500 clientes em 2013, que em 2012 obteve 1111 clientes.
- E por fim destacando os demais paises envolvidos com aumento de números de vendas e de clientes nos anos posteriores.

<br><br>

## Conclusão técnica SQL
Com o SQL, podemos analisar, extrair, manipular e exibir os dados de uma base de dados de uma forma simples e rápida, apenas conectando direto na fonte dos dados. Porém, não é uma ferramenta dinâmica em com abordagem visual, pois cada vez que precisa ver os dados de uma forma diferente, precisa reescrever o comando SQL para extrair os dados da forma que gostaria, porém os dados sempre serão exibidos em formato de tabela, deixando uma análise menos dinâmica do que um dashboard, por exemplo.

A minha conclusão é que o SQL é sempre uma linguagem muito importante e deve ser utilizada para analisar um banco de dados antes de escolher outra ferramenta para análise dos dados, como o Power BI por exemplo. Ou seja, valide as informações no SQL e só depois considere outras ferramentas de acordo com a necessidade da empresa ou projeto que estiver atuando.
Não existe uma ferramenta melhor que a outra, existe ferramentas adequadas as necessidades apresentadas em cada projeto de dados.

<br><br>

## Dashboard Power BI
<img align="right" width="500"  src="https://github.com/FellipeSantanac/AdventureWorksPortfolio/blob/main/imagens/Captura%20de%20tela%202025-02-04%20163540.png?raw=true">
Seguindo a idéia que SQL não é a melhor ferramenta para uma análise dinâmica e visual de informações, desenvolvi um dashboard focado na análise das vendas da mesma base de dados AdventureWorks.
Como o Power BI permite análises dinâmicas e visuais de forma simples, escrevendo menos código DAX e permitindo o usuário total interação com a ferramenta, fiz uma análise exploratória na quantidade de vendas, clientes por país.<br>
Com esta análise, cheguei nas seguintes conclusões:<br>
 - A maioria das vendas e clientes a partir de 2013 são novos. <br>
 - Além da quantidade de vendas e clientes novos, a receita trazida por vendas e clientes novos também é a maior fatia do total.<br>
 - Por isso o Power BI é uma ferramenta de extrema importância, pois permite o usuário final fazer seus filtros e ter análises de forma dinâmica.
<br><br>
<a href="https://github.com/FellipeSantanac/AdventureWorksPortfolio/tree/main/POWERBI" target="_blank">Clique aqui</a> e acesse o arquivo.pbix no Github.
<br>
<a href="https://app.powerbi.com/view?r=eyJrIjoiMzYxMzgwNTQtYTMwNi00ODVkLWJkYzMtMDQyNDI4NjQ3OTA0IiwidCI6IjBiYWJiODgwLTRhMmUtNGNhZS05ZmNiLTU1ZjU2YzJlNzMxOCJ9" target="_blank">Clique aqui</a> e acesse o a solução desenvolvida para a empresa AdventureWorks.
<br><br>
