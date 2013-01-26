class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
