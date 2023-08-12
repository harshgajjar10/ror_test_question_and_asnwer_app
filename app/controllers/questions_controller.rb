class QuestionsController < ApplicationController
  before_action :find_question, only: [:show]

  def index
    @questions = Question.all
  end

  def user_questions
    @questions = current_user.questions
  end

  def new
    @question = current_user.questions.build
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to questions_path, notice: 'Question was successfully added.'
    else
      render 'new', errors: @question.errors.full_messages
    end
  end
  
  def show
    @question_answers = @question.answers.order(created_at: :desc) if @question.present?
  end

  private

  def find_question
    @question = Question.find_by(id: params[:id])
  end

  def question_params
    params.require(:question).permit(:id, :title, :description, :topic_id, :user_id)
  end
end
