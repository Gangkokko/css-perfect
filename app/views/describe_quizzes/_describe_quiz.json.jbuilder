# frozen_string_literal: true

json.extract! describe_quiz, :id, :stage_id, :image, :content, :created_at, :updated_at
json.url describe_quiz_url(describe_quiz, format: :json)
