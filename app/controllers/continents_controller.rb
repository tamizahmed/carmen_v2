class ContinentsController < ApplicationController
	def show
	  @continent = Continent.friendly.find(params[:id])
	end
end
