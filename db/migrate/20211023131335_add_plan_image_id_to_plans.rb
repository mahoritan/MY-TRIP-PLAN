class AddPlanImageIdToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :plan_image_id, :string
  end
end
