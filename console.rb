require('pry-byebug')
require_relative('./models/student')

student1 = Student.new({'first_name' => "Harry", 'last_name' => "Potter", 'age' => 11, 'house' => "Gryffindor"})
student1.save
student2 = Student.new({'first_name' => "Ron", 'last_name' => "Weasley", 'age' => 11, 'house' => "Gryffindor"})
student2.save
student3 = Student.new({'first_name' => "Luna", 'last_name' => "Lovegood", 'age' => 10, 'house' => "Ravenclaw"})
student3.save
student4 = Student.new({'first_name' => "Cedric", 'last_name' => "Diggary", 'age' => 13, 'house' => "Hufflepuff"})
student4.save



binding.pry
nil
