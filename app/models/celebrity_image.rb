class CelebrityImage < ApplicationRecord
  # M:N - users : celebrity_images
  has_many :like_images
  has_many :users, through: :like_images

  # 1:N - celebrity - celebrity_images
  belongs_to :celebrity
end
