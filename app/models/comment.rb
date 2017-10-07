class Comment < ApplicationRecord
  include Base
  belongs_to :commentable, polymorphic: true
  default_scope {order("created_at ASC")}

  
end
