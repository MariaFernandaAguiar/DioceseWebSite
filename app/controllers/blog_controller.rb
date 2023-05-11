class BlogController < ApplicationController
    before_action :set_blogs
    def blog_index
    end

    private 
    def set_blogs
      @blogs = Blog.all
    end
end
