require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true
  has_many :students, through => :student_teachers

end
