class AwardsController < ApplicationController
	def index
		@award = Award.new
	end

	def create
		@award = Award.new(award_params)
		if @award.save
			"Success"
		else
			render :index
		end
	end

	private
	def award_params
		params.require(:award).permit(:name, :company_name, :company_website, :address, :ticket_quantity, :email, :message, :phone_number)
	end
end
