class SeminarsController < ApplicationController
	def index
		@seminar = Seminar.new
	end

	def create
		@seminar = Seminar.new(seminar_params)
		if @seminar.save
			render :index
		else
			redirect_to "/"
		end
	end

	private
	def seminar_params
		params.require(:seminar).permit(:name, :email, :telephone)
	end
end
