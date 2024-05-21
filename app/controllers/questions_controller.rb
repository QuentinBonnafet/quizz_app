class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @result = params[:result]
  end

  def check_answer
    @question = Question.find(params[:id])
    user_answer = params[:answer].strip.downcase
    correct = user_answer == @question.correct_answer.strip.downcase
    result = correct ? 'Correct!' : 'Wrong, try again.'
    redirect_to question_path(@question, result: result)
  end
end
