# frozen_string_literal: true

json.status 'SUCCESS'
json.data do
  json.id @quiz.id
  json.content @quiz.id
  json.image @quiz.image
  json.stage @quiz.stage
end
