class Spot < ApplicationRecord

  belongs_to :plan
  attachment :spot_image

end
