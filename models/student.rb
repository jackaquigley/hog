require_relative('../db/sql_runner')

class Student

  attr_accessor :first_name, :last_name, :age, :house
  attr_reader :id

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age']
    @id = options['id']
    @house = options['house']
  end

  def save()
    sql = "INSERT INTO students
          (
            first_name,
            last_name,
            age,
            house
          )
          VALUES
          (
            $1, $2, $3, $4
          )RETURNING id"
     values = [@first_name, @last_name, @age, @house]
     @ID = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    return students.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values).first()
    return nil if student == nil
    return Student.new(student)
  end

end
