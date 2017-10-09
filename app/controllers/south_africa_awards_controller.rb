class SouthAfricaAwardsController < ApplicationController
	def index
		@south_africa_award = SouthAfricaAward.new
	end

	def create
		@south_africa_award = SouthAfricaAward.new(south_africa_award_params)
		if @south_africa_award.save
			render :index
		else
			redirect_to "/"
		end
	end

	private
	def south_africa_award_params
		params.require(:south_africa_award).permit(:name, :company_name, :company_website, :address, :ticket_quantity, :email, :message, :phone_number)
	end
end
