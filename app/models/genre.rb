class Genre < ApplicationRecord
	has_many :influencers, dependent: :destroy
end
