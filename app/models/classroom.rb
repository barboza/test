class Classroom < ActiveRecord::Base
  attr_accessible :code, :description

  has_many :students, :teachers

end
