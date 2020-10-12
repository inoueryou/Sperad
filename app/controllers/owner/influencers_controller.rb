class Owner::InfluencersController < ApplicationController

	def index
		@influencers = Influencer.where(is_valid: "Available")
	end

	def show
		@infliencer = Influencer.find(params[:id])
	end

	private
	def influencer_params
		params.require(:influencer).permit(:name, :kana_name, :genre_id, :prefectures, :account, :email, :is_valid, :sns_follower, :profile_image, :enthusiasm)
	end
end
