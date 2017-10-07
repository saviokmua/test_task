class Post < ApplicationRecord
  include Base
  include CommentConcern
  default_scope {order(created_at: :desc)}
  has_and_belongs_to_many :categories
  has_many :comments, as: :commentable, dependent: :destroy
  has_attached_file :file,    styles: { medium: "500x500>", thumb: "250x250>" }
  validates_attachment_content_type :file, 
  content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates_attachment_size :file, :in => 0.megabytes..2.megabytes
  validates :name, :content, presence: true
  paginates_per 25


end