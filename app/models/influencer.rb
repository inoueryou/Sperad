class Influencer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #belongs_to :genre
  attachment :profile_image

  validates :name, presence: true
  validates :kana_name, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
  validates :prefectures, presence: true
  validates :sns_follower, presence: true,format:/\A[0-9]+\z/
  validates :account, presence: true
  validates :enthusiasm, presence: true

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



