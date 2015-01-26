class WordnikController < ApplicationController

  def index
    @word_definitions    = Wordnik.get_definitions(params[:word])
    #@word_pronunciations = Wordnik.get_pronunciations(params[:word])
    #@word_related_words  = Wordnik.get_related_words(params[:word])
  end

  def create
    @word_definitions    = Wordnik.get_definitions(params[:word])
    #@word_pronunciations = Wordnik.get_pronunciations(params[:word])
    #@word_related_words  = Wordnik.get_related_words(params[:word])

    if @flashcard.save
      redirect_to @flashcard, notice: 'Flashcard was successfully created.'
    else
      render :new
    end
  end
end



