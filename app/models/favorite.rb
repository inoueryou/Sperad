class Favorite < ApplicationRecord
	belongs_to :influencer
	belongs_to :owner

  enum is_valid: {Available: true, Invalid: false}
    def active_for_authentication?
      super && (self.is_valid == "Available")
    end
end
