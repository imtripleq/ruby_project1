require 'colorize'
require 'json'
require_relative '../config/environment.rb'

see_quizzes = GetQuizzes.get_programs
puts JSON.pretty_generate(see_quizzes)

puts "Welcome to Dennis Quizzes\n".red

# Game Start
puts 'Do you want to start your Quiz now? Y/N'
playing = gets.chomp

while playing.downcase == 'y'
  puts 'Game Started'.yellow

  # Input your name
  puts 'Please insert your user name: '
  username = gets.chomp

  # Accessing to the database
  new_user = User.find_by(name: username)
  if new_user == nil
    new_user = User.new(name: username)
    User.create(new_user)
    # return user
  end

  # Check the current username match

  # Show option
  GetQuizzes.get_programs

  # my_object = {:array => [1,2,3{ :sample => "hash"}], :foo => "bar"}
  # puts JSON.pretty_generate(myobject)

  # Show categories
  # Loop question 1 to 10
  # Insert your answer
  # Show next question and choice

  # Check Answer and Show score

  # Save score
  new_user.score = new_score
  new_user.save

  # Continue?
  puts "Do you wish to continue #{username}? Y/N"
  playing = gets.chomp
end
