# frozen_string_literal: true

class Category < ApplicationRecord
  validates :content, presence: true
end
