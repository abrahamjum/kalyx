class WeedController < ApplicationController

  def home
    @weeds = Weed.all
  end

  #Shows all Weed products
  def index
    @weeds = Weed.all
    if params[:search]
      @weeds = Weed.search(params[:search]).order("created_at DESC")
    else
      @weeds = Weed.all.order("created_at DESC")
    end
  end

  #Display one product
  def show
    @weed = Weed.find(params[:id])
  end

  #Display form to add new product
  def new
    @weed = Weed.new
  end

  #Action to add product
  def create

  end

  #Display form to edit product
  def edit
  end

  #Action to edit product
  def update
  end

  #Action to destroy current product
  def destroy
  end
end
