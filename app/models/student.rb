require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, :format => {:with => /.+@.+\..{2,}/}
  validates :email, :uniqueness => true
  validates :age, :numericality => {:greater_than_or_equal_to => 5}
  validates :phone, :length => {:minimum => 10}

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    ((Date.today - self.birthday) / 365).to_i
  end

end
