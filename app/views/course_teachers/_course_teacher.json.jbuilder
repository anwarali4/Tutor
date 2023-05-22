json.extract! course_teacher, :id, :course_id, :teacher_id, :created_at, :updated_at
json.url course_teacher_url(course_teacher, format: :json)
