class UsersController < ApplicationController

  #Shows all Weed products
  def index
  end

  #Display one product
  def show
    @user = User.find(params[:id])
  end

  #Display form to add new product
  def new
    @user = User.new 
  end

  #Action to add product
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Weedmazon!"
      redirect_to @user
    else
      render 'new'
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

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
