class ShipperController < ApplicationController
  def index
    @shipper = Shipper.all
  end

  def new
    @shipper = Shipper.new
  end

  def show
    @shipper = Shipper.find(params[:id])
  end

  def edit
    @shipper = Shipper.find(params[:id])
  end

  def destroy
    @shipper = Shipper.find(params[:id])
  end

  private

  def shipper_params
    params.require(:shipper).permit(:name, :phone, :email)
  end
end
