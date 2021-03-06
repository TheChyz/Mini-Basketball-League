class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  skip_before_filter :require_login, only: [:new, :create]

  # Make the user an admin
  def enable_admin
    if current_user.admin?
      user = User.find(params[:id])
      user.update_attribute("admin", true)
      redirect_to "/users"
    else
      redirect_to "/home"
      flash[:warning] = "Only admins can perform that action."
    end
  end

  # Reverse the action of making a user an admin
  def disable_admin
    if current_user.admin?
      user = User.find(params[:id])
      user.update_attribute("admin", false)
      redirect_to "/users"
    else
      redirect_to "/home"
      flash[:warning] = "Only admins can perform that action."
    end
  end

  def index
    if current_user.admin?
      @users = User.all
    else
      redirect_to "/home"
      flash[:warning] = "Only admins can access that page."
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Mini Basketball League!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile has been successfully updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    found_team = false
    Team.all.each do |team|
      if (params[:id].to_i == team.captain_id)
        found_team = true
        team.players_id.each do |player_id|
          user = User.find(player_id)
          user.update_attribute(:team_id, -1)
        end
        team.destroy
        User.find(params[:id]).destroy
        flash[:success] = "User and their team were deleted"
        redirect_to users_url
      elsif (team.players_id.include? params[:id].to_i)
        found_team = true
        team.players_id -= [params[:id].to_i]
        team.save
        user = User.find(params[:id])
        user.destroy
        flash[:success] = "User deleted"
        redirect_to users_url
      elsif (team.applied_user_ids.include? params[:id].to_i)
        team.applied_user_ids -= [params[:id].to_i]
        team.save
      end
    end
    if found_team == false
      User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to users_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation,
                                 :about, :height,:weight,
                                 :twitter, :primary_court, :secondary_court)
  end

  # Ensures user is logged in
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Ensures user is correct
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end

  # Ensures user is an admin
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
