class PostsController < ApplicationController
  def index
    @posts = Post.all
    render 'posts/index'
  end

  def show
    @post = Post.find(params[:id])
    render 'posts/details'
  end

  def new
    @post = Post.new

    render 'posts/form'
  end

  def create
    # @post = Post.new(post_params)
    @post = Post.new(title: params[:title], body: params[:body])
    if @post.save
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      render 'posts/form'
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
