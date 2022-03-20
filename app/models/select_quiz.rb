class SelectQuiz < ApplicationRecord
  belongs_to :stage
  mount_uploader :image, ImageUploader
end
