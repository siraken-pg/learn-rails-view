class PostsController < ApplicationController
  def index
    @posts = [{title: 'John'}, {title: 'Jane'}]
    render 'posts/index'
  end
end
