class CarsController < ApplicationController
	def index
		@cars = Car.all
	end

	def new
 	end

 	def show
		@car = Car.find(params[:id])
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

	def update
		car = Car.find(params[:id])
		car.make = params[:make]
		car.model = params[:model]
		car.year = params[:year]		
		car.color = params[:color]
		car.save

		redirect_to "/cars/#{car.id}"
	end

	def destroy
		Car.find(params[:id]).destroy
		redirect_to cars_url
	end
end
