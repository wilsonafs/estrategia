Before do
  page.driver.browser.manage.window.maximize

  @home = HomePage.new
  @busca = BuscaPage.new
  @cursos = CursosPage.new
end
