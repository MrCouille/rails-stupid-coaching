class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @simpleQuestion = params[:interrogation]

    if @simpleQuestion == "I am going to work"
      @raiponce = "Good, get going."
    elsif @simpleQuestion.include?("?")
      @raiponce = "Silly question, get back to work."
    else
      @raiponce = "I don't care. Get your ass together."
    end
  end
end
