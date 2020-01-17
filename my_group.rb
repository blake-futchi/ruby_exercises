# array where people + age + weight + gender is stored
users = Array.new
          
Thomas = { name: "Thomas", age: 44, weight: 85.5, gender: "man" }
Faraz = { name: "Faraz", age: 38, weight: 76.5, gender: "man" }
Noel = { name: "Noel", age: 37, weight: 85.5, gender: "man" }
Blake = { name: "Blake", age: 27, weight: 81.6, gender: "man" }

users.push Thomas, Faraz, Noel, Blake

# program execution flow
puts "Welcome to the user database"
25.times { print "-" }
puts
puts "This program will share user data per request"

# program execution loop
loop do
  puts "Do you want to lookup all users in the database?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  users.each do |user|
    puts "#{user[:name]} is a #{user[:age]} years old #{user[:gender]} weighing #{user[:weight]} kg" 

end
break
end