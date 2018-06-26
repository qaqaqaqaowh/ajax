class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def search
		query = params[:query]
		@questions = Question.where("title iLike '%#{query}%'").or(Question.where("description iLike '%#{query}%'"))
		render json: @questions
	end
end
