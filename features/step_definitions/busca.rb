Dado("que o usuário acessa a home da Estratégia") do
  @home.load

  within("div#onesignal-popover-container") do
    find("#onesignal-popover-cancel-button").click
  end

  expect(@home).to have_links_nav(:count => 11)
  expect(@home).to have_logo
  expect(@home).to have_busca
  expect(@home).to have_links_header(:count => 2)
end

Quando("ele pesquisar pelo termo {string}") do |busca|
  @home.busca.set busca
  @home.busca.send_keys :enter
end

Então("a pesquisa deverá retornar sem nenhum resultado") do
  @busca.wait_until_resultado_busca_titulo_visible
  expect(@busca).to have_current_path("/pesquisa/?q=Carro")
  expect(@busca).to have_no_lista_resultado
end

Então("a pesquisa deverá retornar os cursos relacionados") do
  @busca.wait_until_resultado_busca_titulo_visible
  expect(@busca).to have_lista_resultado
end
