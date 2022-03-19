# frozen_string_literal: true
json.status "SUCCESS"
json.data do
  json.id @stage.id
  json.name @stage.name
  json.description @stage.description
  json.image @stage.image
  json.is_public @stage.is_public
  json.user @stage.user
end
