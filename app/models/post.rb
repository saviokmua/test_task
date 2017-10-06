class Post < ApplicationRecord
  has_attached_file :file,    styles: { medium: "500x500>", thumb: "250x250>" }
  validates_attachment_content_type :file, 
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    validates_attachment_size :file, :in => 0.megabytes..2.megabytes
  end
