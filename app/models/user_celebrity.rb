class UserCelebrity < ApplicationRecord
  belongs_to :celebrity
  belongs_to :user
  belongs_to :type
end
