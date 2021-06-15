class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # This line if for form_tag
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    # This line if for HTML and Form_with
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      puts @user.errors.messages
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render 'index'
    else
      render 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
