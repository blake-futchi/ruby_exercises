def numberreveal()
    puts "Type your number"
    num = gets.to_i

    if num >= 101
        puts "This number is above 100"

    elsif num >= 51
        puts "This number is below 100"

    elsif num <= 50
        puts "This number is below 50"

    end

end

numberreveal