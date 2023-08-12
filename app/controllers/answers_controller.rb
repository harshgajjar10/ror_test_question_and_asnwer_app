class AnswersController < ApplicationController
  def create
    @answer = current_user.answers.build(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question), notice: 'Answer was successfully added.'
    else
      render 'back', errors: @answer.errors.full_messages
    end
  end

  def user_answers
    @answers = current_user.answers
  end

  private

  def answer_params
    params.require(:answer).permit(:id, :answer_text, :question_id, :user_id)
  end
end
