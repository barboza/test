class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :name
      t.text :discription

      t.timestamps
    end
  end
end
