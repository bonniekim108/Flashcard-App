class WordnikController < ApplicationController
# before_filter :authorize

  def index
    # @word_word          = Wordnik.get_definitions(params[:word])
    @word_definitions    = Wordnik.get_definitions(params[:word])
    @word_examples       = Wordnik.get_examples(params[:word])
  end
end



