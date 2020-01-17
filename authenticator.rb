# users array where username and password are stored
users = [
          { username: "blake", password: "password1" },
          { username: "joe", password: "password2" },
          { username: "kelli", password: "password3" },
          { username: "clara", password: "password4" },
          { username: "flo", password: "password5" }
        ]
 
# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return "You have successfully logged in"
    end
  end
  "Credentials were not correct"
end
 
# program execution flow
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and authenticate it with the password"
puts "If the password is correct,you will get back the user object"
 
attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4