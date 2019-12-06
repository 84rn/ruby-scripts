#!/usr/bin/ruby -w
=begin
	This is the first case study
	from the tutorial. I bet more
	will come
=end

class Customer
    @@no_of_customers = 0

    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr 
	
	@@no_of_customers += 1
    end

    def display_details()
        puts "Customer id: #@cust_id"			# this looks like concat() for variables (#)
        puts "Customer name: #@cust_name"		# from within the string
        puts "Customer addr: #@cust_addr"
    end

    def total_no_of_customers()
	puts "Total number of customers: #@@no_of_customers"
    end
end

cust1 = Customer.new("1", "Andy", "Boston, MA")
cust2 = Customer.new("2", "Bart", "Paris, FL")

cust1.display_details();
cust2.display_details();

cust1.total_no_of_customers();
