#!/usr/bin/ruby


  class MyCar
    class << self
    def method_missing(name, *args, &block)
        puts 'MOJE'
    end
    end

    def method_missing(name, *args, &block)
        puts "called #{name}"
        super name, *args, &block
          end
          end




