json.extract! question, :id, :title, :description, :type_field, :formulaire_id, :created_at, :updated_at
json.url question_url(question, format: :json)
