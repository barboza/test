class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
