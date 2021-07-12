class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if params[:question] == "hello"
        @result = "Hello"
      elsif params[:question] == "what time is it?"
        @result = "Now is #{Time.now.strftime("%F %T")}"
      elsif params[:question] == "I am going to work"
        @result = "Great!"
      elsif params[:question] == "\A?.\z"
        @result = "Silly question, get dressed and go to work!"
      else
        @result = "I don't care, get dressed and go to work!"
      end
  end

end
