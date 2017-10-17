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

    @timelabels1 = Winedata1.pluck(:time)
    @whites1 = Winedata1.pluck(:white)
    @reds1 = Winedata1.pluck(:red)
    @blues1 = Winedata1.pluck(:blue)
    @greens1 = Winedata1.pluck(:green)
    @violates1 = Winedata1.pluck(:violate)
    @purples1 = Winedata1.pluck(:purple)
    @yellows1 = Winedata1.pluck(:yellow)
    @masses1 = Winedata1.pluck(:mass)
    @temperatures1 = Winedata1.pluck(:temperature)

    @timelabels2 = Winedata2.pluck(:time)
    @whites2 = Winedata2.pluck(:white)
    @reds2 = Winedata2.pluck(:red)
    @blues2 = Winedata2.pluck(:blue)
    @greens2 = Winedata2.pluck(:green)
    @violates2 = Winedata2.pluck(:violate)
    @purples2 = Winedata2.pluck(:purple)
    @yellows2 = Winedata2.pluck(:yellow)
    @masses2 = Winedata2.pluck(:mass)
    @temperatures2 = Winedata2.pluck(:temperature)

    @timelabels3 = Winedata3.pluck(:time)
    @whites3 = Winedata3.pluck(:white)
    @reds3 = Winedata3.pluck(:red)
    @blues3 = Winedata3.pluck(:blue)
    @greens3 = Winedata3.pluck(:green)
    @violates3 = Winedata3.pluck(:violate)
    @purples3 = Winedata3.pluck(:purple)
    @yellows3 = Winedata3.pluck(:yellow)
    @masses3 = Winedata3.pluck(:mass)
    @temperatures3 = Winedata3.pluck(:temperature)

    @timelabels4 = Winedata4.pluck(:time)
    @whites4 = Winedata4.pluck(:white)
    @reds4 = Winedata4.pluck(:red)
    @blues4 = Winedata4.pluck(:blue)
    @greens4 = Winedata4.pluck(:green)
    @violates4 = Winedata4.pluck(:violate)
    @purples4 = Winedata4.pluck(:purple)
    @yellows4 = Winedata4.pluck(:yellow)
    @masses4 = Winedata4.pluck(:mass)
    @temperatures4 = Winedata4.pluck(:temperature)

    # @winedatas = Winedatum.all
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
