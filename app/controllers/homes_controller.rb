class HomesController < ApplicationController
  def top
    @plans = Plan.includes(:favorite_plans).sort {|a,b| b.favorite_plans.size <=> a.favorite_plans.size}
  end
end
