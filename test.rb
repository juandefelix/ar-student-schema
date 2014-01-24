

require_relative './app/models/teacher.rb'
require_relative './app/models/student.rb'

# p Teacher.all

t = Teacher.first
p t.id == 1
p t.first_name == 'teacher1'
puts

p Teacher.find(:first, :conditions => [ "first_name = ?", "teacher3"])



attributes = Student.attribute_names
puts "The attributes for a student are: #{attributes}"
p Student.first.teacher_id == 1

# p Teacher.find(:first, :conditions => [ "first_name = ?", "teacher3"])
