class WordnikController < ApplicationController

  def index
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_pronunciations = Wordnik.get_pronunciations(params[:word])
    @word_related_words  = Wordnik.get_related_words(params[:word])
  end

  def create
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_pronunciations = Wordnik.get_pronunciations(params[:word])
    @word_related_words  = Wordnik.get_related_words(params[:word])

    @flashcard = Flashcard.new
    @flashcard.word = params[:word]
    @flashcard.definition = @word_definitions[0]["text"]
    @flashcard.pronunciation = @word_pronunciations[0]["raw"]
    @flashcard.related_words = @word_related_words[0]["words"]

    if @flashcard.save
      redirect_to flashcard_path(@flashcard), notice: 'Flashcard was successfully created.'
    else
      render :new
    end
  end
end



