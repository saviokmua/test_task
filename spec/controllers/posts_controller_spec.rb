require 'spec_helper'


describe PostsController do
  describe "index action" do
    it "render index template" do
      visit '/posts'
      expect(page).to have_content('Posts')
    end
  end

  describe "show action is present" do
    it "renser show template" do
      get :show, params: {id: 0}
      expect(response.status).to eq(404)
    end
  end


end