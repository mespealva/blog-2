class ProfilesController < ApplicationController
  def show
    @author = Author.includes(:avatar_attachment, :posts).find_by(slug: params[:slug])
    @posts = @author.posts
    @posts = @posts.includes(:tags, :main_attachment, :author).order(created_at: :desc)
  end
end
