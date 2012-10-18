class StaticPagesController < ApplicationController
  def home
    @name = "Leeban"
    @title = 'Home'
  end

  def help
    @title = 'Help'
  end

  def about
    @title = 'About Us'
  end
end
