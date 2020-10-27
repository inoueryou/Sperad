class Influencer::OwnersController < ApplicationController
	before_action :authenticate_influencer!
	def index
		@owners = Owner.where(is_valid: "Available")
	end

	def show
		@owner = Owner.find(params[:id])
	end

	private
	def owner_params
		params.require(:owner).permit(:name, :kana_name, :prefectures, :account, :residence, :industry, :profile_image_id, :business_content, :is_valid)
	end
end
