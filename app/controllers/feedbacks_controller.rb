class FeedbacksController < ApplicationController
	def new
		@feedback = Feedback.new
	end
	def create
		@feedback = Feedback.new(params_feeback)
		if @feedback.save
			redirect_to root_url
		else
			render :new
		end
	end

	private
	def params_feeback
		params.require(:feedback).permit(:ftype, :description)
	end
end
