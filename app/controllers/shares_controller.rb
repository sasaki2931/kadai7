class SharesController < ApplicationController
  before_action :set_share, only: [:show, :edit, :update, :destroy] 
  def index
    @shares = Share.all
  end

  def new
    @share = Share.new
  end

  def create
    @share = current_user.shares.build(share_params)
    if params[:back]
      render :new
    else
      if @share.save
        redirect_to shares_path, notice: "ブログを作成しました！"
      else
        render :new
      end
    end
  end
    

  def show
    @share = Share.find(params[:id])
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
    if @share.update(share_params)
      redirect_to shares_path, notice: "投稿を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @share.destroy
    redirect_to shares_path, notice:"投稿を削除しました！"
  end

  def confirm
    @share = current_user.shares.build(share_params)
    binding.pry
    render :new if @share.invalid?
  end






  private

  def share_params
    params.require(:share).permit(:title, :content,:image, :image_cache)
  end

  def set_share
    @share = Share.find(params[:id])
  end


end
