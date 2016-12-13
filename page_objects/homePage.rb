class HomePage < SitePrism::Page
  element :side_menu, :id, "openSideMenu"
  element :view_menu, :xpath, "//div/span[text() = 'View Menu']"
  element :view_favorite, :xpath, "//div/span[text() = 'Favorites Menu']"
  element :view_customsearch, :xpath, "//div/span[text() = 'Custom Search']"
  element :filter_menu, :xpath, "//div/span[text() = 'Filter Menu']"
  element :logout_button, :css, "a[class='no-nesting']"
  element :cardmenu, :id, "cardMenu"
  element :add_card, :css, "li[class*='sideIconAddNew'] span[class*='selectFilterView']"
  element :created_card, :css, "li[class*='openAccortdion'] span[title*='auto-test']"

end
