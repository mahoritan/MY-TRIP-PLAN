class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @plans = @user.plans.page(params[:page]).reverse_order
  end
end
