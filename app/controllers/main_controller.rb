class MainController < ApplicationController
  def index
    @wines = Wine.all
    @timelabels = Winedatum.pluck(:time)
    @whites = Winedatum.pluck(:white)
    @reds = Winedatum.pluck(:red)
    @blues = Winedatum.pluck(:blue)
    @greens = Winedatum.pluck(:green)
    @violates = Winedatum.pluck(:violate)
    @purples = Winedatum.pluck(:purple)
    @yellows = Winedatum.pluck(:yellow)
    @masses = Winedatum.pluck(:mass)
    @temperatures = Winedatum.pluck(:temperature)
    @winedatas = Winedatum.all
  end

  def wine
  end
  
  def devices
    @devices = Device.all
  end
  
  def new
    @devices = Device.all
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    @device.status = "Ready"
    @device.save

    redirect_to :action => :devices
  end

  def account
  end

  def system
  end
  
  private
  def device_params
    params.require(:device).permit(:label)
  end

end
