class Slider < ApplicationRecord
    has_one :SliderImg
    accepts_nested_attributes_for :SliderImg
    validates :title, presence: true
    validates :body, presence: true
end
