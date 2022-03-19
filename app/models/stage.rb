class Stage < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 1, maximum: 30 }
  validates :description, presence: true, length: { minimum: 1, maximum: 30 }
  mount_uploader :image, ImageUploader
end
