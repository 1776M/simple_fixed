class ActannualsController < ApplicationController

     before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
     before_filter :correct_user, :only => [:edit, :update, :destroy]

  def show
      @actannual = Actannual.find(params[:id])
  end

  def create
    @scenario = Scenario.find(params[:scenario_id])    
    @actannual = @scenario.actannuals.build(params[:actannual])
    if @actannual.save
      flash[:success] = "You have created new data"
      redirect_to project_path(@actannual.scenario.project.id)
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit 
      @actannual = Actannual.find(params[:id]) 
      @title = "Edit data" 
  end

  def update
    @actannual = Actannual.find(params[:id])
    if @actannual.update_attributes(params[:actannual])
      flash[:success] = "Data updated"
      redirect_to @actannual
    else
      @title = "Edit data"
      render 'edit'
    end
  end
 
  def index
    @title = "All data"
    @actannuals = Actannual.all
  end

  def destroy
    Actannual.find(params[:id]).destroy
    flash[:success] = "Data deleted"
    if current_user.name == 'mandeep3'     
        redirect_to scenario_path
    else
        redirect_to group_path(current_user.group_id)
    end
  end
  
  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @actannual = Actannual.find(params[:id])
      @user = @actannual.scenario.project.user
      redirect_to(root_path) unless current_user?(@user)
    end

end
