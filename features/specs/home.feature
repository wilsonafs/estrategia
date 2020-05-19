#language: pt

Funcionalidade: Validar os cenários da busca

Contexto: Acessar a home da Estratégia
    Dado que o usuário acessa a home da Estratégia 

Cenário: Realizar uma busca sem resultados
    Quando ele pesquisar pelo termo "Carro"
    Então a pesquisa deverá retornar sem nenhum resultado 

Cenário: Realizar uma busca por qualquer curso
    Quando ele pesquisar pelo termo "OAB"
    Então a pesquisa deverá retornar os cursos relacionados
