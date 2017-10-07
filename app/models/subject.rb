class Subject < ApplicationRecord
	has_many :attends
	has_many :students, through: :attends
end
