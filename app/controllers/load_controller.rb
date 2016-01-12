class LoadController < ApplicationController
  def index
    @load = Load.all
  end

  def show
    @load = Load.find(params[:id])
  end

  def new
    @load = Load.new
  end

  def edit
    @load = Load.find(params[:id])
  end

  def create
    @load = Load.new(load_params)
    if @load.save
      render :index
    else
      render :edit
    end
  end

  def destroy
    @load = Load.find(params[:id]).destroy
  end

  private

  def load_params
    parmas.require(:load).permit(:early_pickup_date, :early_pickup_time, :origin_city, :origin_state, :origin_address, :origin_zip)
  end
end
