json.extract! question, :id, :teacher, :qstn, :answer, :created_at, :updated_at
json.url question_url(question, format: :json)
