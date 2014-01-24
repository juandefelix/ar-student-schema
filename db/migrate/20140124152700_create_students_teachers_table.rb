class CreateStudentsTeachersTable < ActiveRecord::Migration
  def change
    create_table :teachers_students do |t|
      t.belongs_to :teacher
      t.belongs_to :students
    end
  end
end
