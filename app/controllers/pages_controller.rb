class PagesController < ApplicationController
  def index
  end

  def play
    @words = Word.all
    lenght = @words.length
    @word = @words[rand(lenght)]
  end
end
