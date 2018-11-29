class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy, :likes]

  def index
    @posts = Post.all
  end

  def show
    @author = @post.blogger
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
  end

  def create
    @post = Post.new(post_params)
    @bloggers = Blogger.all

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
    @bloggers = Blogger.all
  end

  def update
    # @post.update(post_params)
    @bloggers = Blogger.all

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def likes
    # @post.update_attributes(like_count: @post.like_count + 1)
  
    @post.like_count += 1
    @post.save
    redirect_to @post
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :like_count, :blogger_id)
  end
end
