class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.new(plan_id: params[:plan_id])
    @favorite.save!
    redirect_back fallback_location: root_path, success: t('defaults.message.favorite')
  end

  def destroy
    current_user.favorites.find_by(plan_id: params[:plan_id]).destroy!
    redirect_back fallback_location: root_path, success: t('defaults.message.not_favorite')
  end

end
