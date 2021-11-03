class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @plans = @user.plans.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def favorites
    @user = User.find(params[:id])
    favorites = Favorite.where(user_id: @user.id).pluck(:plan_id)
    @favorite_plans = Plan.find(favorites)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image, :email, :prefecture_id)
  end
end
