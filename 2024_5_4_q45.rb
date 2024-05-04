class Alphabet
    include Enumerable

    def initialize
        @letters = ("A".."Z").to_a
    end

    def each
        @letters.rach do |e|
            yield each
        end
    end
end

set = Alphabet.new

p set.take(5)
p set.select {|e| e > "W" }
