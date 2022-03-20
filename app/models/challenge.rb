# frozen_string_literal: true

class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :stage

  validates :content, presence: true, length: { minimum: 2, maximum: 100 }, if: :image_nil?
  validates :image, presence: true, if: :content_nil?
  validates :first_choice, presence: true, length: { minimum: 2, maximum: 100 }
  validates :second_choice, presence: true, length: { minimum: 2, maximum: 100 }
  validates :third_choice, presence: true, length: { minimum: 2, maximum: 100 }
  validates :forth_choice, presence: true, length: { minimum: 2, maximum: 100 }
  validates :answer, presence: true, numericality: { in: 1..4 }
end
