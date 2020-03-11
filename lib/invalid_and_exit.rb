
def exit_program()
    system 'clear'
    puts '-' * 45
    puts "Thankyou for using the Monster Encyclopedia!"
    puts "Goodbye"
    puts '-' * 45
    sleep 3.0
    system "clear"
    # puts #ascii art
    # sleep 3.0
    # system "clear"
    exit
end

def invalid_input
    system 'clear'
    puts '-' * 45
    puts "Please pick a number from the menu."
    puts '-' * 45
    sleep 3.0
    system 'clear'
end