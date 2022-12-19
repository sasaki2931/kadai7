class SharesController < ApplicationController
  def index
    @shares = Share.all
  end

  def new
    @share = Share.new
  end

  def create
    Share.create(share_params)
    redirect_to new_share_path
  end

  def show
    @share = Share.find(params[:id])
  end


  private

  def share_params
    params.require(:share).permit(:title, :content)
  end


end
