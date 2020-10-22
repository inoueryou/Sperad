class MessagesController < ApplicationController
	def create
		room = Room.find(params[:message][:room_id])
		# @message = Message.new(influencer_id: @room.influencer_id, owner_id: @room.owner_id, content: params[:content] )
		room.messages.create(influencer_id: room.influencer_id, owner_id: room.owner_id, content: params[:message][:content] )
		redirect_to room_url(room)
	end
end
