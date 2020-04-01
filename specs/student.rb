require("minitest/autorun")
require('minitest/reporters')
require_relative('../models/student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class StudentTest < Minitest::Test

  def setup()
    @student1 = Student.new({'first_name' => "Harry", 'last_name' => "Potter", 'age' => 11, 'house' => "Gryffindor"})
  end

  def test_student_first_name()
    assert_equal("Harry", @student1.first_name)
  end

  def test_student_last_name()
    assert_equal("Potter", @student1.last_name)
  end

  def test_student_age()
    assert_equal(11, @student1.age)
  end

  def test_student_house()
    assert_equal("Gryffindor", @student1.house)
  end

end
