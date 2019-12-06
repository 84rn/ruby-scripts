#!/usr/bin/ruby

=begin
	This script will demonstrate different 
	variable types. There are 5 types of 
	variables in Ruby:
=end

# ========================================================================
# 	- $var - a global variable shared between different classes
#		 if unitialized, have nil value
$global_var = 10

class Class1
    def print_global()
        puts "Global variable in Class1 is #$global_var"
    end
end

class Class2
    def print_global 		# no arguments - no brackets needed!
        puts "Global variable in Class2 is #$global_var"
    end
end

c1 = Class1.new()
c2 = Class2.new			# can be run without brackets if no constructor args

c1.print_global()
c1.print_global			# methods without args can be called without brackets

# ========================================================================
#	- @var - an instance variable shared between methods of one object
#		 if uninitialized, have nil value

class Class3
    def initialize(id, name, addr)
         @cust_id = id
         @cust_name = name
         @cust_addr = addr
    end

    def display_info()
	puts "Class3 info: #@cust_id, #@cust_name, #@cust_addr"
    end
end

c3 = Class3.new("1", "Bart", "Oklahoma")
c3.display_info()

# ========================================================================
#	- @@var - a class variable shared between object of same class
#		  MUST be initialized!

class Class4
    @@no_of_objects = 0
	def initialize()
	    @@no_of_objects += 1
	end

	def how_many()
	    puts "Number of Class4 objects: #@@no_of_objects"
	end
end

c4a = Class4.new
c4b = Class4.new
c4c = Class4.new

c4b.how_many()

# ========================================================================
#	- @@var - a class variable shared between object of same class
#		  MUST be initialized!
#	- _var || var - l - local variables. They start with _ or lowercase 
#		  	    letters. If referenced uninitialized they act
#			    like calling a method without arguments;
#			    assignment equals definition if uninitialized;
#			    ex: id, name, addr in Class3
#	- CONSTANT - a constant variable holds the value and is full UPPERCASE;
#		     referenced uninitialized they produce error;
#	- pseudo-variables - self, true, false, nil, __FILE__, __LINE__

# ========================================================================
# Substitution in strings

puts "You can put any expression in \#{}: #{20*30}"

# ========================================================================
# 	Arrays - put comma-separated values in square brackets

puts "Arrays:"
arr = ['one', 2, 'three', 0x04]
arr.each do |i|
    puts i
end

# ========================================================================
# 	Hashes - put => separated pairs of key => value in braces

puts "Hashes:"
h = { 1 => "one", 2 => "two", 3 => "three" }
h.each do |key, value|
    print key, " is ", value, "\n"
end

# ========================================================================
# 	Ranges - 1..5 - inclusive (1,2,3,4,5)
#		 1...5 - exclusive (1,2,3,4)

puts "Ranges:"
(10..15).each do |n|
    print n, ' '
end
print "\n"
