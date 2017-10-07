namespace :db do
  desc "Create test data to the blog"
  task :populate => :environment do 
    require 'faker'
    Post.destroy_all
    Category.destroy_all
    # Create 15 categories
    15.times do
      Category.create do |category|
        category.name = Faker::Lorem.word
        category.description = Faker::Lorem.sentence
        15.times do
          Comment.create do |comment|
            comment.author = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
            comment.content = Faker::Lorem.sentence
            comment.commentable = category
          end
        end
        15.times do
          Post.create do |post|
            post.name = Faker::Lorem.word
            post.content = Faker::Lorem.paragraph
            file = URI.parse("http://lorempixel.com/500/500/")
            post.file = file
            post.file_file_name = "post_#{post.id}.png"
            post.categories << category
            15.times do
              Comment.create do |comment|
                comment.author = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
                comment.content = Faker::Lorem.sentence
                comment.commentable = post
              end
            end
          end
        end
      end
    end
  end
end