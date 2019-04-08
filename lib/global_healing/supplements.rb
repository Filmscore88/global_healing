require 'pry'
class GlobalHealing::Supplement
attr_accessor :name, :description, :url
@@all=[]



 def initialize(product_hash)
    product_hash.each{|key,value| self.send(("#{key}="), value)}
    @@all << self
 end

 def self.new_from_hashes(supplement_hash)
    supplement_hash.each{|product_hash|
          self.new(product_hash)}
 end

 def self.all
   @@all

 end
end
