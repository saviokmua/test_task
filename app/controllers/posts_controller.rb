class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.page params[:page]
  end

  def show
  end


  private
    def set_post
      @post = Post.find_by(id: params[:id]) or redirect_to error404_path
    end

end
