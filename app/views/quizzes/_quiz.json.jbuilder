json.extract! quiz, :id, :name, :quesion_number, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
