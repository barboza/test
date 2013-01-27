class Student < ActiveRecord::Base
  attr_accessible :birthday, :father_name, :mother_name, :name

  validates :name, presence: true
  
  belongs_to :classroom

end
