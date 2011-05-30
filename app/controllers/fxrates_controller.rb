class FxratesController < ApplicationController

  before_filter :authorized_superadmin

  def new
      @fxrate = Fxrate.new
      @title = "New fxrate"
  end

  def show
      @fxrate = Fxrate.find(params[:id])
      @title = "fx rates"
  end

  def create
    @fxrate = Fxrate.new(params[:fxrate])
    if @fxrate.save 
      flash[:success] = "You have created a new fxrate"
      redirect_to fxrates_path
    else
      @title = "New fxrate"
      render 'new'
    end
  end

  def edit
      @fxrate = Fxrate.find(params[:id])  
      @title = "Edit fxrate" 
  end

  def update
    @fxrate = Fxrate.find(params[:id])
    if @fxrate.update_attributes(params[:fxrate])
      flash[:success] = "Fxrate updated"
      redirect_to fxrates_path
    else
      @title = "Edit fxrate"
      render 'edit'
    end
  end
 
  def index
    @title = "All fx ratess"
    @fxrates = Fxrate.all
  end

  def destroy
    Fxrate.find(params[:id]).destroy
    flash[:success] = "Fxrate deleted"
    redirect_to fxrates_path
  end

  private

      def authorized_superadmin
          redirect_to root_path unless current_user_superadmin(current_user)
      end

  
end
