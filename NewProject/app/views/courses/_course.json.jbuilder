json.extract! course, :id, :section, :course_name, :ClassAssignment_id, :created_at, :updated_at
json.url course_url(course, format: :json)
