require 'rails_helper'

RSpec.describe DiceRollsController, type: :controller do

  describe 'GET :show' do
    it 'responds successfully' do
      get :show
      expect(response).to render_template :show
    end
  end

  describe 'POST :create' do
    it 'responds successfully' do
      post :create
      expect(response).to render_template :create
    end
  end
end
