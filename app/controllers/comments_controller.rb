class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save!
      respond_to do |format|
        format.html do
          flash[:success] = 'Comment posted.'
          redirect_to @post
        end
        format.js # JavaScript response
      end
    end
  end

  private
  
  def comment_params
      params.require(:comment).permit(:author, :content, :commentable_type, :commentable_id)
  end

end
