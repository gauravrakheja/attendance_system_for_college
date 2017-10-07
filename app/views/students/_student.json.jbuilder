json.extract! student, :id, :roll_number, :name, :phone, :email, :course, :year, :created_at, :updated_at
json.url student_url(student, format: :json)
