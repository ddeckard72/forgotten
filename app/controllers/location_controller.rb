class LocationController < ApplicationController
	def create
		@location = locations.create(locations_params)
		render json: { location: @location }, status: :ok
	end

	def index
		#formatting index page		
		@locations = Location.where(include: true).order("location")
	end

	def locations
		#returns all locations tagged to be included in the contents
		@locations = Location.where(include: true).order("location")
		render "index.json.jbuilder", status: :ok
	end

	def edit
		location = Location.find_by(location: params[:location])
		location.update(locations_params)
		render json: { location: @location }, status: :ok
	end

	def delete
		@location = Location.find_by(params[:name])
		@location.destroy
		render json: { location: @location }, status: :ok
	end

	def get_countries

	end

	def get_states

	end

	def get_locations

	end

	def addrecord
		newrecord = Location.new
		render :new
	end

	def locations_params
		allow = [:country, :city, :state, :zipcode, :include, :preview_image, :tagline]
		params.require(:location).permit(allow)
	end
end
