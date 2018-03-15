class Log < ApplicationRecord
	belongs_to :student
	belongs_to :teacher
	belongs_to :lesson
	belongs_to :resource
end
