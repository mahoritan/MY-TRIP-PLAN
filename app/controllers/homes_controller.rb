class HomesController < ApplicationController
  def top
    @plans = Plan.find(Favorite.group(:plan_id).order('count(plan_id) desc').limit(4).pluck(:plan_id))
  end
end
