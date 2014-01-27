class CarsController < ApplicationController
	def index
	end

	def new
	end

	def edit
		@car = Car.find(params[:id])
	end

	def create
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
