class Teacher < ActiveRecord::Base
  attr_accessible :birthday, :name, :matter, :classroom_id
  
  validates :name, :matter, :birthday, presence: true

  has_and_belongs_to_many :classrooms

end
