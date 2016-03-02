class PagesController < ApplicationController
	def index
		
	end
	def about
		
	end
	def new
		@page = Page.new
	end
	def create
		@page = Page.new
		if @page.save
			redirect_to pages_path
		else
			render :new
		end
	end
	private
	def params_pages
		params.require(:page).permit(:title)
	end
end