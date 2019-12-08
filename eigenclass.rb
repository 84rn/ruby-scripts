#!/usr/bin/ruby

class KlasaA
    @@miro = "KA"
    def funkcja
        puts "Hello KlasaA"
    end

    def fun1
        puts "#{@@miro}"
    end
end


class KlasaB < KlasaA
end

class KlasaC < KlasaA
    @@miro = "KC"
    def funkcja
        puts "Hello KlasaC"
    end
end

a = KlasaA.new
b = KlasaB.new
c = KlasaC.new


a.funkcja
a.fun1
b.funkcja
c.funkcja
c.fun1

class Person
    def name
        "Matz"
    end

    self.name
 end

 d = Person.name
