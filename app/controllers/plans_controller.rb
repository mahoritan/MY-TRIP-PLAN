class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
  end

  def new
    @plan = Plan.new
    @plan.spots.build
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    @plan.save
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :plan_introduction, :prefecture_id, :plan_image, :transportation, spots_attributes: [:id, :spot_name, :spot_introduction, :spot_image, :schedule_time, :_destroy])
  end

end
