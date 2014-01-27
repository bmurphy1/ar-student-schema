require_relative '../config'

class AddTimestampsToStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.timestamps
    end
  end
end