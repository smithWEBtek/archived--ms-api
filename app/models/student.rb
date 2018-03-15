class Student < ApplicationRecord
  belongs_to :teacher
  has_many :lessons 
	has_many :resources, through: :lessons
	has_many :logs
end
