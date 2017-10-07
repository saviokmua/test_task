module CommentConcern
  extend ActiveSupport::Concern

  def comments_count
    self.comments.count
  end

end