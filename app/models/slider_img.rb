class SliderImg < ApplicationRecord
    belongs_to :slider
    mount_uploader :url, SliderImageUploader
end
