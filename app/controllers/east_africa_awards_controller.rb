class EastAfricaAwardsController < ApplicationController
	def index
		@east_africa_award = EastAfricaAward.new
	end

	def create
		@east_africa_award = EastAfricaAward.new(east_africa_award_params)
		if @east_africa_award.save
			render :index
		else
			redirect_to "/"
		end
	end

	private
	def east_africa_award_params
		params.require(:east_africa_award).permit(:name, :company_name, :company_website, :address, :ticket_quantity, :email, :message, :phone_number)
	end
end
