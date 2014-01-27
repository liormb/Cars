class CarsController < ApplicationController
	def index # Lior
		@cars = Car.all
	end

	def new # Isaac
	end

	def edit # Serge
	end

	def create # Isaac
	end

	def show # Serge
	end

	def update # Serge
	end

	def destroy # Lior
		Car.find(params[:id]).destroy
	end
end
