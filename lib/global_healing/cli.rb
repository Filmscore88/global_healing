require 'colorize'
class GlobalHealing::CLI

  def call
    list_supplements
    supplement_info_menu
  end

  def list_supplements
    puts "Global Healing Supplement Line:".green
    GlobalHealing::Supplement.new_from_hashes(GlobalHealing::Scrapper.scrape_main_page)
    display_supplement_list
  end

  def display_supplement_list
    @supplements=GlobalHealing::Supplement.all.each.with_index(1){|supplement, index|
      puts " #{index}. #{supplement.name}".blue
    }
  end

  def end_program
    puts "Thank you for viewing the Global Healing supplement line!!".green
  end

  def supplement_info_menu
  input = nil
    while input != 'exit'
    puts "Select a number for product description, to view the product weblink type 'url'. Otherwise type 'list' to view the supplement list or type 'exit'.".red
    input = gets.strip.downcase

      if input.to_i > 0
        puts @supplements[input.to_i-1].description.blue
        elsif input == "url"
        puts @supplements[input.to_i-1].url.blue
         elsif input == "list"
         display_supplement_list
          elsif input == "exit"
          end_program
           else
           puts "Hmmm, im sorry I did not recognize that entry.".red
      end
    end
  end
end
