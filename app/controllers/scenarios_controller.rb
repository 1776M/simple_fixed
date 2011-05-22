class ScenariosController < ApplicationController
 
     before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
     before_filter :correct_user, :only => [:edit, :update, :destroy]
    

  def show
     @scenario = Scenario.find(params[:id])
     # @scenario = scenario.new if signed_in?
     @actannuals = @scenario.actannuals
     @actannual = Actannual.new if signed_in?   
     @actborrowings = @scenario.actborrowings
     @actborrowing = Actborrowing.new if signed_in?
     @group = @scenario.project.user.group
     @basecase = Basecase.find(:last, :conditions => [" group_id = ?", @group.id])
     @annual =  Annual.find(:last, :conditions => [" basecase_id = ?", @basecase.id])
     @borrowings =  Borrowing.find(:all, :conditions => [" basecase_id = ?", @basecase.id])      
  end

  def create
      @project = Project.find(params[:project_id])    
      @scenario = @project.scenarios.build(params[:scenario]) 
    if @scenario.save
      flash[:success] = "scenario created!"
      redirect_to project_path(params[:project_id])
    else
      render user_path(current_user)
    end
  end

  def destroy
    Scenario.find(params[:id]).destroy
    flash[:success] = "scenario deleted"
    if current_user.name == 'mandeep3'     
        redirect_to groups_path
    else
        redirect_to group_path(current_user.project_id)
    end

  end

  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @scenario = Scenario.find(params[:id])
      @user = @scenario.project.user
      redirect_to(root_path) unless current_user?(@user)
    end


end