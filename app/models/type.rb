class Type < ApplicationRecord
  # M:N - user : type
  has_many :user_celebrities
  has_many :users, through: :user_celebrity
end
