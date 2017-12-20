class WeedController < ApplicationController

  def home
    @weeds = Weed.all
  end

  #Shows all Weed products
  def index
    @weeds = Weed.all.order("created_at DESC")
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
    @weed = Weed.new(permit_products)
    if @weed.save
      flash[:success] = "Listing was successfully added."
      redirect_to index
    else
      flash[:error] = @weed.errors.full_messages
      redirect_to index
    end
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

  private

    def permit_products
      params.require(:weed).permit(:image, :title, :name, :strain,
        :price, :species)
    end
end
