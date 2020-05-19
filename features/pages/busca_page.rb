class BuscaPage < SitePrism::Page
  element :resultado_busca_titulo, ".page-result-header-inner h1"
  element :lista_resultado, ".page-result-list"
  elements :lista_cursos, ".card-prod a"
end
