class Sport < ApplicationRecord
  has_many :interests
  has_many :offers

  # validation for sport types must be inserted into name
  validates :name, presence: true
  validates :teamsport, presence: true
  validates :intensity, presence: true, inclusion: { in: %w(low medium high),
    message: "%{value} is not a valid size" }
  validates :equipment, presence: true
end
