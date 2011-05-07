class PagesController < ApplicationController
  def home
      @title = 'home'
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
