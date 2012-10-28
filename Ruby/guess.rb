def high_or_low(number, guess)
    guess < number ? 'low' : 'high'
end


def main
    puts 'Guess a number between 0 and 100.'
    number = rand(100)

    while (guess = gets().to_i) != number do
        direction = high_or_low(number, guess)
        puts "#{guess} is too #{direction}."
    end

    puts "Correct! #{guess} was the number!"
end

main
