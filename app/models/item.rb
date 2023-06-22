class Item < ApplicationRecord
    has_one_attached :image_video do |attachable|
        attachable.variant :thumb, resize_to_limit: [400, 400]
        attachable.variant :image, resize_to_limit: [400, 900]
    end
end