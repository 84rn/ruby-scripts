#!/usr/bin/ruby -w

=begin
	Let's start with this 
        ugly block comment
=end 

class Customer					# class keyword starts the class definition
    @@no_of_customers = 0			# this is a --CLASS-- variable - starts with @@ 
						# and is shared between objects

=begin
    Method definitions start with the 'def' keyword
    and end with 'end' keyword; similar to Python
=end

    def initialize(id, name, addr)		# this is the constructor
	@cust_id = id				# these are --INSTANCE-- variables
        @cust_name = name			# they start with @ and are available to methods
        @cust_addr = addr			# within the object
    end

    def get_id
	puts @cust_id
    end

    def get_name
        puts @cust_name
    end

    def get_addr
        puts @cust_addr
    end
end						# end keyword ends the definition

# Creating 2 instances of Customer class
# Strange way to invoke new...  Class name follows the dot operator and then the new keyword
cust1 = Customer.new("1", "John", "Trieu Apartments, Tulsa")
cust2 = Customer.new("2", "Poul", "New Empire Road, Khandala")

cust1.get_id()
cust2.get_name()
cust1.get_addr()

BEGIN {
    puts "Starting program"
}

END {
    puts "Finishing..."
}
