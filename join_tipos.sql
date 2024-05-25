--sql aula 17 - tipos de joins + desafios (intermediario)

/*inner join - retorna apenas os resultados correspondentes (que existem)
tanto na tabela a como na tabela b.

ex: select * from tabela a
inner joinn tabela b
on tabelaa.nome = tabelab.nome

full outer join - retorna um conjunto de todos registros correspondentes da
tabela a e da tabela b quando sao iguais. E alem disso se nao houver valores 
correspondentes ele simplesmente ira preencher esdse lado com "null".

ex: select * from tabela a
full outer joinn tabela b
on tabelaa.nome = tabelab.nome

left outer join - retorna um conjunto de todos os registros da tabela a, e alem disso
os registros correspondentes (quando disponiveis) na tabela b. se nao houver registros
correspondentes, será preenchido com "null".

ex: select * from tabela a
left outer joinn tabela b
on tabelaa.nome = tabelab.nome

right outer join - retorna um conjunto de todos os registros da tabela b, e alem disso
os registros correspondentes (quando disponiveis) na tabela a. se nao houver registros
correspondentes, será preenchido com "null".

ex: select * from tabela b
right outer joinn tabela a
on tabelab.nome = tabelaa.nome





