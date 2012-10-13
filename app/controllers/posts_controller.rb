class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
  end
  
  def new
    @post = Post.new
  end
  
  def create  
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: "Post Posted!"
    else
      render :new
    end
  end
  
  def show
    @post = Post.find(params[:id])
    @reply = Reply.new
  end
end
