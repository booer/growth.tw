class Admin::PagesController < Admin::BaseController
	# before_action 驗證是否完成基本設定
	
	respond_to :js, :html
	def index
		
	end
	def new
		@page = Page.new
		# @page.descriptions.build
	end
	def create
		if params[:page][:descriptions_attributes].count > 2
			:back
		end
		@page = Page.new(params_pages)
		if @page.save
			redirect_to admin_pages_path
		else
			render :new
		end
	end
	def page_mode
		
	end
	private
	def params_pages
		params.require(:page).permit(:title, :cta_sup, descriptions_attributes: [:id, :description], clients_attributes: [:id, :uname])
	end
end