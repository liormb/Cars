class CarsController < ApplicationController
	def index
	end

	def new

	end

	def edit
		@car = Car.find(params[:id])
	end

	def create
		make = params[:make]
		model = params[:model]
		year = params[:year]		
		color = params[:color]

		car = Car.create(make: make, model: model, year: year, color: color)
		redirect_to car_path(car.id)
	end

	def show
		@car = Car.find(params[:id])

	end

	def update
		@car = Car.find(params[:id])
	end

	def destroy
	end
end
