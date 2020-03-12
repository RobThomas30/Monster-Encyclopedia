
def invalid_input
    system 'clear'
    puts '-'.colorize(:light_red) * 45
    puts "Please pick a number from the menu."
    puts '-'.colorize(:light_red) * 45
    sleep 3.0
    system 'clear'
end

def exit_program()
    system 'clear'
    puts '-'.colorize(:light_red) * 45
    puts "Thankyou for using the Monster Encyclopedia!"
    puts '-'.colorize(:light_red) * 45
    text = Artii::Base.new :font => 'epic'
    puts text.asciify('--M:E--').colorize(:color => :black, :background => :red)
    puts '-'.colorize(:light_red) * 45
    sleep 3.0
    system "clear"
    exit
end