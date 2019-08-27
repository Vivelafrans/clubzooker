class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :club

  validates :user_id, presence: true
  validates :club_id, presence: true
end
