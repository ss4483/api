class User < ApplicationRecord
    # M:N - user : celebrity_images
    has_many :like_images
    has_many :celebrity_images, through: :like_images
    # M:N - user : user_celebrity
    has_many :user_celebrities
    has_many :celebrities, through: :user_celebrity
    # M:N - user : type
    has_many :user_celebrities
    has_many :types, through: :user_celebrity
end
