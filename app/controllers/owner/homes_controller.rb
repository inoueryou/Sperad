class Owner::HomesController < ApplicationController
	before_action :authenticate_owner!
	def top
	end
end
