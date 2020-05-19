#language: pt

Funcionalidade: Validar os cenários da visualização dos cursos 

Contexto: Acessar a home da Estratégia
    Dado que o usuário acessa a home da Estratégia 

Cenário: Visualizar os detalhes de um curso 
    Quando ele pesquisar pelo termo "OAB"
    Então a pesquisa deverá retornar os cursos relacionados
    E o usuário poderá selecionar o curso desejado 
    E visualizar os seus detalhes

Cenário: Acessar o curso da professora Ena Loiola 
    Quando ele filtrar os cursos por Professor 
    Então página irá exibir apenas os cursos por Professor 
    E o usuário poderá acessar os cursos da professora Ena Loiola
    Então a página irá exibir apenas os cursos da professora 
    E o usuário poderá selecionar o curso desejado da professora
    E visualizar os detalhes
