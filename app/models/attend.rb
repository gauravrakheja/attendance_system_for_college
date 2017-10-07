class Attend < ApplicationRecord
	belongs_to :student
	belongs_to :subject
	scope :today, -> { where(day: Date.today) }
end