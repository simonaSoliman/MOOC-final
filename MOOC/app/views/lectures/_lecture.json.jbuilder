json.extract! lecture, :id, :attachment, :content, :user_id, :course_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
