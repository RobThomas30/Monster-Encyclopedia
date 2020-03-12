
require_relative 'view_monsters.rb'
require_relative 'add_monster.rb'
require_relative 'remove_monster'
require_relative 'invalid_and_exit'
require 'csv'
require 'tty-prompt'
require 'colorize'
require 'artii'

$prompt = TTY::Prompt.new

system 'clear'
puts "-".colorize(:red) * 45
puts "Welcome to Monster Encyclopedia!"
puts "-".colorize(:red) * 45
text = Artii::Base.new :font => 'epic'
puts text.asciify('--M:E--').colorize(:color => :black, :background => :red)
puts '-'.colorize(:light_red) * 45
sleep 3

def menu()
  system 'clear'
  puts "-".colorize(:red) * 45
  puts "Welcome to the Monster Encyclopedia"
  puts "-".colorize(:red) * 45
  input = $prompt.select("What would you like to do?") do |menu|
    menu.choice name: "View all entries", value: 1
    menu.choice name: "Add a new monster to the encyclopedia", value: 2
    menu.choice name: "Remove a monster from the encyclopedia", value: 3
    menu.choice name: "Close encyclopedia", value: 4
  end
  return input
end

while true
  input = menu()
  monsters_array = []

  case input
  when 1
    view_monsters()
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