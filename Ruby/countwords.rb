class String
    def wordcount
        words = Hash.new(0)
        self.split.each { |word| words[word] += 1 }
        words
    end
end

puts "foo bar baz foo quux".wordcount
