class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :area_id
      t.integer :prefecture_id
      t.integer :user_id
      t.string :spot_name
      t.string :title
      t.text :plan_introduction
      t.string :image_id
      t.integer :transportation

      t.timestamps

    end
  end
end
