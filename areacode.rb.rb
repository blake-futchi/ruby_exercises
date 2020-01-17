# Main Hash
dial_book = {
  "newyork" => "212",
  "dc" => "202",
  "losangeles" => "310",
  "austin" => "512",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "chicago" => "312",
  "orlando" => "407",
  "stockholm" => "046",
  "seattle" => "206",

}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code from the hash
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the hash"
  end
end