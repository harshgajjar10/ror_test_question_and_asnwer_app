class TopicsController < ApplicationController
  before_action :find_topic, only: [:user_topic_follow]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path, notice: 'Topic was successfully added.'
    else
      render 'new', errors: @topic.errors.full_messages
    end
  end

  def user_topic_follow
    user_topic = @topic.users.find_by(id: current_user.id)
    if user_topic.present?
      redirect_to topics_path, alert: 'You are already following this topic.'
    else
      @topic.users << current_user 
      redirect_to topics_path, notice: 'Topic following successfully.'
    end
  end

  private

  def find_topic
    @topic = Topic.find_by(id: params[:id])
  end

  def topic_params
    params.require(:topic).permit(:id, :title, :description)
  end
end
