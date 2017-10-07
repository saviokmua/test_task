class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  default_scope {order("created_at ASC")}

  def date
    created_at.to_date
  end
end
