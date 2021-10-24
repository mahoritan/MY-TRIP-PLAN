class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.references :plan, foreign_key: true, null: false
      t.string :spot_name, null: false
      t.string :spot_introduction
      t.string :spot_image_id
      t.timestamps
    end
  end
end
