class WordnikController < ApplicationController

  def index
    # @word_words          = Wordnik.get_definitions(params[:word])
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_related_words  = Wordnik.get_related_words(params[:word])
    @word_examples       = Wordnik.get_examples(params[:word])
  end

  def create
    # @word_words          = Wordnik.get_definitions(params[:word])
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_related_words  = Wordnik.get_related_words(params[:word])
    @word_examples       = Wordnik.get_examples(params[:word])

    @flashcard = Flashcard.new
    @flashcard.word = params[:word]
    @flashcard.definition = @word_definitions[0]["text"]
    @flashcard.related_words.synonyms = @word_related_words[0]["words"]
    @flashcard.related_words.antonyms = @word_related_words[0]["words"]
    @flashcard.examples = @word_examples[0]["text"]

    if @flashcard.save
      redirect_to flashcard_path(@flashcard), notice: 'Flashcard was successfully created.'
    else
      render :new
    end
  end
end



