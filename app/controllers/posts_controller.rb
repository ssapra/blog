class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to posts_path
    # redirect_to post_path(id: post.id)
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    post = Post.find_by_id(params[:id])
    # retrieve

    # update
    post.update_attributes(post_params)

    # redirect
    redirect_to post_path(id: post.id)
  end

  def destroy
    post = Post.find_by_id(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:author, :published_at, :content)
  end
end
