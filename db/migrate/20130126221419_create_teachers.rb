class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.date :birthday
      t.string :matter

      t.timestamps

      t.references :classrooms
    end
  end
end
