class CreateTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t| # CREATING a table called students
      # t.integer :id  is NOT neccessary. AR does it for you
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
