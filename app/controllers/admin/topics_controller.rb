class Admin::TopicsController < Admin::BaseController
	def index
		@topics = Topic.all
	end
	def new
		@topic = Topic.new
	end
	def create
		@topic = Topic.new(params_topics)
		if @topic.save
			redirect_to admin_topics_path
		else
			render :new
		end
	end

	private
	def params_topics
		params.require(:topic).permit(:title)
	end
end