class AddSpotIntroductionToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :spot_introduction, :string
  end
end
