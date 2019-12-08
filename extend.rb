#!/usr/bin/ruby

module A
FOO = 1

def met1
puts '1'
end
end

class B
Boo = 2

def met2
puts '2'
end
end

B.extend(A)
