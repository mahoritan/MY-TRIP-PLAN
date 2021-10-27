class RemoveDetailsFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :area_id, :integer
    remove_column :plans, :spot_name, :string
    remove_column :plans, :spot_introduction, :string
    remove_column :plans, :image_id, :string
  end
end
