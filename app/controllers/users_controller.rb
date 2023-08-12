class UsersController < ApplicationController
  def index
    @users = User.where.not(id: current_user.id)
  end

  def following_user
    if current_user.following_user_ids.include?(params[:following_user_id])
      redirect_to users_path, alert: "You are already follwing this user"
    else
      current_user.following_user_ids << params[:following_user_id].to_i
      current_user.save
      redirect_to users_path, notice: 'You are following user.'
    end
  end
end
