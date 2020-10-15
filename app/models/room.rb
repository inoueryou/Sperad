class Room < ApplicationRecord
	has_many :entries, dependent: :destroy
	has_many :messages, dependent: :destroy
	has_many :influencers, through: :entries
	has_many :owners, through: :entries
end
