# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


[*1..4].each do |n|
  Category.create!(content: "test#{n}")
end

User.find_or_create_by(email: 'exapmple@example.com') do |user|
  user.email = 'examplen@example.com'
  user.name = 'Example Admin'
  user.password =              'password'
  user.password_confirmation = 'password'
end
