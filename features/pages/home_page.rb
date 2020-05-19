class HomePage < SitePrism::Page
  set_url "https://www.estrategiaconcursos.com.br"

  elements :links_nav, ".nav-top-inner a"
  element :logo, ".layout-header-inner img"
  element :busca, ".search-input-control", match: :first
  elements :links_header, ".button-header-container > a"
  elements :filtro_link, ".nav-header-links > a"

  element :popup, ".normal-popover"
  element :cancela_popup, ".onesignal-popover-cancel-button"
end
