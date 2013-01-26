class Teacher < ActiveRecord::Base
  attr_accessible :birthday, :name

  has_one :matter

  belongs_to :classroom

end
