class FlashcardsController < ApplicationController
	before_action :authorize

	def index
		@flashcards = current_user.flashcards
	end	

	def show
		@flashcard = Flashcard.find(params[:id])
	end

	def new
		@flashcard = Flashcard.new
	end

	
	# def create
	# 	@flashcard = Flashcard.new(flashcard_params)
	# 	@flashcard.user = current_user

	# 	if @flashcard.save
	# 		redirect_to flashcards_path
	# 	else
	# 		render :new
	# 	end



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

	def destroy
		@flashcard = Flashcard.find(params[:id])

		@flashcard.destroy

		redirect_to flashcards_path

	end

	private

	def flashcard_params
		params.require(:flashcard).permit(:word, :pronunciation, :definition, :related_words, :notes)
	end
end

	




















