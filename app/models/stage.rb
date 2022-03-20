# frozen_string_literal: true

class Stage < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 1, maximum: 30 }
  validates :description, presence: true, length: { minimum: 1, maximum: 30 }
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  has_many :describe_quizzes, dependent: :destroy
  has_many :select_quizzes, dependent: :destroy

  def quiz; end
end
