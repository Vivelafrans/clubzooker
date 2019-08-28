class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  has_one :club, foreign_key: 'admin_id'

  has_many :interests, dependent: :destroy
  has_many :sports, through: :interests

  has_many :memberships, dependent: :destroy

  validates :name, presence: true
  validates :age, presence: true, inclusion: { in: 14..120, message: "%{value} is not a valid age" }
  validates :address, presence: true
  validates :description, length: { maximum: 500 }
end
