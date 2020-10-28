class Owner::OwnersController < ApplicationController
	before_action :authenticate_owner!
	before_action :set, only:[:show, :edit, :update, :quit, :out]

	def show

	end

	def edit

	end

	def update
		if @owner.update(owner_params)
			redirect_to owner_path(current_owner), notice: "Successfully."
		else
			reder "edit"
		end
	end

	def quit

	end

	def out
		if @owner.update(is_valid: "Invalid")
			sign_out current_owner
		end
		redirect_to root_path
	end

	private
	def set
		@owner = Owner.find(params[:id])
		unless @owner == current_owner
			redirect_to owner_top_path
		end
	end

	def owner_params
		params.require(:owner).permit(:prefectures, :name, :kana_name, :account, :residence, :industry, :profile_image, :business_content, :is_valid, :email)
	end
end