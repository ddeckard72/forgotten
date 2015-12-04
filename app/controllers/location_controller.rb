class LocationController < ApplicationController
	def create
		@location = locations.create(locations_params)
	end

	def index
		#returns all locations tagged to be included in the contents
		@locations = Location.where(include: true).order("location")
		render "index.json.jbuilder", status: :ok
	end

	def edit

	end

	def delete

	end

	def locations_params
		allow = [:country, :city, :state, :zipcode, :include]
		params.require(:location).permit(allow)
	end
end
