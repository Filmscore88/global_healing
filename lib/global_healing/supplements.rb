
class GlobalHealing::Supplement
attr_accessor :name, :price, :ingredients, :faqs

def self.product

self.scrape_supplements
end
  # should return all the supplement instances

def self.scrape_supplements

supplement_1= self.class.new
supplement_1.name ="VeganSafe B-12 "
supplement_1.price= "$29.95"
supplement_1.ingredients="B-12 (as 80% Methylcobalamin, 20% Adenosylcobalamin)
Methylcobalamin and adenosylcobalmin are the coenzyme forms of vitamin B-12 and are the most effective and absorbable of the four types of vitamin B-12."
supplement_1.faqs="Why is B-12 absorption a problem for some people?
B-12 is the largest vitamin known and difficult to absorb. Additionally, the gut produces something called intrinsic factor, this helps the body absorb B-12. Without intrinsic factor, B-12 just exits the body. As we get older, the availability of intrinsic factor decreases and the risk for B-12 deficiency increases."
supplement_1.name

end

end
