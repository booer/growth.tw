class Admin::PostsController < Admin::BaseController
	def index
		@posts = Post.all		
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(params_posts)
		if @post.save
			redirect_to admin_posts_path
		else
			render :new
		end
	end
	def edit
		@post = Post.find_by(id: params[:id])
	end

	private
	def params_posts
		params.require(:post).permit(:title, :description)
	end
end