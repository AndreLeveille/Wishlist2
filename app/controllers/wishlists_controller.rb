class WishlistsController < ApplicationController

  def index
    @wishlists = current_user.wishlists
  end

  def show
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = current_user.wishlists.new(list_params)
    if @wishlist.save
      redirect_to wishlists_path
    else 
      render :new
    end
  end 

  def edit
    @wishlist = current_user.wishlists.find(params[:id])
  end

  def update
    @wishlist = current_user.wishlists.find(params[:id])
    if @wishlist.update(list_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  def destroy
    current_user.wishlists.find(params[:id]).destroy
    redirect_to wishlists_path
  end


  private

  def list_params
    params.require(:wishlist).permit(:name)
  end
end