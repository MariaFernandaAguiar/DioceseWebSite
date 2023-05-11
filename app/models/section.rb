class Section < ApplicationRecord
    mount_uploader :url, SliderImageUploader
end
