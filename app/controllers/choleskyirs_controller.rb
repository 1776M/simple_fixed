class CholeskyirsController < ApplicationController

  before_filter :authorized_superadmin, :only => [:index] 

  def new
      @choleskyir = Choleskyir.new
      @title = "New cholesky interest rates"
  end

  def show
      @choleskyir = Choleskyir.find(params[:id])
      @title = "Cholesky interest rates" 
  end

  def create
    @choleskyir = Choleskyir.new(params[:choleskyir])
    if @choleskyir.save 
      flash[:success] = "You have created a new cholesky"
      redirect_to @choleskyir
    else
      @title = "New cholesky interest rates"
      render 'new'
    end
  end

  def edit
      @choleskyir = Choleskyir.find(params[:id])  
      @title = "Edit cholesky for interest rates" 
  end

  def update
    @choleskyir = Choleskyir.find(params[:id])
    if @choleskyir.update_attributes(params[:choleskyir])
      flash[:success] = "Cholesky updated"
      redirect_to @choleskyir
    else
      @title = "Edit cholesky interest rates"
      render 'edit'
    end
  end
 
  def index
    @title = "All choleskies for interest rates"
    @choleskyirs = Choleskyir.all
  end

  def destroy
    Choleskyir.find(params[:id]).destroy
    flash[:success] = "Cholesky deleted"
    redirect_to choleskyirs_path
  end

  private

      def authorized_superadmin
          redirect_to root_path unless current_user_superadmin(current_user)
      end
  
end
