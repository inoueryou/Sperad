class RoomsController < ApplicationController

	def index
		@rooms = Room.all
	end

	def create
		room = Room.new(owner_id: current_owner.id, influencer_id: params[:influencer_id])
		if room.save
			redirect_to room_url(room.id)
		else
			redirect_to owner_influencer_path(influencer_id)
		end
	end

	def show
		@room = Room.find(params[:id])
		@messages = @room.messages
	end

	def destroy
		room = Room.find(params[:id])
		room.destroy
		redirect_to rooms_path
	end
end
