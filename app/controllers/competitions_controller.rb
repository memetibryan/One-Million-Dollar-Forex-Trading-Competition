class CompetitionsController < ApplicationController
	def index
		@competition = Competition.new
	end

	def create
		@competition = Competition.new(competition_params)
		if @competition.save
			redirect_to "https://www.axitrader.com/ae-en/promotions/kenya-2017"
		else
			render :index
		end
	end

	private
	def competition_params
		params.require(:competition).permit(:name, :phone, :email)
	end
end
