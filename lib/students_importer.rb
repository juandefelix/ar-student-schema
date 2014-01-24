require_relative '../app/models/student'
require 'debugger'

module StudentsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
    field_names = nil
    Student.transaction do
      # debugger
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          # debugger
          student = Student.create!(attribute_hash)
        end
      end
    end
  end
end
