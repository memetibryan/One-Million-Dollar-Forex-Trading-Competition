class ConferencesController < ApplicationController
	def index
		@conference = Conference.new
	end

	def create
		@conference = Conference.new(conference_params)
		if @conference.save
			render :index
		else
			redirect_to "/"
		end
	end

	private
	def conference_params
		params.require(:conference).permit(:name, :email, :telephone)
	end
end
