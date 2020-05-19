#language: pt

Funcionalidade: Validar os cenários da filtragem da página

Contexto: Acessar a home da Estratégia
    Dado que o usuário acessa a home da Estratégia 
    Quando ele filtrar os cursos por região

Cenário: Realizar uma filtragem por região
    Então a página irá exibir apenas os cursos da região selecionada

Cenário: Tentativa de filtrar um curso específico de uma região com dados inválidos
    Então a página irá exibir apenas os cursos da região selecionada
    Mas se o usuário tentar filtrar por um curso que não existe naquela região 
    Então nenhum resultado será exibido na filtragem 

Cenário: Filtrar um curso específico de uma região
    Então a página irá exibir apenas os cursos da região selecionada
    E o usuário poderá filtrar o curso desejado da região selecionada 
    E a página irá exibir apenas o curso desejado

