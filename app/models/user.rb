class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :club, class_name: "administered_club"
  has_many :memberships
  has_many :interests

  validates :name, presence: true
  validates :age, presence: true, inclusion: { in: 14..120, message: "%{value} is not a valid age" }
  validates :address, presence: true
  validates :description, length: { maximum: 500 }
  validates :club_id, uniqueness: true
end
