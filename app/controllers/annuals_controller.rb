class AnnualsController < ApplicationController

  def show
      @annual = Annual.find(params[:id])
  end

  def create
    @basecase = Basecase.find(params[:basecase_id])    
    @annual = @basecase.annuals.build(params[:annual])
    if @annual.save
      flash[:success] = "You have created new data"
      redirect_to basecase_path(@annual.basecase_id)
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit  
      @title = "Edit data" 
  end

  def update
    @annual = Annual.find(params[:id])
    if @annual.update_attributes(params[:annual])
      flash[:success] = "Data updated"
      redirect_to @annual
    else
      @title = "Edit data"
      render 'edit'
    end
  end
 
  def index
    @title = "All data"
    @annuals = Annual.all
  end

  def destroy
    Annual.find(params[:id]).destroy
    flash[:success] = "Data deleted"
    if current_user.name == 'mandeep3'     
        redirect_to basecase_path
    else
        redirect_to group_path(current_user.group_id)
    end
  end
  
  private

      def authorized_admin
          @annual = Annual.find(params[:id])
          @group = @annual.basecase.group
          redirect_to root_path unless current_user_admin(current_user, @group)
      end

      def authorized_group_member
          @annual = Annual.find(params[:id])
          @group = @annual.basecase.group 
          redirect_to root_path unless (@group.id == current_user.group_id  || current_user.name == 'mandeep3')   
      end


end
