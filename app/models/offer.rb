class Offer < ApplicationRecord
  belongs_to :sport
  belongs_to :club

  validates :sport_id, presence: true
  validates :club_id, presence: true
end
