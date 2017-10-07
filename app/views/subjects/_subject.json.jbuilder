json.extract! subject, :id, :name, :subject_code, :course, :created_at, :updated_at
json.url subject_url(subject, format: :json)
