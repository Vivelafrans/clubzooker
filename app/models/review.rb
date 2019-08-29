class Review < ApplicationRecord
  belongs_to :user
  belongs_to :club

  validates :rating, :comment, presence: true
end
