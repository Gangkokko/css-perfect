# frozen_string_literal: true
json.set! "status", 'SUCCESS'
json.data do
  json.array! @users do |user|
    json.id user.id
    json.name user.name
    json.email user.email
  end
end
