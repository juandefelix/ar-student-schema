require_relative '../config'
class AddNameField < ActiveRecord::Migration
  def up
    add_column :students, :name, :string
    add_column :students, :address, :string

    Student.all.each do |s|
      s.name = "#{s.first_name} #{s.last_name}"
      s.save!
    end
    # rename_column :students, :first_name, :name
    remove_column :students, :last_name
    remove_column :students, :first_name
  end

  def down
    add_column :students, :last_name, :string
    add_column :students, :first_name, :string
    Student.all.each do |s|
      name = s.name.split(' ')
      s.last_name = name[1]
      s.first_name = name[0]
      s.save!
    end
    remove_column :students, :name
    remove_column :students, :address
  end
end
