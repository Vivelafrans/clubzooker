class Interest < ApplicationRecord
  belongs_to :sport
  belongs_to :user

  validates :sport_id, presence: true
  validates :user_id, presence: true
end
