class Attend < ApplicationRecord
	belongs_to :student
	belongs_to :subject
	validate :unique_keys
	validates :student_id, presence: true
	validates :subject_id, presence: true

	def unique_keys
		sample = Attend.where(student: student, subject: subject, day: day)
		if !sample.empty?
			errors.add :base , "Student Already Marked Absent"
		end
	end
end