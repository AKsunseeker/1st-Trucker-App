class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end


  def edit
    @driver = Driver.find(params[:id])
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      render :index
    else
      render :edit
    end
  end

  def destroy
    @driver = Driver.find(params[:id]).destroy
  end

  private

  def driver_params
    params.require(:driver).permit(:name, :next_available_time, :next_available_location, :phone, :email)
  end
end

