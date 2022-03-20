json.extract! select_quiz, :id, :stage_id, :content, :image, :first_choice, :second_choice, :third_choice, :forth_choice, :answer_number, :created_at, :updated_at
json.url select_quiz_url(select_quiz, format: :json)
