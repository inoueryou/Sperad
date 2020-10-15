class Message < ApplicationRecord
	belongs_to :influencer
	belongs_to :owner
  belongs_to :room
  # ブロードキャスト
  after_create_commit { MessageBroadcastJob.perform_later self }
end
