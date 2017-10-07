require 'spec_helper'

describe "Pages" do
=begin
  describe "Posts page" do

    it "should have the content 'Posts'" do
      visit '/posts'
      expect(page).to have_content('Posts')
    end
  end

  describe "Categories page" do

    it "should have the content 'Categories'" do
      visit '/categories'
      expect(page).to have_content('Categories')
    end
  end
=end
  describe "Test" do
    it "should 1+1 == 2" do
      expect(1+1).to be 2
    end
  end  
end