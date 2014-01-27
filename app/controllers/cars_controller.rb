class CarsController < ApplicationController
	def index # Lior
		@cars = Car.all
	end

	def new # Isaac
 	end

	def edit # Serge
		@car = Car.find(params[:id])
	end

	def create # Isaac
		make = params[:make]
		model = params[:model]
		year = params[:year]		
		color = params[:color]

		car = Car.create(make: make, model: model, year: year, color: color)
		redirect_to car_path(car.id)
	end

	def show # Serge
		@car = Car.find(params[:id])
	end

	def update # Serge
		@car = Car.find(params[:id])
	end

	def destroy # Lior
		Car.find(params[:id]).destroy
	end
end
