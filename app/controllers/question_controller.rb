class QuestionController < ApplicationController
  ANSWER = {
    1 => 'Great!',
    2 => 'Silly question, get dressed and go to work!',
    3 => 'I don\'t care, get dressed and go to work!'
  }.freeze

  def ask; end

  def answer
    @question = params[:question]
    @answer = ''
    if @question == 'I am going to work'
      @answer = ANSWER[1]
    elsif @question.end_with?('?')
      @answer = ANSWER[2]
    else
      @answer = ANSWER[3]
    end
  end
end
