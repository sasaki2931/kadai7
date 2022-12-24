class FavoritesController < ApplicationController
  
    def create
        favorite = current_user.favorites.create(share_id: params[:share_id])
        redirect_to shares_path, notice: "#{favorite.share.user.name}さんのブログをお気に入り登録しました"
      end
    
      def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to shares_path, notice: "#{favorite.share.user.name}さんのブログをお気に入り解除しました"
      end
    end
end