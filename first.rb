#!/usr/bin/ruby -w

puts "Hello, Ruby!" # So this is the main output from the program (and an inline comment)

# This is run before the main program (btw. this is a comment)
BEGIN {
    puts "Initializing program..."
}

# This runs after the program is finished
END {
    puts "Ending program."
}

