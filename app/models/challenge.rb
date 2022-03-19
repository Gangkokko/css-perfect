# frozen_string_literal: true

class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :stage
end
