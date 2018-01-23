require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_item) { Item.create!(name: "name") }
  let(:my_user) { User.create!(email: "user@user.com", password: "password") }
  
  before(:each) do
    sign_in my_user
  end

  describe "ITEM create" do
    it "increases the number of Post by 1" do
      expect{post :create, item: {name: "name"}}.to change(Item,:count).by(1)
    end
    
    it "redirects to the @user" do
      post :create, item: {name: "name"}
      expect(response).to redirect_to @user
    end
  end

end
