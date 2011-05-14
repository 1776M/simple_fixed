class PagesController < ApplicationController
  def home
      @title = 'home'
      @project = Project.new if signed_in?
  end

  def about
      @title = 'about'
  end

  def demo
      @title = 'demo'
  end

  def pricing
      @title = 'pricing'
  end

end
