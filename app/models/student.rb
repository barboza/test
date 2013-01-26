class Student < ActiveRecord::Base
  attr_accessible :birthday, :father_name, :mother_name, :name

  belongs_to :classroom

end
