class HomeController < ApplicationController
    before_action :set_sliders
    before_action :set_section
    before_action :set_abouts
    before_action :set_datasection
    before_action :set_events
    before_action :set_paroquias
    def index
    end
    def blog_index
    end
    private 
    def set_sliders
      @sliders = Slider.all
    end

    def set_section
      @sections =Section.all
    end

    def set_abouts
      @abouts =About.last(5).reverse
    end

    def set_datasection
      @datasection = DateSection.all
    end

    def set_events
      @events =Event.last(2).reverse
    end

    def set_paroquias
      @paroquias =Paroquia.last(4).reverse
    end
end