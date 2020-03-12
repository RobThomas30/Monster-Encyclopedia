
def view_monsters()
    monsters_array = []
    csv_text = File.read('data.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      monster = row.to_hash
      monsters_array << monster
      system 'clear'
    end
      monsters_array.sort_by! { |mon| mon["name"]}
      monsters_array.each do |monster|
      puts '-'.colorize(:red) * 45
      puts "Name:" + " #{monster["name"]}".colorize(:light_red)
      puts "Found: #{monster["location"]}"
      puts
      puts "Description: #{monster["description"]}"  
      puts
    end 
    gets
  end