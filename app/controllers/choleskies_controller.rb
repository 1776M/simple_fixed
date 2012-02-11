class CholeskiesController < ApplicationController

  before_filter :authorized_superadmin, :only => [:index] 

  def new
      @cholesky = Cholesky.new
      @title = "New cholesky"
  end

  def show
      @cholesky = Cholesky.find(params[:id])
      @title = "Cholesky" 
  end

  def create
    @cholesky = Cholesky.new(params[:cholesky])
    if @cholesky.save 
      flash[:success] = "You have created a new cholesky"
      redirect_to @cholesky
    else
      @title = "New cholesky"
      render 'new'
    end
  end

  def edit
      @cholesky = Cholesky.find(params[:id])  
      @title = "Edit cholesky" 
  end

  def update
    @cholesky = Cholesky.find(params[:id])
    if @cholesky.update_attributes(params[:cholesky])
      flash[:success] = "Cholesky updated"
      redirect_to @cholesky
    else
      @title = "Edit cholesky"
      render 'edit'
    end
  end
 
  def index
    @title = "All choleskies"
    @choleskies = Cholesky.all
  end

  def destroy
    Cholesky.find(params[:id]).destroy
    flash[:success] = "Cholesky deleted"
    redirect_to choleskies_path
  end

  private

      def authorized_superadmin
          redirect_to root_path unless current_user_superadmin(current_user)
      end
  
end
