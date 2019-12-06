#!/usr/bin/ruby

=begin
if warunek [then]      # then is not necessary, you can use ; or a new line
a = b
elsif warunek [then]   # use ELSIF, and same thing with then
a = c
else
a = d
end                     # finish with 'end'

(!) both false and nil are false values. Everything else is true
=end

# it seems you can define procedures besides object methods
# 
def f(t)
    a, b, c, d, i = 0, 1, 2, 3, 0
    a, b, c, d, i = 0, 1, 2, 3, 0
    if t == 0 then
        a = b
    elsif t == 1
        a = c
    else
        a = d
    end

# I used print before but it doesn't add the newline;
# also functions can be called with or without parentheses it seems
    puts("a: #{a}")
end

f(0)
f(1)
f(2)

def f2(t)
    a, b = 0, 1
    a, b = 0, 1
   
    a = b if t == 0         # special if construction ("if modifier")
    puts a
end

f2(1)
f2(2)
f2(1..3)
f2(0)

=begin
 now the UNLESS statement - if not
 it looks like writing the if-else from the other end
 it might help avoiding !=

 unless cond [then]             # here then is again optional
    code
 else
    code
 end                            # and finish with end

=end

def g(x)
    a = "Good"
    t = [a, "Bad"]

    unless x == -3 
        puts t[0]
    else
        puts t[1]
    end
end

g(1)
g("@")
g('$')
g(['a', 3])
g(-3)


def g2(t)
    a, b = 0, 1
    a, b = 0, 1
   
    a = b if t == 0         # special if construction ("if modifier")
    puts a
end

g2(1)
g2(2)
g2(1..3)
g2(0)


=begin 
    case statement
    compares the main expression with a list in each when
    and if nothing matches it uses the else block;
    only one when is executed

    case expr
        when expr1, expr2 [then]
            code
        when expr4 [then]
            code
        else
            code
    end
=end

$age = 10            # let's use a global variable

def c(a)
    case a
        when 0 .. 1
            puts "small"
        when 2 .. 7 then
            puts "medium"
        else
            puts "big"
    end
end

c($age)
c(2)
c(1)
