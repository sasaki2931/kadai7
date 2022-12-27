class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to shares_path
    else    
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @shares = @user.shares

    favorites = Favorite.where(user_id: current_user.id).pluck(:share_id)  
    @favorite_list = Share.find(favorites)   
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render "edit"
    else
      redirect_to shares_path
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id),notice: "プロフィールを編集しました"
    else
      render :edit
    end
  end
  


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,:avatar,:avatar_cache)
  end

  
    
end
