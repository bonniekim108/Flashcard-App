class WordnikController < ApplicationController

  def index
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_pronunciations = Wordnik.get_pronunciations(params[:word])
    @word_related_words  = Wordnik.get_related_words(params[:word])
  end

  def new
    
  end

  def create
    #@word_definitions = Flashcard.new(params[:word_definitions])
    #@word_pronunciations = Flashcard.new(params[:word_pronunciations])
    #@word_related_words = Flashcard.new(params[:word_related_words])

    if @flashcard.save
      redirect_to @flashcard, notice: 'Flashcard was successfully created.'
    else
      render :new
    end
  end
end


#save @flashcard somewhere here
