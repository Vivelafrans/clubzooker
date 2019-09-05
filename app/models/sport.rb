class Sport < ApplicationRecord
  has_many :interests
  has_many :offers
  has_many :scores

  mount_uploader :photo, PhotoUploader;

  # validation for sport types must be inserted into name
  validates :name, presence: true
  validates :intensity, presence: true, inclusion: { in: %w(low medium high),
    message: "%{value} is not a valid size" }
  validates :equipment, presence: true
end
