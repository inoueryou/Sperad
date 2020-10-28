class Owner::InfluencersController < ApplicationController
	before_action :authenticate_owner!

	def index
		@genres = Genre.all
		if params["genre"]
			@influencers = Influencer.where(genre_id: params["genre"])
			@genre = Genre.find(params["genre"])
		else
		@influencers = Influencer.where(is_valid: "Available")
		end
	end

	def show
		@influencer = Influencer.find(params[:id])
		@room = current_owner.rooms.find_by(influencer_id: @influencer.id)
	end

	private
	def influencer_params
		params.require(:influencer).permit(:name, :kana_name, :genre_id, :prefectures, :account, :email, :is_valid, :sns_follower, :profile_image, :enthusiasm)
	end
end
