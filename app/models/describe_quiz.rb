class DescribeQuiz < ApplicationRecord
  belongs_to :stage
  validates :content ,presence: true, if: :image_nil?
  validates :image ,presence: true, if: :content_nil?
  mount_uploader :image, ImageUploader



  def image_nil?
    image.blank?
  end
  def content_nil?
    content.blank?
  end
end


