class GlobalHealing::CLI

  def call
    list_supplements
    supplement_info_menu
  end


  def list_supplements
    puts "Global Healing Supplement Line:"

      @supplements = GlobalHealing::Supplement.new.all
end

  def supplement_info_menu
    input = nil
    while input != 'exit'
      puts "Select the supplement number for more info, type 'list' for the supplement list or type 'exit'."
      input = gets.strip.downcase
       if input.to_i > 0
         puts @supplements[input.to_i-1]
         case input
      when '1'
        puts "1"
      when '2'
        puts "2"
      end
      puts supplement_1.name
end
end
end
end

# options: Please select a supplement for more information
