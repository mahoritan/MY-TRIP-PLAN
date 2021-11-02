class FavoritesController < ApplicationController

  def create
    @plan = Plan.find(params[:plan_id])
    @favorite = current_user.favorites.build(plan_id: params[:id])
    @favorite.save!
    redirect_back fallback_location: root_path, success: t('defaults.message.favorite')
  end

  def destroy
    @plan = Plan.find(params[:plan_id])
    current_user.favorites.find_by(plan_id: params[:id]).destroy!
    redirect_back fallback_location: root_path, success: t('defaults.message.not_favorite')
  end

end
