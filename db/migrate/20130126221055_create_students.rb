class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name 
      t.date :birthday
      t.string :mother_name
      t.string :father_name

      t.timestamps

      t.references :classroom
    end
  end
end
