# class Human
#     NAME = "Unknown"
    
#     def self.name
#     const_get(:NAME)
#     end
# end
    
#     class Fukuzawa < Human
#     NAME = "Yukichi"
#     end
    
#     puts Fukuzawa.name

    class Human
        NAME = "Unknown"

        p self

        def self.name
            p self
            p self.class
            const_get(:NAME)
        end
    end
    
    class Fukuzawa < Human
        NAME = "Yukichi"
    end
    
    puts Human.name
