require 'open-uri'
require 'pry'
require 'nokogiri'

class Scrapper

  def scrape_main
  html= Nokogiri::HTML(open("https://www.globalhealingcenter.com/supplements.html"))
  supplements=
  binding.pry

  end

  def scrape_supplement_page(url)



  end
end
