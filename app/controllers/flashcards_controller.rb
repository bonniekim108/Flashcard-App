class FlashcardsController < ApplicationController

	def index
		@flashcards = Flashcard.all
	end	

	# def show
	# 	@flashcard = Flashcard.find(params[:id])
	# end

	def new 
	end

	def create
		@flashcard = current_user.flashcards.new(flashcard_params)
		if @flashcard.save 

			#if the flashcard is saved successfully, add to list of all user's flashcards and redirect to user profile
			redirect_to user_path(current_user.id)
		else
			render :new
		end
	end

	def edit
		@flashcard = Flashcard.find(params[:id])
	end

	def update
		@flashcard = Flashcard.find(params[:id])

		if @flashcard.update(flashcard_params)
			redirect_to flashcards_path
		else
			render :edit
		end
	end

	private

	def flashcard_params
		params.require(:flashcard).permit(:word, :examples, :definition)
	end
end

	




















