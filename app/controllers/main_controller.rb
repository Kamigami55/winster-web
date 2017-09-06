class MainController < ApplicationController
  def index
    @wines = Wine.all
  end

  def wine
  end
  
  def devices
  end
  
  def account
  end

  def system
  end
end
