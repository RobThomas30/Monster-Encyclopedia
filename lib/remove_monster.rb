def remove_monster(monsters_array)
  monster = []
  monster_names = []
  csv_text = File.read('data.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    monster << row.to_hash
  end

  system 'clear'

  monster.each do |thing|
    puts '-' * 45
    puts "Name: #{thing["name"]}"
    puts
    monster_names << thing["name"]
  end

  puts "Which monster would you like to remove from the encyclopedia?"
  input = gets.chomp

  if monster_names.include?(input)
    table = CSV.table("data.csv")
    table.delete_if do |row|
      row[0] == input
    end

    File.open("data.csv", 'w') do |data|
      data.write(table.to_csv)
    end
    system 'clear'
    puts "#{input} was deleted!"
  else
    system 'clear'
    puts "No monster by that name..."
    sleep 2
  end

end