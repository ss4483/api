class Celebrity < ApplicationRecord
  # 1:N - celebrity : celebrity_images
  has_many :celebrity_images

  # M:N - users : celebrity
  has_many :user_celebrity
  has_many :user, through: :user_celebrity
end
