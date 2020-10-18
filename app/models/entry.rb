class Entry < ApplicationRecord
	belongs_to :influencer
	belongs_to :owner
  belongs_to :room
end
