class Category < ApplicationRecord
  default_scope {order(:name)}
  has_and_belongs_to_many :posts
  has_many :comments, as: :commentable
  validates :name, presence: true
end
