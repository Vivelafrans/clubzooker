class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  belongs_to :club, class_name: "administered_club", optional: true
  has_many :memberships
  has_many :interests

  validates :name, presence: true
  validates :age, presence: true, inclusion: { in: 14..120, message: "%{value} is not a valid age" }
  validates :address, presence: true
  validates :description, length: { maximum: 500 }
  validates :club_id, uniqueness: true
end
