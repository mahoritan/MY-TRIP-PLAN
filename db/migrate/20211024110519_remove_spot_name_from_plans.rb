class RemoveSpotNameFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :Spot_name, :string
  end
end
