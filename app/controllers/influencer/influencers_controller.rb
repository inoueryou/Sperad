class Influencer::InfluencersController < ApplicationController
	before_action :authenticate_influencer!
	before_action :set, only:[:show, :edit, :update, :quit, :out]

	def show

	end

	def edit

	end

	def update
		if @influencer.update(influencer_params)
			redirect_to influencer_path(current_influencer), notice: "Successfully."
		else
			render "edit"
		end
	end

	def quit
	end

	def out
		if @influencer.update(is_valid: "Invalid")
			sign_out current_influencer
		end
		redirect_to new_influencer_session_path
	end

	private
	def set
		@influencer = Influencer.find(params[:id])
		unless @influencer == current_influencer
		  redirect_to new_influencer_session_path
		end
	end

	def influencer_params
		params.require(:influencer).permit(:name, :kana_name, :genre_id, :prefectures, :account, :email, :is_valid, :sns_follower, :profile_image, :enthusiasm)
	end

end
