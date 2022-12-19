class SharesController < ApplicationController
  def index
  end

  def new
    @share = Share.new
  end

  def create
    Share.create(share_params)
    redirect_to new_share_path
  end

  private

  def share_params
    params.require(:share).permit(:title, :content)
  end


end
