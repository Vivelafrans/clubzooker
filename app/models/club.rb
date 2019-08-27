class Club < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user, class_name: "admin_id"
  has_many :memberships
  has_many :offers

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :user_id, uniqueness: true
end
