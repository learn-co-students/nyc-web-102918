class CarsController < ApplicationController
	skip_before_action :verify_authenticity_token

	# get "/cars" do
	# end

	def index
		@cars = Car.all
	end

	def show
		@car = Car.find(params[:id])
	end

	def new
		# @car = Car.new
	end

	def create
		@car = Car.create(
			brand: params[:brand],
			model: params[:model],
			coolness: params[:coolness],
			color: params[:color],
			year: params[:year],
			)

		redirect_to car_path(@car)
	end


end