class CarsController < ApplicationController
	def index
	end

	def new

	end

	def edit
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
	end

	def update
	end

	def destroy
	end
end
