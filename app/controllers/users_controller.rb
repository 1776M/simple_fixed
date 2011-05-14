class UsersController < ApplicationController

  def new
      @user = User.new
      @title = "Sign up"
  end

  def show
      @user = User.find(params[:id])
      @title = @user.name
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "You have created a new user"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit
      @user = User.find(params[:id])
      @title = "Edit user" 
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "User updated"
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
 
  def index
    @title = "All users"
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_path
  end 

end
