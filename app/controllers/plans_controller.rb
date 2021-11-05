class PlansController < ApplicationController

  def index
    @q = Plan.ransack(params[:q])
    @plans = @q.result
  end



  def show
    @plan = Plan.find(params[:id])
    @spots = Spot.where(plan_id: @plan.id)
    @comment = Comment.new
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
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to plan_path(@plan.id)
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :plan_introduction, :prefecture_id, :plan_image, :transportation, spots_attributes: [:id, :spot_name, :spot_introduction, :spot_image, :schedule_time, :_destroy])
  end

end
