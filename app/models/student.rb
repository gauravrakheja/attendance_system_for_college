class Student < ApplicationRecord
	attr_accessor :subjects_attributes
	has_many :attends
	has_and_belongs_to_many :subjects
	validates :roll_number, presence: true, uniqueness: { case_sensitive: false }
end
