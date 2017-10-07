class Student < ApplicationRecord
	attr_accessor :subjects_attributes
	has_many :attends
	has_many :subjects, through: :attends
	accepts_nested_attributes_for :subjects, reject_if: :all_blank?
end
