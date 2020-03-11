
class Monster
    attr_reader :name, :location, :description
    def initialize(name, location, description)
        @name = name
        @location = location
        @description = description
    end
end

def add_monster(monsters_array)
    info = true
    
    while info == true
      system 'clear'
      puts "What is the name of the monster?"
      monster_name = gets.chomp
      puts "Where was the monster sighted?"
      monster_location = gets.chomp
      puts "What does the monster look like?"
      monster_description = gets.chomp
      puts '-' * 45
    
        puts "Is your entry correct?"
        puts "1. Yes => Add entry to encyclopedia"
        puts "2. No  => Cancel entry return to menu"
  
      case gets.chomp.to_i
      when 1
        new_monster = Monster.new(monster_name, monster_location, monster_description)
        monsters_array << new_monster
        CSV.open("data.csv", "ab") do |csv|
          csv << [monster_name, monster_location, monster_description]
          system 'clear'
          info = false
        end
      when 2
        system 'clear'
          info = false
        else
          puts "Please pick 1 or 2"
  
      end
    end
  end