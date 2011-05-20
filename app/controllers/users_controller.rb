class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy

  # def new
     # @user = User.new
     # @title = "Sign up"
  # end

  def show
      @user = User.find(params[:id])
      @projects = @user.projects
      @title = @user.name
      @project = Project.new if signed_in?
  end

  def create
    @group = Group.find(params[:group_id])    
    @user = @group.users.build(params[:user])
    if params[:user][:admin]==true 
        @user.admin=true
    end
    if @user.save
      flash[:success] = "You have created a new user"
      redirect_to groups_path
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit  
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
    if current_user.name == 'mandeep3'     
        redirect_to groups_path
    else
        redirect_to group_path(current_user.group_id)
    end
  end
  
  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end 

    def admin_user
      redirect_to(root_path) unless current_user.admin? || current_user.name == 'mandeep3'
    end

end
