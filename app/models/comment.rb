class Comment < ApplicationRecord
  include Base
  belongs_to :commentable, polymorphic: true
  default_scope {order("created_at ASC")}
  validates :author, :content, presence: true
  validate :comment_author, on: :create

  def comment_author
    errors.add(:author, "need two words with capital letters") unless
    author.present? and author.split.size == 2 and author.split.map{|word| true if word[0].capitalize == word[0]}.reduce(:&)
  end



end
