class ReviewsController < ApplicationController
	def index
	end


	private 
	def review_params
		params.require(:review).permit(:comments, :rating)
	end

	def get_field
		Field.find(params[:field_id])
	end

	def get_review
		get_field.reviews.find(params[:id])
	end
end
