class CreateClassroomsTeachersTable < ActiveRecord::Migration
  def change
    create_table :classrooms_teachers, id: false do |t|
      t.references :classroom
      t.references :teacher
    end
  end
end
