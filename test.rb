

require_relative './app/models/teacher.rb'

# p Teacher.all

t = Teacher.first
p t.id == 1
p t.first_name == 'teacher1'
puts

p Teacher.find(:first, :conditions => [ "first_name = ?", "teacher3"])
