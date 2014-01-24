require_relative '../config'
require 'pry'

class ChangeStudentNames < ActiveRecord::Migration
  def up
    add_column :students, :name, :string

    students = Student.find(:all)

    students.each do |s|
       s.name = "#{s.first_name} #{s.last_name}"
       s.save
    end


    remove_column :students, :first_name
    remove_column :students, :last_name
      # create new name column
      # populate name column by:
        # concat first_name and last_name
      # drop first_name, last_name columns

  end
  def down
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string

    students = Student.find(:all)

    students.each do |s|
      name = s[:name].split(' ')
       s.first_name = name[0]
       s.last_name = name[1]
       s.save
    end

    remove_column :students, :name

  end
end
