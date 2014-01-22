require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  def name
    "#{self.first_name}, #{self.last_name}"
  end

  def age
    Date.today.year - self.birthday.year
  end

end
