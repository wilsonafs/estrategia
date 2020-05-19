Quando("ele filtrar os cursos por região") do
  @home.filtro_link[4].click
end

Então("a página irá exibir apenas os cursos da região selecionada") do
  expect(@cursos).to have_current_path("/cursos/regiao/")
  @cursos.wait_until_resultado_filtro_titulo_visible
  expect(@cursos).to have_lista_regioes
end

Então("se o usuário tentar filtrar por um curso que não existe naquela região") do
  @cursos.curso_por_regiao[22].click
  expect(@cursos).to have_current_path("/cursos/regiao/?estado=SP")
  @busca.wait_until_lista_resultado_visible
  @cursos.busca_curso_filtro.set "ubuntu"
end

Então("nenhum resultado será exibido na filtragem") do
  expect(@busca).to have_no_lista_resultado
end

Então("o usuário poderá filtrar o curso desejado da região selecionada") do
  @cursos.curso_por_regiao[22].click
  expect(@cursos).to have_current_path("/cursos/regiao/?estado=SP")
  @busca.wait_until_lista_resultado_visible
  @cursos.busca_curso_filtro.set "Correios"
end

Então("a página irá exibir apenas o curso desejado") do
  expect(@busca).to have_lista_resultado
  expect(@cursos.titulo_curso_filtrado.text).to eq "Correios"
end
