class CursosPage < SitePrism::Page
  element :resultado_filtro_titulo, ".section-header-title"
  element :lista_regioes, ".regions-list"
  elements :curso_por_regiao, ".regions-list ul li"
  element :busca_curso_filtro, ".search input"
  element :titulo_curso_filtrado, ".card-prod h1"
  element :curso_professor, ".js-card-prod-container"

  element :detalhe_curso, ".cur-details"
  element :btn_comprar, ".cur-details-buy button"
  element :preco_curso, ".value"

  elements :valor_curso, ".card-prod-price"
  element :valor_detalhes, :xpath, "//div[contains(text(),'ou 12x de R$ 199,97')]"

  def prof_ena
    click_link "Ena Loiola"
  end
end
