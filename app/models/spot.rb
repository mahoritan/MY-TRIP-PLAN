class Spot < ApplicationRecord

  belongs_to :plan
  attachment :spot_image

  validates :spot_name, presence: true, length: { maximum: 20 }
  validates :schedule_time, presence: true
  validates :spot_introduction, presence: true, length: { maximum: 100 }

end
