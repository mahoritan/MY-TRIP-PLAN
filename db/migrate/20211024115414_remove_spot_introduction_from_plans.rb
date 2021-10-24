class RemoveSpotIntroductionFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :SpotIntroduction, :string
  end
end
