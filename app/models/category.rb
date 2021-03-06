class Category < ApplicationRecord
  include CommentConcern
  default_scope {order(:name)}
  has_and_belongs_to_many :posts
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence: true
  paginates_per 10
end
