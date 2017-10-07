class Subject < ApplicationRecord
	has_many :attends
	has_and_belongs_to_many :students
end
