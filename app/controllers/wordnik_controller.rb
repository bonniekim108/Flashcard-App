class WordnikController < ApplicationController

  def index
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_pronunciations = Wordnik.get_pronunciations(params[:word])
  end

end
