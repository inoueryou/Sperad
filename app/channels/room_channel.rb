class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
		room = Room.find(params[:room])
		room.messages.create(influencer_id: room.influencer_id, owner_id: room.owner_id, content: data["message"] )
  end
end
