class RemovePlanImageFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :plan_image, :string
  end
end
