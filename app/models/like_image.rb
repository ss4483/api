class LikeImage < ApplicationRecord
  belongs_to :celebrity_image
  belongs_to :user
end
