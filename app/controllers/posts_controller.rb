class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :published]
  before_action :authenticate_author!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.published.most_recently_published
    # @posts = Post.all
  end

  def show
      @comment = Comment.new
  end
  
  def new
      @post = current_author.posts.build
  end

  def edit
    if current_author.id == @post.author_id
      render 'edit'
    else
      redirect_to root_path
    end    
  end
    
  def create
    @post = current_author.posts.build(post_params)
    if @post.save
      redirect_to edit_post_path(@post)
    else
      broadcast_errors @post, post_params
    end
  end
  
  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      broadcast_errors @post, post_params
    end
  end

  def destroy
    if current_author.id == @post.author_id
      @post.destroy
    end  
      redirect_to posts_path
  end

  def published
    @post.update(published: true, published_date: Time.now)
    redirect_to root_path
  end

  private
  
  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :author_id, :main, :content, :all_tags, images:[])
  end
end
