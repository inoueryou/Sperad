class Room < ApplicationRecord
	has_many :messages, dependent: :destroy
	belongs_to :influencer
	belongs_to :owner
end
