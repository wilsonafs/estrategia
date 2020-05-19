Então("o usuário poderá selecionar o curso desejado") do
  @busca.lista_cursos[0].click
end

Então("visualizar os seus detalhes") do
  @cursos.wait_until_detalhe_curso_visible
  expect(@cursos).to have_preco_curso
  expect(@cursos).to have_btn_comprar
end

Quando("ele filtrar os cursos por Professor") do
  @home.filtro_link[2].click
end

Então("página irá exibir apenas os cursos por Professor") do
  expect(@busca).to have_lista_resultado
  expect(@busca).to have_current_path("/cursos/professor/")
end

Então("o usuário poderá acessar os cursos da professora Ena Loiola") do
  @cursos.prof_ena
end

Então("a página irá exibir apenas os cursos da professora") do
  expect(@cursos).to have_current_path("/cursosPorProfessor/ena-loiola-800/")
  expect(@cursos).to have_curso_professor
end

Então("o usuário poderá selecionar o curso desejado da professora") do
  $preco = @cursos.valor_curso[0].text
  @busca.lista_cursos[0].click
  $preco.slice! "cursos em até"
end

Então("visualizar os detalhes") do
  @cursos.wait_until_detalhe_curso_visible
  expect(@cursos).to have_preco_curso
  expect(@cursos).to have_btn_comprar
  @preco_detalhe = @cursos.valor_detalhes.text
  @preco_detalhe.slice! "ou"
  expect(@preco_detalhe).to eq $preco
end
