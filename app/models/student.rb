class Student < ActiveRecord::Base
  attr_accessible :birthday, :father_name, :mother_name, :name, :classroom_id

  validates :name, :birthday, :father_name, :mother_name, presence: true
  
  belongs_to :classroom

end
