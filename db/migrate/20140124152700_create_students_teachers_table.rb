class CreateStudentsTeachersTable < ActiveRecord::Migration
  def change
    create_join_table :teachers, :students
  end
end
