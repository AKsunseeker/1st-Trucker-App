class DispatchersController < ApplicationController
  def index
    @dispatchers = Dispatcher.all
  end

  def show
    @dispatcher = Dispatcher.find(params[:id])

  end

  def new
    @dispatcher = Dispatcher.new
  end

  def create
    @dispatcher = Dispatcher.new(dispatcher_params)
    if @dispatcher.save
      redirect_to dispatchers_path
    else 
      render :new
    end
  end

  def edit
    @dispatcher = Dispatcher.find(params[:id])
  end

  def update
    @dispatcher = Dispatcher.find(params[:id])
    if @dispatcher.update(dispatcher_params)
      redirect_to dispatchers_path
    else 
      render :edit
    end
  end

  def destroy
    @dispatcher = Dispatcher.find(params[:id])
    if @dispatcher.destroy
      render :index
    else
      render :index
    end
  end




  private

  def dispatcher_params
    params.require(:dispatcher).permit(:name, :phone, :email)
  end
end




