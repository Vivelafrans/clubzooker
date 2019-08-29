class Club < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :admin, class_name: 'User', optional: true

  has_many :memberships, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :sports, through: :offers
  has_many :members, through: :memberships, source: :user

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :admin_id, uniqueness: true
end
