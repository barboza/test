class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :code
      t.text :description
      t.references :teachers

      t.timestamps
    end
  end
end
