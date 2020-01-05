require 'rails_helper'

describe ItemsController do
  describe 'GET #check' do
    it "renders the :check template" do
      user = FactoryBot.create(:user)
      category = FactoryBot.create(:category)
      item = FactoryBot.create(:item)
      image = FactoryBot.create(:image)
      get :check, params: { id: item }
      expect(response).to render_template :check
    end
    it "assigns the requested item to @item" do
      user = FactoryBot.create(:user)
      category = FactoryBot.create(:category)
      item = FactoryBot.create(:item)
      get :check, params: { id: item }
      expect(assigns(:item)).to eq item
    end
  end
end