class Student < ActiveRecord::Base
  belongs_to :house
  attr_accessible :name
  validates_presence_of :name
end