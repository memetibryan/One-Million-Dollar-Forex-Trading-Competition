class BlogsController < ApplicationController
	def index
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			render :index
		else
			redirect_to "/"
		end
	end

	private
	def blog_params
		params.require(:blog).permit(:first_name, :last_name, :phone, :email, :country)
	end
end
