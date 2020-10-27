class Influencer::HomesController < ApplicationController
	before_action :authenticate_influencer!
	def top
	end
end
