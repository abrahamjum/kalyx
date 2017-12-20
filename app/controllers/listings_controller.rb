class ListingsController < ApplicationController

  def index
    @listings = Listing.all.order("created_at DESC")
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(permit_listing)
    if @listing.save
      flash[:success] = "Listing was successfully added."
      redirect_to listings_path
    else
      flash[:error] = @listing.errors.full_messages
      redirect_to listings_path
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

    def permit_listing
      params.require(:listing).permit(:image, :title, :price, :location,
      :zipcode, :body, :contact)
    end
end
