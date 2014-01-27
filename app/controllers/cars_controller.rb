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
	end

	def show # Serge
		@car = Car.find(params[:id])
	end

	def update # Serge

	def update
		@car = Car.find(params[:id])
	end

	def destroy # Lior
		Car.find(params[:id]).destroy
	end
end
