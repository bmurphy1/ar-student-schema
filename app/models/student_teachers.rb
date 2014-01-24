require_relative '../../db/config'

class StudentTeacher < ActiveRecord::Base
  belongs_to :students
  belongs_to :teachers

end