class RemoveImageIdFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :Image_id, :string
  end
end
