# frozen_string_literal: true

json.array! @categories do |category|
  json.id category.id
  json.content category.content
end
