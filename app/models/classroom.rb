class Classroom < ActiveRecord::Base
  attr_accessible :code, :description

  validates :code, presence: true

  has_many :students
  has_and_belongs_to_many :teachers

end
