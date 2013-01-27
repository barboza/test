class Teacher < ActiveRecord::Base
  attr_accessible :birthday, :name, :matter

  has_and_belongs_to_many :classrooms

end
