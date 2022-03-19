count = @categories.count
json.array! @categories do |category|
  json.id category.id
  json.content category.content
end
