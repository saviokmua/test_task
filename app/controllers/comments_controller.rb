class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    respond_to do |format|
      format.js {} 
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content, :commentable_type, :commentable_id)
  end

end
