module Base
  extend ActiveSupport::Concern

  def date
    self.created_at.strftime("%d-%m-%Y %H-%M")
  end
  
  def comments_count
    self.comments.count
  end
  
end