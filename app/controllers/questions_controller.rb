class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    @answer = generate_answer(@question)
  end

  private

  def generate_answer(question)
    if question.nil? || question.empty?
      return "Please ask a question."
    elsif question.end_with?('?')
      return "Silly question, get dressed and go to work!"
    elsif question == "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
