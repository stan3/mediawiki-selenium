require 'page-object'

# constants for load random page function
class RandomPage
  include PageObject

  page_url 'Special:Random'
end
