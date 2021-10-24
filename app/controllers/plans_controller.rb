class PlansController < ApplicationController

  def index
  end

  def show
  end

  def new
    @plan = Plan.new
    @plan.spots.build
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.spots.build
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plan_collection_params
    params.require(:plan).permit(:title, :plan_introduction, :prefecture_id, :plan_image_id,
      [ordered_products_attributes: [:plan_id, :spot_name, :spot_introduction, :spot_image_id, :_destroy]])
  end

end
