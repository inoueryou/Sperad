class Influencer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #belongs_to :genre
  attachment :profile_image

  def genre_name
  	genre = Genre.find_by(id: genre_id)
  	return if genre.nil?

  	genre.name
  end

end
