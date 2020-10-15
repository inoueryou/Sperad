class Favorite < ApplicationRecord
	belongs_to :influencer
	belongs_to :owner
end
