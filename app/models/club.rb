class Club < ApplicationRecord
  belongs_to :user, class_name: "admin_id"
  has_many :memberships
  has_many :offers

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :user_id, uniqueness: true
end
