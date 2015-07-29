class ReviewsController < ApplicationController
	before_action :authorized?, except: :index

	def index
		@field = get_field
		@review = Review.find.all
	end

	def show
		@field = get_field
		@review = get_review
	end

	def new
		@field = get_field
		@review = @field.reviews.build
	end

	def edit
		@review = get_review
		redirect_to fields_path(Field.find(params[:field_id])) unless @review.user == current_user
	end

	def update
		@field = get_field
		@review = get_review
		review = Review.find(params[:id])
		if review.user == current_user
			review.update_attributes(review_params)
			@review = get_review
		else
			redirect_to edit_field_review_path 
		end
	end

	def create
		@field = get_field
		@review = @field.reviews.new(review_params)
		@review.user = current_user
		@review.save
		redirect_to fields_path
	end

	def destroy
		@field = get_field
		@review = get_review
		@review.destroy
		redirect_to fields_path
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

