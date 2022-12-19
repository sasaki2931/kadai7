class SharesController < ApplicationController
  before_action :set_share, only: [:show, :edit, :update, :destroy] 
  def index
    @shares = Share.all
  end

  def new
    @share = Share.new
  end

  def create
    Share.create(share_params)
    if @share.save
      redirect_to shares_path, notice: "ブログを作成しました！"
    else
      render :new
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






  private

  def share_params
    params.require(:share).permit(:title, :content)
  end

  def set_share
    @share = Share.find(params[:id])
  end


end
