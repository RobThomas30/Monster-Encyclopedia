def remove_monster(monsters_array)
  monster = []
  monster_names = []
  csv_text = File.read('data.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    monster << row.to_hash
  end

  system 'clear'

  monster.sort_by! { |mon| mon["name"]}
  monster.each do |thing|
    puts '-'.colorize(:red) * 45
    puts "Name: #{thing["name"]}"
    puts
    monster_names << thing["name"]
  end

  puts "Which monster would you like to remove from the encyclopedia?"
  input = gets.chomp

  if monster_names.include?(input)
    table = CSV.table("data.csv")
    table.delete_if.with_index  do |row, index|
      next if index.zero?
      row[0] == input
    end

    File.open("data.csv", 'w') do |data|
      data.write(table.to_csv)
    end
    system 'clear'
    puts '-'.colorize(:red) * 45
    puts "#{input} was deleted!"
    puts '-'.colorize(:red) * 45
    sleep 2
  else
    system 'clear'
    puts '-'.colorize(:red) * 45
    puts "No monster by that name..."
    puts '-'.colorize(:red) * 45
    sleep 2
  end
end