require 'open-uri'
require 'pry'
require 'nokogiri'

class GlobalHealing::Scrapper

 def self.scrape_main_page
 supplement_hash=[]
 html= Nokogiri::HTML(open("https://www.globalhealingcenter.com/supplements.html"))
 supplement_list=  html.css(".products-list .clearfix")
    supplement_list.collect{|product|
    product_hash={
                  :name => product.css("h4 a").text,
                  :description => product.css(".sm-col.sm-col-11.md-col-8.px2 p:nth-child(4)").text,
                  :url => product.css(".text-link").attribute("href").text
                  }
                  supplement_hash << product_hash
    }
              supplement_hash= supplement_hash.uniq
              supplement_hash
 end
end
