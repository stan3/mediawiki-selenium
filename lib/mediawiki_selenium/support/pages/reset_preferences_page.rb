require 'page-object'

# constants for reset preferences page
class ResetPreferencesPage
  include PageObject

  page_url 'Special:Preferences/reset'

  button(:submit, class: 'mw-htmlform-submit')
end
