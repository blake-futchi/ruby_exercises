puts "How old are you?"
inputAge = gets.chomp.to_i

ages = [10,20,30,40]

ages.each do |age|
    futureage = age + inputAge
    puts "In #{age} years you are going to be: #{futureage} years old."
end
