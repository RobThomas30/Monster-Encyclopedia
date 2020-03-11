
def view_monsters(monsters_array)
    csv_text = File.read('data.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      monster = row.to_hash
      monsters_array << Monster.new(monster["name"], monster["location"], monster["description"])
      system 'clear'
    end
    monsters_array.each do |monster|
      puts '-' * 45
      puts "Name: #{monster.name}"
      puts "Found: #{monster.location}"
      puts
      puts "Description: #{monster.description}"  
      puts
    end 
    gets
  end