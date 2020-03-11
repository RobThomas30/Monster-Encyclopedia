system 'clear'

require_relative 'view_monsters.rb'
require_relative 'add_monster.rb'
require_relative 'remove_monster'
require_relative 'invalid_and_exit'

require 'csv'





def menu()
  system 'clear'
  puts "-" * 45
  puts "Welcome to the Monster Encyclopedia"
  puts "What would you like to do?"
  puts "-" * 45
  puts "1. View all entries"
  puts "2. Add a new monster to the encyclopedia"
  puts "3. Remove a monster from the encyclopedia"
  puts "4. Close encyclopedia"
end

while true
  menu()
  monsters_array = []
  case gets.chomp.to_i
  when 1
    view_monsters(monsters_array)
  when 2
    add_monster(monsters_array)
  when 3
    remove_monster(monsters_array)
  when 4
    exit_program()
  else
    invalid_input()
  end
end