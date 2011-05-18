class GroupsController < ApplicationController

  before_filter :authorized_superadmin, :only => [:index] 
  before_filter :authorized_admin, :only => [:show] 

  def new
      @group = Group.new
      @title = "New group"
  end

  def show
      @group = Group.find(params[:id])
      @users = @group.users
      @title = @group.group_name
      @user = User.new if signed_in?
  end

  def create
    @group = Group.new(params[:group])
    if @group.save 
      flash[:success] = "You have created a new user"
      redirect_to @group
    else
      @title = "New group"
      render 'new'
    end
  end

  def edit  
      @title = "Edit group" 
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      flash[:success] = "Group updated"
      redirect_to @group
    else
      @title = "Edit group"
      render 'edit'
    end
  end
 
  def index
    @title = "All groups"
    @groups = Group.all
  end

  def destroy
    Group.find(params[:id]).destroy
    flash[:success] = "Group deleted"
    redirect_to groups_path
  end

  private

      def authorized_superadmin
          redirect_to root_path unless current_user_superadmin(current_user)
      end

      def authorized_admin
          redirect_to root_path unless current_user_admin(current_user)
      end

  
end
