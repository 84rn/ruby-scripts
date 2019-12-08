#!/usr/bin/ruby

class A
    # handler for object instance
    def method_missing(name)
        puts    'missing_method_A'
    end

    # enter eigenclass 
    class << self
        # handler for eigenclass symbols
        def method_missing(name)
            puts 'missing_method_eigen_A'
        end

        def remove_me
        end
    end


        def checkyoself 
            puts 'checkyoself'
            remove_me
        end
end


a = A.new
a.checkyoself          # should be 'missing_method_A'

# add check function to the object's eigenclass
def a.checkyoself
    puts 'ob -> checkyoself'
end

# compare two objects
b = A.new
b.checkyoself          # 'missing_method_A'
a.checkyoself          # 'ob->checkyoself'

class B < A
FOO = 1
end

p B.ancestors
p B.singleton_class.ancestors
# call from A's eigenclass 
# A.checkyoself   # 'checkyoself'


