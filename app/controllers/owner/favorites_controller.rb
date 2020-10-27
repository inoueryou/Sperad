class Owner::FavoritesController < ApplicationController
	before_action :set, only:[:create, :destroy]
	before_action :authenticate_owner!

	def index
		@favorites = current_owner.favorites.where(is_valid: "Available")
	end

	def create
    favorite = current_owner.favorites.new(influencer_id: @influencer.id)
    favorite.save
    redirect_to owner_influencers_path
	end

	def destroy
    favorite = current_owner.favorites.find_by(influencer_id: @influencer.id)
    favorite.destroy
    redirect_to owner_influencers_path
	end

	private
	def set
		@influencer = Influencer.find(params[:influencer_id])
	end

	def favorite_params
		params.require(:favorite).permit(:influencer_id, :owner_id)
	end

end
