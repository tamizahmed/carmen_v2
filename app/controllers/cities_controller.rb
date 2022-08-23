class CitiesController < ApplicationController

	def index
		@cities = City.where(nil)
		filtering_params(params).each do |key, value|
	    @cities = @cities.public_send("filter_by_#{key}", value) if value.present?
	  end
	end

	def show
		@city = City.friendly.find(params[:id])
	end


	private

	# A list of the param names that can be used for filtering the Product list
	def filtering_params(params)
	  params.slice(:starts_with)
	end

end
