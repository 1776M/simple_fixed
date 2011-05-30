class RiskpremiaController < ApplicationController

  before_filter :authorized_superadmin

  def new
      @riskpremium = Riskpremium.new
      @title = "New riskpremium"
  end

  def show
      @riskpremium = Riskpremium.find(params[:id])
      @title = "risk premia"
  end

  def create
    @riskpremium = Riskpremium.new(params[:riskpremium])
    if @riskpremium.save 
      flash[:success] = "You have created a new riskpremium"
      redirect_to riskpremia_path
    else
      @title = "New riskpremium"
      render 'new'
    end
  end

  def edit
      @riskpremium = Riskpremium.find(params[:id])  
      @title = "Edit riskpremium" 
  end

  def update
    @riskpremium = Riskpremium.find(params[:id])
    if @riskpremium.update_attributes(params[:riskpremium])
      flash[:success] = "Riskpremium updated"
      redirect_to riskpremia_path
    else
      @title = "Edit riskpremium"
      render 'edit'
    end
  end
 
  def index
    @title = "All risk premia"
    @riskpremia = Riskpremium.all
  end

  def destroy
    Riskpremium.find(params[:id]).destroy
    flash[:success] = "Riskpremium deleted"
    redirect_to riskpremia_path
  end

  private

      def authorized_superadmin
          redirect_to root_path unless current_user_superadmin(current_user)
      end

  
end
