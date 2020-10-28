class Influencer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #belongs_to :genre
  has_many :favorites, dependent: :destroy
  attachment :profile_image
  has_many :messages
  has_many :rooms

  def favorited_by?(owner)
    Favorite.where(owner_id: owner.id, influencer_id: id).exists?
  end

  def genre_name
  	genre = Genre.find_by(id: genre_id)
  	return if genre.nil?

  	genre.name
  end

  #退会機能（有効会員はtrue、退会済み会員はfalse、有効会員はログイン可能)
  enum is_valid: {Available: true, Invalid: false}
    def active_for_authentication?
      super && (self.is_valid == "Available")
    end

end



