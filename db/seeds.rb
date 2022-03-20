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

Stage.find_or_create_by(name: "testStage") do |stage|
  stage.user = User.first
  stage.name = "testStage 1~30"
  stage.description = "これはテストステージです。説明が入ります。1~30"
  stage.image = File.open("./sample.jpg")
end

DescribeQuiz.find_or_create_by(id: 10) do |quiz|
  quiz.stage = Stage.first
  quiz.content = "問題文です。割と長い文章も大丈夫だとありがたいです。何文字にしよう。１００とか？100にしますねバリデーション"
  quiz.image = File.open("./sample.jpg")
end
