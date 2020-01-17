puts "How old are you?"
inputAge = gets.chomp.to_i

ages = [10,20,30,40]

ages.each do |age|
    tempage = age + inputAge
    puts "In #{age} years you are going to be: #{tempage} years old."
end