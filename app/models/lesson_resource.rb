class LessonResource < ApplicationRecord
  belongs_to :lesson, dependent: :destroy
  belongs_to :resource, dependent: :destroy
	has_many :logs
end
