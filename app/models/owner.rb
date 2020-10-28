class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  attachment :profile_image
  has_many :messages
  has_many :rooms

  enum is_valid: {Available: true, Invalid: false}
    def active_for_authentication?
      super && (self.is_valid == "Available")
    end
end
