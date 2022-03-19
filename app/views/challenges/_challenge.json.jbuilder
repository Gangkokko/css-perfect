json.extract! challenge, :id, :user_id, :stage_id, :hp, :score, :created_at, :updated_at
json.url challenge_url(challenge, format: :json)
