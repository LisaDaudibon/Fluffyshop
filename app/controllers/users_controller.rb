class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Your account was created"
      redirect_to @user
    else
      puts @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @this_user = User.where(first_name: @user.first_name, last_name: @user.last_name)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
